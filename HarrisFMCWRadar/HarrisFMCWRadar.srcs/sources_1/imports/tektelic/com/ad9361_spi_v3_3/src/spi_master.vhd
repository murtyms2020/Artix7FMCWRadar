----------------------------------------------------------------------------------
-- Company: Tektelic
-- Engineer: Rob Sizeland
-- 
-- Create Date: 12/24/2014 07:18:37 AM
-- Design Name: 
-- Module Name: spi_master - Behavioral
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
-- SPI master supporting configurable number of data bits (in both read and write
-- directions).  Currently, CPOL = 0 (clock polarity) and CPHA = 1 (clock edge) only.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use ieee.numeric_std.all;


entity spi_master is
  generic (
    SCLK_div      :     integer;
    wr_data_width :     integer;
    rd_data_width :     integer
    );
  port ( wr_en    : in  std_logic;
         wr_done  : out std_logic;
         wr_data  : in  std_logic_vector (wr_data_width-1 downto 0);
         rd_en    : in  std_logic;
         rd_done  : out std_logic;
         rd_data  : out std_logic_vector (rd_data_width-1 downto 0);
         clk      : in  std_logic;
         reset    : in  std_logic;
         SCLK     : out std_logic;
         MOSI     : out std_logic;
         MISO     : in  std_logic;
         CSN      : out std_logic);
end spi_master;

architecture RTL of spi_master is

--signals
  signal reading_i, writing_i          : std_logic;  -- state machine output - combinatorial
  signal read_done, write_done         : std_logic;  -- 1 clock cycle pulse when read/write operation is complete
  signal read_done_reg, write_done_reg : std_logic;
  signal reading, writing              : std_logic;  -- state machine outputs  -- registered
  signal writing_reg                   : std_logic;
  signal reading_reg                   : std_logic;
  type state_type is (st1_idle, st2_writing, st3_reading);  -- 3-state state machine
  signal state, next_state             : state_type;
  signal bit_counter                   : unsigned(7 downto 0);  -- counts from 0 to # of bits  -- how to make this log2(wr_data_width)?
  signal sclk_counter                  : unsigned(7 downto 0);  -- counts from 0 to SCLK_div-1  -- how to make this log2(SCLK_div)?
  signal sclk_i                        : std_logic;  -- internal sclk
  signal mosi_i                        : std_logic;  -- internal mosi
  signal csw_i                         : std_logic;  -- internal CS
  signal mosi_i_reg                    : std_logic;
  signal wr_data_reg                   : std_logic_vector (wr_data_width downto 0);  -- internal write data bus  -- registered with wr_en
  signal miso_en                       : std_logic;  -- clock enable for input shift register
  signal miso_en_reg                   : std_logic;
  signal SR                            : std_logic_vector(rd_data_width-1 downto 0);  -- shift register for reads

begin

-- state machine

  SYNC_PROC : process (clk)
  begin
    if rising_edge(clk) then
      if (reset = '1') then
        state   <= st1_idle;
        reading <= '0';
        writing <= '0';
      else
        state   <= next_state;
        reading <= reading_i;
        writing <= writing_i;
      end if;
    end if;
  end process;

  --MOORE State-Machine - Outputs based on state only
  OUTPUT_DECODE : process (state)
  begin
    case (state) is
      when st1_idle    =>
        reading_i <= '0';
        writing_i <= '0';
      when st2_writing =>
        reading_i <= '0';
        writing_i <= '1';
      when st3_reading =>
        reading_i <= '1';
        writing_i <= '0';
      when others      =>
        reading_i <= '0';
        writing_i <= '0';
    end case;
  end process;

  NEXT_STATE_DECODE : process (state, wr_en, rd_en, read_done, write_done)
  begin
    --declare default state for next_state to avoid latches
    next_state       <= state;          --default is to stay in current state
    case (state) is
      when st1_idle    =>
        if wr_en = '1' then
          next_state <= st2_writing;
        elsif rd_en = '1' then
          next_state <= st3_reading;
        end if;
      when st2_writing =>
        if write_done = '1' then
          next_state <= st1_idle;
        end if;
      when st3_reading =>
        if read_done = '1' then
          next_state <= st1_idle;
        end if;
      when others      =>
        next_state   <= st1_idle;
    end case;
  end process;


  -- read/write 

  read_write_sync : process (clk)
  begin
    if rising_edge(clk) then
      if (reset = '1') then             -- synchronous reset
        bit_counter    <= (others => '0');
        sclk_counter   <= (others => '0');
        wr_data_reg    <= (others => '0');
        write_done     <= '0';
        read_done      <= '0';
        miso_en        <= '0';
      else
        SCLK           <= sclk_i;
        mosi_i_reg     <= mosi_i;
        csw_i          <= writing_i or reading_i;
        writing_reg    <= writing_i;
        reading_reg    <= reading_i;
        read_done_reg  <= read_done;
        write_done_reg <= write_done;

        -- reset bit_counter when finished reading or writing
        if (writing_reg = '0' and writing_i = '1') or (reading_reg = '0' and reading_i = '1') then
          bit_counter <= (others => '0');
        end if;

        if wr_en = '1' then             -- latch input data write
          wr_data_reg(wr_data_width downto 1) <= wr_data;
        elsif rd_en = '1' then          -- latch upper bits of input data for write, make read bits 0
          wr_data_reg(wr_data_width downto 9) <= wr_data(23 downto 8);
          wr_data_reg(8 downto 0)             <= (others => '0');
        end if;

        -- write done and read done generation
        if writing = '1' and bit_counter = wr_data_width and write_done = '0' and write_done_reg = '0' then
          write_done <= '1';
        else
          write_done <= '0';
        end if;
        if reading = '1' and bit_counter = wr_data_width and read_done = '0' and read_done_reg = '0' then
          read_done  <= '1';
        else
          read_done  <= '0';
        end if;

        -- counters: bit_counter from 0 to #bits (extra count is used to generate the done signals)
        --           sclk_counter from 0 to SCLK_div-1.. SCLK is low for the first half of the count, high for the second half
        if (writing = '1' or reading = '1') and to_integer(bit_counter) < wr_data_width then
          sclk_counter    <= sclk_counter + 1;
          if sclk_counter = SCLK_div/2-1 then -- line up data with rising edge of sclk_i
            mosi_i          <= wr_data_reg(wr_data_width-to_integer(bit_counter));
          end if;
          if sclk_counter = SCLK_div - 1 then
            if bit_counter < (wr_data_width) then
              bit_counter <= bit_counter + 1; -- increase bit counter, but only at the end of the sclk cycle, and only to wr_data_width
            end if;
            sclk_counter  <= (others => '0'); -- reset sclk counter
          end if;
        end if;
        if reading = '1' then
          if bit_counter >= (wr_data_width - rd_data_width) then
            if to_integer(sclk_counter) = SCLK_div-2 then
              miso_en     <= '1';  -- clock enable for shift register on negative SCLK edge
            else
              miso_en     <= '0';
            end if;
          end if;
        end if;
      end if;
    end if;
  end process;


  -- generate SCLK based on sclk_counter
  sclk_gen_process : process (sclk_counter)
  begin
    case to_integer(sclk_counter) is
      when 0 to SCLK_div/2-1        => sclk_i <= '0'; -- clock polarity
      when SCLK_div/2 to SCLK_div-1 => sclk_i <= '1';
      when others                   => sclk_i <= '0';
    end case;
  end process;

  -- shift register for reading data    -- enabled by miso_en_reg (delayed 1 cycle because all outputs are registered)
  SR_process : process(clk)
  begin
    if rising_edge(clk) then
      miso_en_reg <= miso_en;
      if miso_en_reg = '1' then
        SR(0)     <= MISO;
        for i in 0 to rd_data_width-2 loop
          SR(i+1) <= SR(i);
        end loop;
      end if;
    end if;
  end process;

-- register outputs

  reg_out_process : process(clk)
  begin
    if rising_edge(clk) then
      MOSI    <= mosi_i_reg;
      --SCLK    <= sclk_i;
      CSN     <= not csw_i;
      rd_data <= SR;
      rd_done <= read_done;
      wr_done <= write_done;
    end if;
  end process;

end RTL;
