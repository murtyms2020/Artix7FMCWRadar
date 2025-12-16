----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 01/02/2015 08:17:56 AM
-- Design Name:
-- Module Name: ad9361_spi - Behavioral
-- Project Name:
-- Target Devices:
-- Tool Versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.NUMERIC_STD.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ad9361_spi is
  generic (
    -- Width of S_AXI data bus
    C_S_AXI_DATA_WIDTH   :     integer := 32;
    -- Width of S_AXI address bus
    C_S_AXI_ADDR_WIDTH   :     integer := 4
    );
  port ( MOSI            : out std_logic;
         SCLK            : out std_logic;
         CSN             : out std_logic;
         MISO            : in  std_logic;
         BF_wr_en        : in  std_logic;
         BF_wr_done      : out std_logic;
         BF_wr_data      : in  std_logic_vector (23 downto 0);
         BF_rd_en        : in  std_logic;
         BF_rd_done      : out std_logic;
         BF_rd_data      : out std_logic_vector (7 downto 0);
         BF_enable       : out std_logic;
         BF_done         : in  std_logic;
         timer_expired   : in  std_logic;
         gain_change_req : in  std_logic;
         freq_change_req : in  std_logic;
         freq_change_port : in  std_logic_vector(3 downto 0);
         tx_atten        : in  std_logic_vector (8 downto 0);
         fbrx_gain       : in  std_logic_vector (6 downto 0);
         freq_change_active : out std_logic;
         -- AXI lite ports
         -- Global Clock Signal
         S_AXI_ACLK      : in  std_logic;
         -- Global Reset Signal. This Signal is Active LOW
         S_AXI_ARESETN   : in  std_logic;
         -- Write address (issued by master, acceped by Slave)
         S_AXI_AWADDR    : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
         -- Write channel Protection type. This signal indicates the
         -- privilege and security level of the transaction, and whether
         -- the transaction is a data access or an instruction access.
         S_AXI_AWPROT    : in  std_logic_vector(2 downto 0);
         -- Write address valid. This signal indicates that the master signaling
         -- valid write address and control information.
         S_AXI_AWVALID   : in  std_logic;
         -- Write address ready. This signal indicates that the slave is ready
         -- to accept an address and associated control signals.
         S_AXI_AWREADY   : out std_logic;
         -- Write data (issued by master, acceped by Slave)
         S_AXI_WDATA     : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
         -- Write strobes. This signal indicates which byte lanes hold
         -- valid data. There is one write strobe bit for each eight
         -- bits of the write data bus.
         S_AXI_WSTRB     : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
         -- Write valid. This signal indicates that valid write
         -- data and strobes are available.
         S_AXI_WVALID    : in  std_logic;
         -- Write ready. This signal indicates that the slave
         -- can accept the write data.
         S_AXI_WREADY    : out std_logic;
         -- Write response. This signal indicates the status
         -- of the write transaction.
         S_AXI_BRESP     : out std_logic_vector(1 downto 0);
         -- Write response valid. This signal indicates that the channel
         -- is signaling a valid write response.
         S_AXI_BVALID    : out std_logic;
         -- Response ready. This signal indicates that the master
         -- can accept a write response.
         S_AXI_BREADY    : in  std_logic;
         -- Read address (issued by master, acceped by Slave)
         S_AXI_ARADDR    : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
         -- Protection type. This signal indicates the privilege
         -- and security level of the transaction, and whether the
         -- transaction is a data access or an instruction access.
         S_AXI_ARPROT    : in  std_logic_vector(2 downto 0);
         -- Read address valid. This signal indicates that the channel
         -- is signaling valid read address and control information.
         S_AXI_ARVALID   : in  std_logic;
         -- Read address ready. This signal indicates that the slave is
         -- ready to accept an address and associated control signals.
         S_AXI_ARREADY   : out std_logic;
         -- Read data (issued by slave)
         S_AXI_RDATA     : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
         -- Read response. This signal indicates the status of the
         -- read transfer.
         S_AXI_RRESP     : out std_logic_vector(1 downto 0);
         -- Read valid. This signal indicates that the channel is
         -- signaling the required read data.
         S_AXI_RVALID    : out std_logic;
         -- Read ready. This signal indicates that the master can
         -- accept the read data and response information.
         S_AXI_RREADY    : in  std_logic

         );
end ad9361_spi;

architecture RTL of ad9361_spi is

  constant SCLK_div      : integer := 4;
  constant wr_data_width : integer := 24;
  constant rd_data_width : integer := 8;

  -- SPI master signals
  signal timer_expired_SR    : std_logic := '0';
  signal timer_expired_reg   : std_logic := '0';
  signal gain_change_req_SR  : std_logic := '0';
  signal gain_change_req_reg : std_logic := '0';
  signal rd_done             : std_logic;
  signal wr_done             : std_logic;
  signal wr_en               : std_logic;
  signal rd_en               : std_logic;

  signal wr_data : std_logic_vector(wr_data_width-1 downto 0);
  signal rd_data : std_logic_vector(rd_data_width-1 downto 0);

  signal BF_wr_done_i : std_logic;
  signal BF_rd_done_i : std_logic;
  signal BF_rd_data_i : std_logic_vector(rd_data_width-1 downto 0);

  --state machine signals

  type state_type is (st1_wait, st2_check_ARM, st3_service_ARM, st4_BF, st5_check_gain, st6_reg73,
                      st7_reg74, st8_reg109, st9_reg7C, st10_check_freq, st11_freq_change);
  signal state                    : state_type;
  signal next_state               : state_type;

  type freq_chg_state is (init, setup_tx_atten, choose_port, wr_freq_table, wait200us,
                          restore_tx_atten_0, restore_tx_atten_1, restore_tx_atten_2);
  signal freq_state : freq_chg_state;

  --Declare internal signals for all outputs of the state-machine
  signal ARM_en_i                 : std_logic;  -- ARM can read/write
  signal BF_en_i                  : std_logic;  -- BF can read/write
  signal wr_73_i                  : std_logic;  -- gain change taking place can read/write
  signal wr_73                    : std_logic;  -- gain change taking place can read/write_mode
  signal wr_73_we                 : std_logic;  -- gain change taking place can read/write_mode
  signal wr_73_x1                 : std_logic;  -- gain change taking place can read/write_mode
  signal wr_74_i                  : std_logic;  -- gain change taking place can read/write_mode
  signal wr_74                    : std_logic;  -- gain change taking place can read/write_mode
  signal wr_74_we                 : std_logic;  -- gain change taking place can read/write_mode
  signal wr_74_x1                 : std_logic;  -- gain change taking place can read/write_mode
  signal wr_109_i                 : std_logic;  -- gain change taking place can read/write_mode
  signal wr_109                   : std_logic;  -- gain change taking place can read/write_mode
  signal wr_109_we                : std_logic;  -- gain change taking place can read/write_mode
  signal wr_109_x1                : std_logic;  -- gain change taking place can read/write_mode
  signal ARM_en                   : std_logic;  -- ARM can read/write
  signal BF_en                    : std_logic;  -- BF can read/write
  signal ARM_en_reg               : std_logic;  -- BF can read/write
  signal wr_7C_i                  : std_logic;  -- gain change taking place can read/write_mode
  signal wr_7C                    : std_logic;  -- gain change taking place can read/write_mode
  signal wr_7C_we                 : std_logic;  -- gain change taking place can read/write_mode
  signal wr_7C_x1                 : std_logic;  -- gain change taking place can read/write_mode


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

  -- Example-specific design signals
  -- local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
  -- ADDR_LSB is used for addressing 32/64 bit registers/memories
  -- ADDR_LSB = 2 for 32 bits (n downto 2)
  -- ADDR_LSB = 3 for 64 bits (n downto 3)
  constant ADDR_LSB          : integer := (C_S_AXI_DATA_WIDTH/32)+ 1;
  constant OPT_MEM_ADDR_BITS : integer := 1;
  ------------------------------------------------
  ---- Signals for user logic register space example
  --------------------------------------------------
  ---- Number of Slave Registers 4
  signal   slv_reg0          : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal   slv_reg1          : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal   slv_reg2          : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal   slv_reg3          : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal   slv_reg_rden      : std_logic;
  signal   slv_reg_wren      : std_logic;
  signal   reg_data_out      : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal   byte_index        : integer;

  -- frequency change signals
  signal freq_change_SR        : std_logic;
  signal freq_change_req_pipe  : std_logic;

  -- this is a write one byte control word
  constant SPI_CONTROL_WORD : std_logic_vector(5 downto 0) := "100000";

  constant TX_SETUP_ADDR : std_logic_vector(23 downto 0) := (x"73" & x"74" & x"7C");
  constant TX_SETUP_DATA : std_logic_vector(23 downto 0) := (x"67" & x"01" & x"40");

  constant NUM_TX_REG       : integer := 3;
  constant NUM_TX_TABLE_REG : integer := 10;

  signal freq_change_en        : std_logic;
  signal tx_data_d             : std_logic_vector(8*NUM_TX_REG-1 downto 0);
  signal tx_addr_d             : std_logic_vector(8*NUM_TX_REG-1 downto 0);

  -- hardcoded frequency change tables
  constant AxC_addr : std_logic_vector(8*NUM_TX_TABLE_REG-1 downto 0) := ( x"75" & x"72" & x"73" &
                                                                           x"74" & x"71" & x"35" &
                                                                           x"32" & x"33" & x"34" &
                                                                           x"31");

  constant AxC_0 : std_logic_vector(8*NUM_TX_TABLE_REG-1 downto 0) := ( x"75" & x"00" & x"48" &
                                                                        x"D5" & x"9C" & x"7D" &
                                                                        x"00" & x"47" & x"D5" &
                                                                        x"9C" );

  constant AxC_1 : std_logic_vector(8*NUM_TX_TABLE_REG-1 downto 0) := ( x"0A" & x"00" & x"A9" & 
                                                                        x"AA" & x"9D" & x"12" & 
                                                                        x"00" & x"A8" & x"AA" & 
                                                                        x"9D" );

  constant AxC_2 : std_logic_vector(8*NUM_TX_TABLE_REG-1 downto 0) := ( x"1F" & x"00" & x"FC" &
                                                                        x"7F" & x"9D" & x"27" &
                                                                        x"00" & x"FB" & x"7F" &
                                                                        x"9D" );

  constant AxC_3 : std_logic_vector(8*NUM_TX_TABLE_REG-1 downto 0) := ( x"49" & x"00" & x"A2" & 
                                                                        x"2A" & x"9D" & x"51" & 
                                                                        x"00" & x"A1" & x"2A" & 
                                                                        x"9D" );

  constant AxC_4 : std_logic_vector(8*NUM_TX_TABLE_REG-1 downto 0) := ( x"5D" & x"00" & x"F5" & 
                                                                        x"FF" & x"9D" & x"65" & 
                                                                        x"00" & x"F4" & x"FF" & 
                                                                        x"9D" );

  constant AxC_5 : std_logic_vector(8*NUM_TX_TABLE_REG-1 downto 0) := ( x"72" & x"00" & x"48" & 
                                                                        x"D5" & x"9D" & x"7A" & 
                                                                        x"00" & x"47" & x"D5" & 
                                                                        x"9D" );

  constant AxC_6 : std_logic_vector(8*NUM_TX_TABLE_REG-1 downto 0) := ( x"1C" & x"00" & x"FD" & 
                                                                        x"7F" & x"9E" & x"24" & 
                                                                        x"00" & x"FC" & x"7F" & 
                                                                        x"9E" );
                                                                        
  constant AxC_7 : std_logic_vector(8*NUM_TX_TABLE_REG-1 downto 0) := ( x"31" & x"00" & x"50" & 
                                                                        x"55" & x"9E" & x"39" & 
                                                                        x"00" & x"4F" & x"55" & 
                                                                        x"9E" );

  constant AxC_8 : std_logic_vector(8*NUM_TX_TABLE_REG-1 downto 0) := ( x"46" & x"00" & x"A2" & 
                                                                        x"2A" & x"9E" & x"4E" & 
                                                                        x"00" & x"A2" & x"2A" & 
                                                                        x"9E" );

  signal AxC_addr_shift : std_logic_vector(8*NUM_TX_TABLE_REG-1 downto 0);
  signal AxC_data_shift : std_logic_vector(8*NUM_TX_TABLE_REG-1 downto 0);

  signal freq_wr_en   : std_logic;
  signal freq_wr_data : std_logic_vector(WR_DATA_WIDTH-1 downto 0);

  signal spi_reg_wr_cnt   : std_logic_vector(1 downto 0);
  signal spi_table_wr_cnt : std_logic_vector(3 downto 0);

  constant TIME_200US : integer := 12228;
  signal wait_cnt     : std_logic_vector(13 downto 0);

  signal freq_change_done : std_logic;
  signal S_AXI_ARESET     : std_logic;
begin

  -- I/O Connections assignments

  S_AXI_AWREADY <= axi_awready;
  S_AXI_WREADY  <= axi_wready;
  S_AXI_BRESP   <= axi_bresp;
  S_AXI_BVALID  <= axi_bvalid;
  S_AXI_ARREADY <= axi_arready;
  S_AXI_RDATA   <= axi_rdata;
  S_AXI_RRESP   <= axi_rresp;
  S_AXI_RVALID  <= axi_rvalid;
  
  freq_change_active <= freq_change_en;
  -- Implement axi_awready generation
  -- axi_awready is asserted for one S_AXI_ACLK clock cycle when both
  -- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
  -- de-asserted when reset is low.

  process (S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        axi_awready   <= '0';
      else
        if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1') then
          -- slave is ready to accept write address when
          -- there is a valid write address and write data
          -- on the write address and data bus. This design
          -- expects no outstanding transactions.
          axi_awready <= '1';
        else
          axi_awready <= '0';
        end if;
      end if;
    end if;
  end process;

  -- Implement axi_awaddr latching
  -- This process is used to latch the address when both
  -- S_AXI_AWVALID and S_AXI_WVALID are valid.

  process (S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        axi_awaddr   <= (others => '0');
      else
        if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1') then
          -- Write Address latching
          axi_awaddr <= S_AXI_AWADDR;
        end if;
      end if;
    end if;
  end process;

  -- Implement axi_wready generation
  -- axi_wready is asserted for one S_AXI_ACLK clock cycle when both
  -- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is
  -- de-asserted when reset is low.

  process (S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        axi_wready   <= '0';
      else
        if (axi_wready = '0' and S_AXI_WVALID = '1' and S_AXI_AWVALID = '1') then
          -- slave is ready to accept write data when
          -- there is a valid write address and write data
          -- on the write address and data bus. This design
          -- expects no outstanding transactions.
          axi_wready <= '1';
        else
          axi_wready <= '0';
        end if;
      end if;
    end if;
  end process;

  -- Implement memory mapped register select and write logic generation
  -- The write data is accepted and written to memory mapped registers when
  -- axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
  -- select byte enables of slave registers while writing.
  -- These registers are cleared when reset (active low) is applied.
  -- Slave register write enable is asserted when valid address and data are available
  -- and the slave is ready to accept the write address and write data.
  slv_reg_wren <= axi_wready and S_AXI_WVALID and axi_awready and S_AXI_AWVALID;

  process (S_AXI_ACLK)
    variable loc_addr : std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        slv_reg0                                               <= (others => '0');
        slv_reg1                                               <= (others => '0');
        slv_reg2                                               <= (others => '0');
        slv_reg3                                               <= (others => '0');
      else
        loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
        if (slv_reg_wren = '1') then
          case loc_addr is
            when b"00"                                                    =>
              for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
                if ( S_AXI_WSTRB(byte_index) = '1' ) then
                  -- Respective byte enables are asserted as per write strobes
                  -- slave registor 0
                  slv_reg0(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
                end if;
              end loop;
            when b"01"                                                    =>
              for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
                if ( S_AXI_WSTRB(byte_index) = '1' ) then
                  -- Respective byte enables are asserted as per write strobes
                  -- slave registor 1
                  slv_reg1(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
                end if;
              end loop;
            when b"10"                                                    =>
              for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
                if ( S_AXI_WSTRB(byte_index) = '1' ) then
                  -- Respective byte enables are asserted as per write strobes
                  -- slave registor 2   -- read only!
                  -- slv_reg2(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
                end if;
              end loop;
            when b"11"                                                    =>
              for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
                if ( S_AXI_WSTRB(byte_index) = '1' ) then
                  -- Respective byte enables are asserted as per write strobes
                  -- slave registor 3
                  slv_reg3(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
                end if;
              end loop;
            when others                                                   =>
              slv_reg0                                         <= slv_reg0;
              slv_reg1                                         <= slv_reg1;
              slv_reg2                                         <= slv_reg2;
              slv_reg3                                         <= slv_reg3;
          end case;
        else
          if (ARM_en = '1') and (rd_done = '1') then
            slv_reg2(rd_data_width-1 downto 0)                 <= rd_data;
          end if;
          if (ARM_en = '1') and ((wr_done = '1') or (rd_done = '1')) then  -- is this the right way?
            slv_reg0                                           <= slv_reg0(C_S_AXI_DATA_WIDTH-1 downto 5) & '0' & slv_reg0(3 downto 0);
          end if;
        end if;
      end if;
    end if;
  end process;

  -- Implement write response logic generation
  -- The write response and response valid signals are asserted by the slave
  -- when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.
  -- This marks the acceptance of address and indicates the status of
  -- write transaction.

  process (S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        axi_bvalid   <= '0';
        axi_bresp    <= "00";           --need to work more on the responses
      else
        if (axi_awready = '1' and S_AXI_AWVALID = '1' and axi_wready = '1' and S_AXI_WVALID = '1' and axi_bvalid = '0' ) then
          axi_bvalid <= '1';
          axi_bresp  <= "00";
        elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then  --check if bready is asserted while bvalid is high)
          axi_bvalid <= '0';            -- (there is a possibility that bready is always asserted high)
        end if;
      end if;
    end if;
  end process;

  -- Implement axi_arready generation
  -- axi_arready is asserted for one S_AXI_ACLK clock cycle when
  -- S_AXI_ARVALID is asserted. axi_awready is
  -- de-asserted when reset (active low) is asserted.
  -- The read address is also latched when S_AXI_ARVALID is
  -- asserted. axi_araddr is reset to zero on reset assertion.

  process (S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        axi_arready   <= '0';
        axi_araddr    <= (others => '1');
      else
        if (axi_arready = '0' and S_AXI_ARVALID = '1') then
          -- indicates that the slave has acceped the valid read address
          axi_arready <= '1';
          -- Read Address latching
          axi_araddr  <= S_AXI_ARADDR;
        else
          axi_arready <= '0';
        end if;
      end if;
    end if;
  end process;

  -- Implement axi_arvalid generation
  -- axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both
  -- S_AXI_ARVALID and axi_arready are asserted. The slave registers
  -- data are available on the axi_rdata bus at this instance. The
  -- assertion of axi_rvalid marks the validity of read data on the
  -- bus and axi_rresp indicates the status of read transaction.axi_rvalid
  -- is deasserted on reset (active low). axi_rresp and axi_rdata are
  -- cleared to zero on reset (active low).
  process (S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        axi_rvalid   <= '0';
        axi_rresp    <= "00";
      else
        if (axi_arready = '1' and S_AXI_ARVALID = '1' and axi_rvalid = '0') then
          -- Valid read data is available at the read data bus
          axi_rvalid <= '1';
          axi_rresp  <= "00";           -- 'OKAY' response
        elsif (axi_rvalid = '1' and S_AXI_RREADY = '1') then
          -- Read data is accepted by the master
          axi_rvalid <= '0';
        end if;
      end if;
    end if;
  end process;

  -- Implement memory mapped register select and read logic generation
  -- Slave register read enable is asserted when valid address is available
  -- and the slave is ready to accept the read address.
  slv_reg_rden <= axi_arready and S_AXI_ARVALID and (not axi_rvalid);

  process (slv_reg0, slv_reg1, slv_reg2, slv_reg3, axi_araddr, S_AXI_ARESETN)
    variable loc_addr : std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
  begin
    if S_AXI_ARESETN = '0' then
      reg_data_out     <= (others => '1');
    else
      -- Address decoding for reading registers
      loc_addr := axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
      case loc_addr is
        when b"00"                =>
          reg_data_out <= slv_reg0;
        when b"01"                =>
          reg_data_out <= slv_reg1;
        when b"10"                =>
          reg_data_out <= slv_reg2;
        when b"11"                =>
          reg_data_out <= slv_reg3;
        when others               =>
          reg_data_out <= (others => '0');
      end case;
    end if;
  end process;

  -- Output register or memory read data
  process( S_AXI_ACLK ) is
  begin
    if (rising_edge (S_AXI_ACLK)) then
      if ( S_AXI_ARESETN = '0' ) then
        axi_rdata   <= (others => '0');
      else
        if (slv_reg_rden = '1') then
          -- When there is a valid read address (S_AXI_ARVALID) with
          -- acceptance of read address by the slave (axi_arready),
          -- output the read dada
          -- Read address mux
          axi_rdata <= reg_data_out;    -- register read data
        end if;
      end if;
    end if;
  end process;

  -- SR timer expired flop... catch the edge
  process( S_AXI_ACLK ) is
  begin
    if (rising_edge (S_AXI_ACLK)) then
      if ( S_AXI_ARESETN = '0' ) then
        timer_expired_SR   <= '0';
        timer_expired_reg  <= '0';
      else
        timer_expired_reg  <= timer_expired;
        if (timer_expired = '1' and timer_expired_reg = '0') then  -- rising edge detect
          timer_expired_SR <= '1';
        end if;
        if (BF_en = '1') then                                      -- clear SR flop
          timer_expired_SR <= '0';
        end if;
      end if;
    end if;
  end process;

  -- SR gain change req flop... catch the edge
  process( S_AXI_ACLK ) is
  begin
    if (rising_edge (S_AXI_ACLK)) then
      if ( S_AXI_ARESETN = '0' ) then
        gain_change_req_SR   <= '0';
        gain_change_req_reg  <= '0';
      else
        gain_change_req_reg  <= gain_change_req;
        if (gain_change_req = '1' and gain_change_req_reg = '0') then  -- rising edge detect
          gain_change_req_SR <= '1';
        end if;
        if (wr_73 = '1') then                                          -- clear SR flop
          gain_change_req_SR <= '0';
        end if;
      end if;
    end if;
  end process;

  -- SR frequency change request latch
  process( S_AXI_ACLK ) is
  begin
    if (rising_edge (S_AXI_ACLK)) then
      if ( S_AXI_ARESETN = '0' ) then
        freq_change_SR       <= '0';
        freq_change_req_pipe <= '0';
      else
        freq_change_req_pipe <= freq_change_req;

        if freq_change_done = '1' then
            freq_change_SR <= '0';
        elsif (freq_change_req_pipe = '0' and freq_change_req = '1') then
            freq_change_SR <= '1';
        end if;
      end if;
    end if;
  end process;

  ------------------------------------------------------
  --                   state machine    --
  ------------------------------------------------------

--Insert the following in the architecture after the begin keyword
  SYNC_PROC : process (S_AXI_ACLK)
  begin
    if (rising_edge (S_AXI_ACLK)) then
      if (S_AXI_ARESETN = '0') then
        state      <= st1_wait;
        ARM_en     <= '0';
        BF_en      <= '0';
        wr_73      <= '0';
        wr_74      <= '0';
        wr_7C      <= '0';
        wr_109     <= '0';
      else
        state      <= next_state;
        ARM_en     <= ARM_en_i;
        ARM_en_reg <= ARM_en;
        BF_en      <= BF_en_i;
        wr_73      <= wr_73_i;
        wr_74      <= wr_74_i;
        wr_7C      <= wr_7C_i;
        wr_109     <= wr_109_i;
        wr_73_x1   <= wr_73;
        wr_74_x1   <= wr_74;
        wr_7C_x1   <= wr_7C;
        wr_109_x1  <= wr_109;
      end if;
    end if;
  end process;

  --MOORE State-Machine - Outputs based on state only
  OUTPUT_DECODE : process (state)
  begin
    --insert statements to decode internal output signals
    if state = st3_service_ARM then
      ARM_en_i <= '1';
    else
      ARM_en_i <= '0';
    end if;

    if state = st4_BF then
      BF_en_i  <= '1';
    else
      BF_en_i  <= '0';
    end if;

    if state = st6_reg73 then
      wr_73_i  <= '1';
    else
      wr_73_i  <= '0';
    end if;

    if state = st7_reg74 then
      wr_74_i  <= '1';
    else
      wr_74_i  <= '0';
    end if;

    if state = st9_reg7C then
      wr_7C_i  <= '1';
    else
      wr_7C_i  <= '0';
    end if;

    if state = st8_reg109 then
      wr_109_i  <= '1';
    else
      wr_109_i  <= '0';
    end if;

    if state = st11_freq_change then
        freq_change_en <= '1';
    else
        freq_change_en <= '0';
    end if;
  end process;

  NEXT_STATE_DECODE : process (state, timer_expired_SR, slv_reg0(4), wr_done, rd_done, BF_done,
                              freq_change_SR, freq_change_done, gain_change_req_SR
  )
  begin
    --declare default state for next_state to avoid latches
    next_state       <= state;          --default is to stay in current state
    --insert statements to decode next_state
    --below is a simple example
    case (state) is
      when st1_wait        =>
        if timer_expired_SR = '0' then
          next_state <= st5_check_gain;
        else
          next_state <= st4_BF;
        end if;
      when st2_check_ARM   =>
        if slv_reg0(4) = '1' then
          next_state <= st3_service_ARM;
        else
          next_state <= st1_wait;
        end if;
      when st3_service_ARM =>
        if (wr_done = '1') or (rd_done = '1') then
          next_state <= st1_wait;
        end if;
      when st4_BF          =>
        if (BF_done = '1') then
          next_state <= st1_wait;
        end if;
      when st5_check_gain  =>
        if gain_change_req_SR = '0' then
          next_state <= st10_check_freq;
        else
          next_state <= st6_reg73;
        end if;
      when st6_reg73       =>
        if wr_done = '1' then
          next_state <= st7_reg74;
        end if;
      when st7_reg74       =>
        if wr_done = '1' then
          next_state <= st9_reg7C;
        end if;
      when st8_reg109       =>
        if wr_done = '1' then
          next_state <= st2_check_ARM;
        end if;
      when st9_reg7C       =>
        if wr_done = '1' then
          next_state <= st8_reg109;
        end if;
      when st10_check_freq       =>
        if freq_change_SR = '1' then
          next_state <= st11_freq_change;
        else
          next_state <= st2_check_ARM;
        end if;
      when st11_freq_change       =>
        if freq_change_done = '1' then
          next_state <= st2_check_ARM;
        end if;
      when others          =>
        next_state   <= st1_wait;
    end case;
  end process;

  -- -----------------------------------------------------------------------------------------------
  -- FREQ_MACHINE : State machine that goes through the process of writing the AD9361 SPI registers
  --                to change the frequency when requested. Values are hardcoded and shifted
  --                a byte per SPI transaction. There are 3 stages:
  --                    * setup the TX registers
  --                    * write the appropriate frequency changes
  --                    * restore the TX register settings
  -- -----------------------------------------------------------------------------------------------
  FREQ_MACHINE : process (S_AXI_ACLK)
    variable num_table_reg : integer;
  begin
    if (rising_edge (S_AXI_ACLK)) then
      if (S_AXI_ARESETN = '0') then
        freq_state <= INIT;
        tx_data_d  <= (others => '0');
        tx_addr_d  <= (others => '0');

        spi_reg_wr_cnt  <= (others => '0');
        wait_cnt        <= (others => '0');

        freq_wr_en   <= '0';
        freq_wr_data <= (others => '0');

        AxC_addr_shift <= (others => 'X');
        AxC_data_shift <= (others => 'X');

        num_table_reg := 0;

        freq_change_done <= '0';
      else
        case (freq_state) is
            when INIT =>
                -- setup the addr and data shift registers
                tx_data_d <= TX_SETUP_DATA;
                tx_addr_d <= TX_SETUP_ADDR;

                spi_reg_wr_cnt      <= (others => '0');
                spi_table_wr_cnt    <= (others => '0');
                wait_cnt            <= (others => '0');

                freq_wr_en   <= '0';
                freq_wr_data <= (others => '0');


                num_table_reg   := 0;

                freq_change_done <= '0';

                if freq_change_en = '1' then
                    freq_state <= SETUP_TX_ATTEN;
                end if;

            when SETUP_TX_ATTEN =>
                -- enable the SPI writes
                freq_wr_en <= '1';

                -- load the SPI write register
                freq_wr_data(WR_DATA_WIDTH-1 downto WR_DATA_WIDTH-6)  <= SPI_CONTROL_WORD;
                freq_wr_data(WR_DATA_WIDTH-7 downto WR_DATA_WIDTH-8)  <= "00"; -- top addr bits
                freq_wr_data(WR_DATA_WIDTH-9 downto WR_DATA_WIDTH-16) <= tx_addr_d(23 downto 16);
                freq_wr_data(WR_DATA_WIDTH-17 downto 0)               <= tx_data_d(23 downto 16);

                if wr_done = '1' then
                    -- left shift byte
                    tx_data_d <= tx_data_d(15 downto 0) & x"00";
                    tx_addr_d <= tx_addr_d(15 downto 0) & x"00";
                    if spi_reg_wr_cnt = "10" then
                        freq_state <= CHOOSE_PORT;
                    else
                        spi_reg_wr_cnt <= spi_reg_wr_cnt + 1;
                    end if;
                end if;

            when CHOOSE_PORT =>
                freq_wr_en     <= '0';

                AxC_addr_shift <= AxC_addr;

                case (freq_change_port) is
                    when x"0" =>
                        AxC_data_shift <= AxC_0;
                    when x"1" =>
                        AxC_data_shift <= AxC_1;
                    when x"2" =>
                        AxC_data_shift <= AxC_2;
                    when x"3" =>
                        AxC_data_shift <= AxC_3;
                    when x"4" =>
                        AxC_data_shift <= AxC_4;
                    when x"5" =>
                        AxC_data_shift <= AxC_5;
                    when x"6" =>
                        AxC_data_shift <= AxC_6;
                    when x"7" =>
                        AxC_data_shift <= AxC_7;
                    when x"8" =>
                        AxC_data_shift <= AxC_8;
                    when OTHERS =>
                        null;
                end case;

                freq_state <= WR_FREQ_TABLE;

            when WR_FREQ_TABLE =>
                freq_wr_en <= '1';

                freq_wr_data(WR_DATA_WIDTH-1 downto WR_DATA_WIDTH-6)  <= SPI_CONTROL_WORD;
                freq_wr_data(WR_DATA_WIDTH-7 downto WR_DATA_WIDTH-8)  <= "10"; -- top addr bits
                freq_wr_data(WR_DATA_WIDTH-9 downto WR_DATA_WIDTH-16) <= AxC_addr_shift(8*NUM_TX_TABLE_REG-1 downto 8*NUM_TX_TABLE_REG-8);
                freq_wr_data(WR_DATA_WIDTH-17 downto 0)               <= AxC_data_shift(8*NUM_TX_TABLE_REG-1 downto 8*NUM_TX_TABLE_REG-8);


                -- register the count
                spi_table_wr_cnt <= std_logic_vector(to_unsigned(num_table_reg, 4));

                if wr_done = '1' then
                    -- left shift byte
                    AxC_addr_shift <= AxC_addr_shift(8*NUM_TX_TABLE_REG-9 downto 0) & x"00";
                    AxC_data_shift <= AxC_data_shift(8*NUM_TX_TABLE_REG-9 downto 0) & x"00";

                    if spi_table_wr_cnt = x"9" then
                        freq_state <= WAIT200US;
                    else
                        num_table_reg := num_table_reg + 1;
                    end if;
                end if;

            when WAIT200US =>
                freq_wr_en <= '0';

                if wait_cnt = std_logic_vector(to_unsigned(TIME_200US, 14)) then
                    freq_state <= RESTORE_TX_ATTEN_0;
                else
                    wait_cnt <= wait_cnt + 1;
                    freq_state <= WAIT200US;
                end if;

            when RESTORE_TX_ATTEN_0 =>
                -- enable the SPI writes
                freq_wr_en <= '1';

                -- load the SPI write register
                freq_wr_data(WR_DATA_WIDTH-1 downto WR_DATA_WIDTH-6)  <= SPI_CONTROL_WORD;
                freq_wr_data(WR_DATA_WIDTH-7 downto WR_DATA_WIDTH-8)  <= "00"; -- top addr bits
                freq_wr_data(WR_DATA_WIDTH-9 downto WR_DATA_WIDTH-16) <= x"73";
                freq_wr_data(WR_DATA_WIDTH-17 downto 0)               <= tx_atten(7 downto 0);

                if wr_done = '1' then
                    freq_state <= RESTORE_TX_ATTEN_1;
                end if;

            when RESTORE_TX_ATTEN_1 =>
                -- enable the SPI writes
                freq_wr_en <= '1';

                -- load the SPI write register
                freq_wr_data(WR_DATA_WIDTH-1 downto WR_DATA_WIDTH-6)  <= SPI_CONTROL_WORD;
                freq_wr_data(WR_DATA_WIDTH-7 downto WR_DATA_WIDTH-8)  <= "00"; -- top addr bits
                freq_wr_data(WR_DATA_WIDTH-9 downto WR_DATA_WIDTH-16) <= x"74";
                freq_wr_data(WR_DATA_WIDTH-17 downto 0)               <= "0000000" & tx_atten(8);

                if wr_done = '1' then
                    freq_state <= RESTORE_TX_ATTEN_2;
                end if;

            when RESTORE_TX_ATTEN_2 =>
                -- enable the SPI writes
                freq_wr_en <= '1';

                -- load the SPI write register
                freq_wr_data(WR_DATA_WIDTH-1 downto WR_DATA_WIDTH-6)  <= SPI_CONTROL_WORD;
                freq_wr_data(WR_DATA_WIDTH-7 downto WR_DATA_WIDTH-8)  <= "00"; -- top addr bits
                freq_wr_data(WR_DATA_WIDTH-9 downto WR_DATA_WIDTH-16) <= x"7C";
                freq_wr_data(WR_DATA_WIDTH-17 downto 0)               <= x"40";

                if wr_done = '1' then
                    freq_change_done <= '1';
                end if;

                if freq_change_en = '0' then
                    freq_state <= INIT;
                end if;

            when others =>
                freq_state <= init;
        end case;
      end if;
    end if;
  end process FREQ_MACHINE;

  S_AXI_ARESET <= not S_AXI_ARESETN;

  spi_master_i : entity work.spi_master
    generic map(
      SCLK_div      => SCLK_div,
      wr_data_width => wr_data_width,
      rd_data_width => rd_data_width
      )
    port map (
      wr_en         => wr_en,
      wr_done       => wr_done,
      wr_data       => wr_data,
      rd_en         => rd_en,
      rd_done       => rd_done,
      rd_data       => rd_data,
      clk           => S_AXI_ACLK,
      reset         => S_AXI_ARESET,
      SCLK          => SCLK,
      MOSI          => MOSI,
      MISO          => MISO,
      CSN           => CSN);

  MUX_PROCESS : process(S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then
        if freq_change_en = '1' then
          wr_en   <= freq_wr_en;
          wr_data <= freq_wr_data;
        elsif BF_en = '1' then
          wr_en   <= BF_wr_en;
          rd_en   <= BF_rd_en;
          wr_data <= BF_wr_data;
        elsif wr_73 = '1' then
          wr_en   <= wr_73_we;
          rd_en   <= '0';
          wr_data <= x"8073" & tx_atten(7 downto 0);
        elsif wr_74 = '1' then
          wr_en   <= wr_74_we;
          rd_en   <= '0';
          wr_data <= x"8074" & "0000000" & tx_atten(8);
        elsif wr_109 = '1' then
          wr_en   <= wr_109_we;
          rd_en   <= '0';
          wr_data <= x"8109" & '0' & fbrx_gain;
        elsif wr_7C = '1' then
          wr_en <= wr_7C_we;
          rd_en <= '0';
          wr_data <= x"807C40";
        else
          if (ARM_en = '1') and (ARM_en_reg = '0') and (slv_reg0(0) = '1') then
            wr_en <= '1';
          else
            wr_en <= '0';
          end if;

          if (ARM_en = '1') and (ARM_en_reg = '0') and (slv_reg0(0) = '0') then
            rd_en <= '1';
          else
            rd_en <= '0';
          end if;

          wr_data <= slv_reg1(wr_data_width-1 downto 0);
        end if;
    end if;
  end process MUX_PROCESS;

  DELAYED_WE_PROCESS : process(S_AXI_ACLK)
  begin
    if (rising_edge (S_AXI_ACLK)) then
      if (wr_73 = '1') and (wr_73_x1 = '0') then
        wr_73_we <= '1';
      else
        wr_73_we <= '0';
      end if;

      if (wr_74 = '1') and (wr_74_x1 = '0') then
        wr_74_we <= '1';
      else
        wr_74_we <= '0';
      end if;

      if (wr_7C = '1') and (wr_7C_x1 = '0') then
        wr_7C_we <= '1';
      else
        wr_7C_we <= '0';
      end if;

      if (wr_109 = '1') and (wr_109_x1 = '0') then
        wr_109_we <= '1';
      else
        wr_109_we <= '0';
      end if;
    end if;
  end process DELAYED_WE_PROCESS;


  BF_enable <= BF_en;

  BF_wr_done <= BF_wr_done_i;
  BF_rd_done <= BF_rd_done_i;
  BF_rd_data <= BF_rd_data_i;

  MUX_SYNC_PROCESS : process(S_AXI_ACLK)
  begin
    if (rising_edge (S_AXI_ACLK)) then
      if (S_AXI_ARESETN = '0') then
        BF_rd_data_i   <= (others => '0');
        BF_wr_done_i   <= '0';
        BF_rd_done_i   <= '0';
      else
        if (BF_en = '1') then
          BF_wr_done_i <= wr_done;
          BF_rd_done_i <= rd_done;
          BF_rd_data_i <= rd_data;
        else
          BF_rd_data_i <= (others => '0');
          BF_wr_done_i <= '0';
          BF_rd_done_i <= '0';
        end if;
      end if;
    end if;
  end process MUX_SYNC_PROCESS;




end RTL;
