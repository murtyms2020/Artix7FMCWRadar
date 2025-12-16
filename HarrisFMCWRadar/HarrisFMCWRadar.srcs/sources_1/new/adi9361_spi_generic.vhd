----------------------------------------------------------------------------------
-- CORRECTED VERSION - Fixed MISO synchronization bug
-- Module Name: ad9361_spi_generic - Behavioral
-- Description: Generic AXI4-Lite to AD9361 SPI bridge
--              Properly synchronized MISO input
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.NUMERIC_STD.all;

entity ad9361_spi_generic is
  generic (
    C_S_AXI_DATA_WIDTH   : integer := 32;
    C_S_AXI_ADDR_WIDTH   : integer := 4
  );
  port (
    -- SPI interface to AD9361
    MOSI            : out std_logic;
    SCLK            : out std_logic;
    CSN             : out std_logic;
    MISO            : in  std_logic;  -- ASYNC input - will be synchronized
    
    -- AXI Lite Slave Interface (ALL on S_AXI_ACLK domain)
    S_AXI_ACLK      : in  std_logic;
    S_AXI_ARESETN   : in  std_logic;
    S_AXI_AWADDR    : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_AWPROT    : in  std_logic_vector(2 downto 0);
    S_AXI_AWVALID   : in  std_logic;
    S_AXI_AWREADY   : out std_logic;
    S_AXI_WDATA     : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_WSTRB     : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
    S_AXI_WVALID    : in  std_logic;
    S_AXI_WREADY    : out std_logic;
    S_AXI_BRESP     : out std_logic_vector(1 downto 0);
    S_AXI_BVALID    : out std_logic;
    S_AXI_BREADY    : in  std_logic;
    S_AXI_ARADDR    : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_ARPROT    : in  std_logic_vector(2 downto 0);
    S_AXI_ARVALID   : in  std_logic;
    S_AXI_ARREADY   : out std_logic;
    S_AXI_RDATA     : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_RRESP     : out std_logic_vector(1 downto 0);
    S_AXI_RVALID    : out std_logic;
    S_AXI_RREADY    : in  std_logic
  );
end ad9361_spi_generic;

architecture RTL of ad9361_spi_generic is

  constant SCLK_div      : integer := 4;  -- SPI clock divider
  constant wr_data_width : integer := 24; -- AD9361 write: 6-bit cmd + 10-bit addr + 8-bit data
  constant rd_data_width : integer := 8;  -- AD9361 read: 8-bit data

  -- SPI master signals (ALL SYNCHRONOUS to S_AXI_ACLK)
  signal wr_en    : std_logic;
  signal wr_done  : std_logic;
  signal wr_data  : std_logic_vector(wr_data_width-1 downto 0);
  signal rd_en    : std_logic;
  signal rd_done  : std_logic;
  signal rd_data  : std_logic_vector(rd_data_width-1 downto 0);

  -- *** CRITICAL FIX: SYNCHRONIZERS for ASYNC MISO input ***
  signal miso_sync1 : std_logic := '0';
  signal miso_sync2 : std_logic := '0';
  
  -- Add ASYNC attribute to prevent optimization
  attribute ASYNC_REG : string;
  attribute ASYNC_REG of miso_sync1 : signal is "TRUE";
  attribute ASYNC_REG of miso_sync2 : signal is "TRUE";

  -- AXI4LITE signals
  signal axi_awaddr  : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
  signal axi_awready : std_logic;
  signal axi_wready  : std_logic;
  signal axi_bresp   : std_logic_vector(1 downto 0);
  signal axi_bvalid  : std_logic;
  signal axi_araddr  : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
  signal axi_arready : std_logic;
  signal axi_rdata   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal axi_rresp   : std_logic_vector(1 downto 0);
  signal axi_rvalid  : std_logic;

  constant ADDR_LSB          : integer := (C_S_AXI_DATA_WIDTH/32)+ 1;
  constant OPT_MEM_ADDR_BITS : integer := 1;  -- 4 registers (0-3)

  -- Register Map:
  -- 0x00: Control (bit0=wr_req, bit1=rd_req, bit2=busy[RO], bit3=done[RO])
  -- 0x04: SPI Address (bits[15:8]=AD9361 register address)
  -- 0x08: SPI Write Data (bits[7:0]=data to write)
  -- 0x0C: SPI Read Data (bits[7:0]=data read back) [READ ONLY]
  signal slv_reg0 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal slv_reg1 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal slv_reg2 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal slv_reg3 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal slv_reg_rden : std_logic;
  signal slv_reg_wren : std_logic;
  signal reg_data_out : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal byte_index    : integer range 0 to 3;

  -- SPI control signals
  signal spi_addr     : std_logic_vector(9 downto 0);  -- 10-bit address for AD9361
  signal spi_wr_data  : std_logic_vector(7 downto 0);
  signal spi_rd_data  : std_logic_vector(7 downto 0);
  signal spi_busy     : std_logic;
  signal spi_done     : std_logic;
  
  -- Request handling
  signal wr_req_prev  : std_logic;
  signal rd_req_prev  : std_logic;
  signal wr_req_edge  : std_logic;
  signal rd_req_edge  : std_logic;

  signal S_AXI_ARESET : std_logic;

begin

  S_AXI_AWREADY <= axi_awready;
  S_AXI_WREADY  <= axi_wready;
  S_AXI_BRESP   <= axi_bresp;
  S_AXI_BVALID  <= axi_bvalid;
  S_AXI_ARREADY <= axi_arready;
  S_AXI_RDATA   <= axi_rdata;
  S_AXI_RRESP   <= axi_rresp;
  S_AXI_RVALID  <= axi_rvalid;
  
  S_AXI_ARESET <= not S_AXI_ARESETN;

  -- ========================================================================
  -- CRITICAL FIX: 2-FF SYNCHRONIZER for ASYNC MISO
  -- ========================================================================
  process(S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        miso_sync1 <= '0';
        miso_sync2 <= '0';
      else
        miso_sync1 <= MISO;       -- 1st FF (may be metastable)
        miso_sync2 <= miso_sync1; -- 2nd FF (stable output)
      end if;
    end if;
  end process;

  -- ========================================================================
  -- AXI4-Lite Interface Logic
  -- ========================================================================
  
  -- Write Address Channel
  process (S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        axi_awready <= '0';
        axi_awaddr  <= (others => '0');
      else
        if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1') then
          axi_awready <= '1';
          axi_awaddr  <= S_AXI_AWADDR;
        else
          axi_awready <= '0';
        end if;
      end if;
    end if;
  end process;

  -- Write Data Channel
  process (S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        axi_wready <= '0';
      else
        if (axi_wready = '0' and S_AXI_WVALID = '1' and S_AXI_AWVALID = '1') then
          axi_wready <= '1';
        else
          axi_wready <= '0';
        end if;
      end if;
    end if;
  end process;

  slv_reg_wren <= axi_wready and S_AXI_WVALID and axi_awready and S_AXI_AWVALID;

  -- Register Writes
  process (S_AXI_ACLK)
    variable loc_addr : std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        slv_reg0 <= (others => '0');
        slv_reg1 <= (others => '0');
        slv_reg2 <= (others => '0');
        slv_reg3 <= (others => '0');
      else
        loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
        
        -- Auto-clear request bits after edge detection
        if wr_req_edge = '1' or rd_req_edge = '1' then
          slv_reg0(1 downto 0) <= "00";
        end if;
        
        -- Auto-update status bits
        slv_reg0(2) <= spi_busy;  -- Busy flag
        slv_reg0(3) <= spi_done;  -- Done flag
        
        if slv_reg_wren = '1' then
          case loc_addr is
            when "00" =>  -- Control register
              for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
                if S_AXI_WSTRB(byte_index) = '1' then
                  slv_reg0(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
                end if;
              end loop;
            when "01" =>  -- Address register
              for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
                if S_AXI_WSTRB(byte_index) = '1' then
                  slv_reg1(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
                end if;
              end loop;
            when "10" =>  -- Write data register
              for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
                if S_AXI_WSTRB(byte_index) = '1' then
                  slv_reg2(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
                end if;
              end loop;
            when "11" =>  -- Read data register (read-only, ignore writes)
              null;
            when others => null;
          end case;
        end if;
        
        -- Update read data register when SPI read completes
        if rd_done = '1' then
          slv_reg3(7 downto 0) <= spi_rd_data;
        end if;
      end if;
    end if;
  end process;

  -- Write Response Channel
  process (S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        axi_bvalid <= '0';
        axi_bresp  <= "00";
      else
        if (axi_awready = '1' and S_AXI_AWVALID = '1' and axi_wready = '1' and S_AXI_WVALID = '1' and axi_bvalid = '0') then
          axi_bvalid <= '1';
          axi_bresp  <= "00";  -- OKAY
        elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then
          axi_bvalid <= '0';
        end if;
      end if;
    end if;
  end process;

  -- Read Address Channel
  process (S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        axi_arready <= '0';
        axi_araddr  <= (others => '0');
      else
        if (axi_arready = '0' and S_AXI_ARVALID = '1') then
          axi_arready <= '1';
          axi_araddr  <= S_AXI_ARADDR;
        else
          axi_arready <= '0';
        end if;
      end if;
    end if;
  end process;

  slv_reg_rden <= axi_arready and S_AXI_ARVALID and (not axi_rvalid);

  -- Register Read Mux
  process (slv_reg0, slv_reg1, slv_reg2, slv_reg3, axi_araddr, S_AXI_ARESETN)
    variable loc_addr : std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
  begin
    if S_AXI_ARESETN = '0' then
      reg_data_out <= (others => '0');
    else
      loc_addr := axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
      case loc_addr is
        when "00"   => reg_data_out <= slv_reg0;
        when "01"   => reg_data_out <= slv_reg1;
        when "10"   => reg_data_out <= slv_reg2;
        when "11"   => reg_data_out <= x"000000" & slv_reg3(7 downto 0);
        when others => reg_data_out <= (others => '0');
      end case;
    end if;
  end process;

  -- Read Data Channel
  process(S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        axi_rvalid <= '0';
        axi_rresp  <= "00";
        axi_rdata  <= (others => '0');
      else
        if (axi_arready = '1' and S_AXI_ARVALID = '1' and axi_rvalid = '0') then
          axi_rvalid <= '1';
          axi_rresp  <= "00";  -- OKAY
          axi_rdata  <= reg_data_out;
        elsif (axi_rvalid = '1' and S_AXI_RREADY = '1') then
          axi_rvalid <= '0';
        end if;
      end if;
    end if;
  end process;

  -- ========================================================================
  -- SPI Controller Logic
  -- ========================================================================
  
  -- Edge detection for write/read requests
  process(S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        wr_req_prev <= '0';
        rd_req_prev <= '0';
        wr_req_edge <= '0';
        rd_req_edge <= '0';
      else
        wr_req_prev <= slv_reg0(0);
        rd_req_prev <= slv_reg0(1);
        wr_req_edge <= slv_reg0(0) and not wr_req_prev;
        rd_req_edge <= slv_reg0(1) and not rd_req_prev;
      end if;
    end if;
  end process;

  -- SPI State Machine
  process(S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        spi_busy    <= '0';
        spi_done    <= '0';
        spi_addr    <= (others => '0');
        spi_wr_data <= (others => '0');
        wr_en       <= '0';
        rd_en       <= '0';
      else
        -- Default: clear enables
        wr_en <= '0';
        rd_en <= '0';
        
        if spi_busy = '0' then
          spi_done <= '0';
          
          -- Start write transaction
          if wr_req_edge = '1' then
            spi_addr    <= slv_reg1(9 downto 0);
            spi_wr_data <= slv_reg2(7 downto 0);
            wr_en       <= '1';
            spi_busy    <= '1';
          -- Start read transaction
          elsif rd_req_edge = '1' then
            spi_addr    <= slv_reg1(9 downto 0);
            rd_en       <= '1';
            spi_busy    <= '1';
          end if;
        else
          -- Wait for completion
          if wr_done = '1' or rd_done = '1' then
            spi_busy <= '0';
            spi_done <= '1';
            if rd_done = '1' then
              spi_rd_data <= rd_data;
            end if;
          end if;
        end if;
      end if;
    end if;
  end process;

  -- SPI Data Formatting
  -- AD9361 SPI Protocol:
  --   Write: {1'b1, 5'b0, 10-bit addr, 8-bit data} = 24 bits
  --   Read:  {1'b1, 5'b1, 10-bit addr, 8'b0} = 24 bits
  wr_data <= '1' & "00000" & spi_addr & spi_wr_data when wr_en = '1' else
             '1' & "11111" & spi_addr & x"00";

  -- ========================================================================
  -- SPI Master Instance (with SYNCHRONIZED MISO)
  -- ========================================================================
  spi_master_i : entity work.spi_master
    generic map(
      SCLK_div      => SCLK_div,
      wr_data_width => wr_data_width,
      rd_data_width => rd_data_width
    )
    port map (
      clk           => S_AXI_ACLK,
      reset         => S_AXI_ARESET,
      
      wr_en         => wr_en,
      wr_done       => wr_done,
      wr_data       => wr_data,
      
      rd_en         => rd_en,
      rd_done       => rd_done,
      rd_data       => rd_data,
      
      SCLK          => SCLK,
      MOSI          => MOSI,
      MISO          => miso_sync2,  -- *** CRITICAL: Use synchronized signal ***
      CSN           => CSN
    );

end RTL;