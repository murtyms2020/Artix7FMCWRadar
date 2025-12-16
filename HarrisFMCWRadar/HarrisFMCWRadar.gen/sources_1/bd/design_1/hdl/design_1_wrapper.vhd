--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
--Date        : Sun Dec 14 21:32:21 2025
--Host        : murtyms-Z270X-Gaming-7 running 64-bit Ubuntu 22.04.5 LTS
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    CSN_0 : out STD_LOGIC;
    CSN_1 : out STD_LOGIC;
    CSN_2 : out STD_LOGIC;
    CSN_3 : out STD_LOGIC;
    CSN_4 : out STD_LOGIC;
    MISO_0 : in STD_LOGIC;
    MISO_1 : in STD_LOGIC;
    MISO_2 : in STD_LOGIC;
    MISO_3 : in STD_LOGIC;
    MISO_4 : in STD_LOGIC;
    MOSI_0 : out STD_LOGIC;
    MOSI_1 : out STD_LOGIC;
    MOSI_2 : out STD_LOGIC;
    MOSI_3 : out STD_LOGIC;
    MOSI_4 : out STD_LOGIC;
    SCLK_0 : out STD_LOGIC;
    SCLK_1 : out STD_LOGIC;
    SCLK_2 : out STD_LOGIC;
    SCLK_3 : out STD_LOGIC;
    SCLK_4 : out STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 2 downto 0 );
    a_d : in STD_LOGIC_VECTOR ( 15 downto 0 );
    advn : in STD_LOGIC;
    clk_25MHZ : in STD_LOGIC;
    csn : in STD_LOGIC;
    ext_reset_in_0 : in STD_LOGIC;
    fpga_led : out STD_LOGIC_VECTOR ( 1 downto 0 );
    oen : in STD_LOGIC;
    read_data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    wen : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    advn : in STD_LOGIC;
    wen : in STD_LOGIC;
    oen : in STD_LOGIC;
    a_d : in STD_LOGIC_VECTOR ( 15 downto 0 );
    csn : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CSN_0 : out STD_LOGIC;
    MISO_0 : in STD_LOGIC;
    MOSI_0 : out STD_LOGIC;
    SCLK_0 : out STD_LOGIC;
    MISO_1 : in STD_LOGIC;
    MOSI_1 : out STD_LOGIC;
    SCLK_1 : out STD_LOGIC;
    CSN_1 : out STD_LOGIC;
    MISO_2 : in STD_LOGIC;
    SCLK_2 : out STD_LOGIC;
    MOSI_2 : out STD_LOGIC;
    CSN_2 : out STD_LOGIC;
    SCLK_3 : out STD_LOGIC;
    MOSI_3 : out STD_LOGIC;
    MISO_3 : in STD_LOGIC;
    CSN_3 : out STD_LOGIC;
    SCLK_4 : out STD_LOGIC;
    MOSI_4 : out STD_LOGIC;
    MISO_4 : in STD_LOGIC;
    CSN_4 : out STD_LOGIC;
    clk_25MHZ : in STD_LOGIC;
    ext_reset_in_0 : in STD_LOGIC;
    read_data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fpga_led : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      CSN_0 => CSN_0,
      CSN_1 => CSN_1,
      CSN_2 => CSN_2,
      CSN_3 => CSN_3,
      CSN_4 => CSN_4,
      MISO_0 => MISO_0,
      MISO_1 => MISO_1,
      MISO_2 => MISO_2,
      MISO_3 => MISO_3,
      MISO_4 => MISO_4,
      MOSI_0 => MOSI_0,
      MOSI_1 => MOSI_1,
      MOSI_2 => MOSI_2,
      MOSI_3 => MOSI_3,
      MOSI_4 => MOSI_4,
      SCLK_0 => SCLK_0,
      SCLK_1 => SCLK_1,
      SCLK_2 => SCLK_2,
      SCLK_3 => SCLK_3,
      SCLK_4 => SCLK_4,
      a(2 downto 0) => a(2 downto 0),
      a_d(15 downto 0) => a_d(15 downto 0),
      advn => advn,
      clk_25MHZ => clk_25MHZ,
      csn => csn,
      ext_reset_in_0 => ext_reset_in_0,
      fpga_led(1 downto 0) => fpga_led(1 downto 0),
      oen => oen,
      read_data_out(15 downto 0) => read_data_out(15 downto 0),
      wen => wen
    );
end STRUCTURE;
