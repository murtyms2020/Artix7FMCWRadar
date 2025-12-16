library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity axi_splitter is
  generic (
    -- Parameters of Axi Slave Bus Interface S00_AXIS
    C_S00_AXIS_TDATA_WIDTH : integer := 16;

    -- Parameters of Axi Slave Bus Interface M01_AXIS
    C_M01_AXIS_TDATA_WIDTH : integer := 16;

    -- Parameters of Axi Master Bus Interface M00_AXIS
    C_M00_AXIS_TDATA_WIDTH : integer := 16
    );
  port (
    -- Users to add ports here

    -- User ports ends
    -- Do not modify the ports beyond this line
    -- Ports of Axi Slave Bus Interface S00_AXIS
    s00_axis_aclk   : in  std_logic;
    s00_axis_areset : in  std_logic;
    s00_axis_tdata  : in  std_logic_vector(C_S00_AXIS_TDATA_WIDTH-1 downto 0);
    s00_axis_tlast  : in  std_logic;
    s00_axis_tvalid : in  std_logic;
    s00_axis_tready : out std_logic;

    -- Ports of Axi Master Bus Interface M01_AXIS
    m01_axis_aclk   : in  std_logic;
    m01_axis_areset : in  std_logic;
    m01_axis_tdata  : out  std_logic_vector(C_M01_AXIS_TDATA_WIDTH-1 downto 0);
    m01_axis_tlast  : out  std_logic;
    m01_axis_tvalid : out  std_logic;

    -- Ports of Axi Master Bus Interface M00_AXIS
    m00_axis_aclk   : in  std_logic;
    m00_axis_areset : in  std_logic;
    m00_axis_tdata  : out std_logic_vector(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
    m00_axis_tlast  : out std_logic;
    m00_axis_tvalid : out std_logic
    );
end axi_splitter;

architecture rtl of axi_splitter is

  signal stream_sel_pipe : std_logic;

begin

  s00_axis_tready <= '1';

  RX_MUX : process (m00_axis_aclk) is
  begin
    if rising_edge(m00_axis_aclk) then
      if (m00_axis_areset = '1') then
        m00_axis_tdata    <= (others => '0');
        m00_axis_tlast    <= '0';
        m00_axis_tvalid   <= '0';
        stream_sel_pipe   <= 'X';
      else
          m00_axis_tdata  <= s00_axis_tdata;
          m00_axis_tlast  <= s00_axis_tlast;
          m00_axis_tvalid <= s00_axis_tvalid;
          m01_axis_tdata  <= s00_axis_tdata;
          m01_axis_tlast  <= s00_axis_tlast;
          m01_axis_tvalid <= s00_axis_tvalid;
      end if;
    end if;
  end process RX_MUX;

end rtl;
