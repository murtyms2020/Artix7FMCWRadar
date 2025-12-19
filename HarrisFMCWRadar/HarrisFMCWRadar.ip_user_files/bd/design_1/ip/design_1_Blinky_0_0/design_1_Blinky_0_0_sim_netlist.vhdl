-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Sun Dec 14 21:33:25 2025
-- Host        : murtyms-Z270X-Gaming-7 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/murtyms/Radar/HarrisFMCWRadar/HarrisFMCWRadar.gen/sources_1/bd/design_1/ip/design_1_Blinky_0_0/design_1_Blinky_0_0_sim_netlist.vhdl
-- Design      : design_1_Blinky_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tffg1156-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Blinky_0_0_Blinky is
  port (
    led : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rst_n : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Blinky_0_0_Blinky : entity is "Blinky";
end design_1_Blinky_0_0_Blinky;

architecture STRUCTURE of design_1_Blinky_0_0_Blinky is
  signal \^led\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal led_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \led_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \led_out[1]_i_4_n_0\ : STD_LOGIC;
  signal \led_out[1]_i_5_n_0\ : STD_LOGIC;
  signal \led_out[1]_i_6_n_0\ : STD_LOGIC;
  signal \r_cnt_clk[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_clk[0]_i_3_n_0\ : STD_LOGIC;
  signal r_cnt_clk_reg : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \r_cnt_clk_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_cnt_clk_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \r_cnt_clk_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \r_cnt_clk_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \r_cnt_clk_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \r_cnt_clk_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \r_cnt_clk_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \r_cnt_clk_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \r_cnt_clk_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_clk_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \r_cnt_clk_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \r_cnt_clk_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \r_cnt_clk_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \r_cnt_clk_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \r_cnt_clk_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \r_cnt_clk_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \r_cnt_clk_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_clk_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \r_cnt_clk_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \r_cnt_clk_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \r_cnt_clk_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \r_cnt_clk_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \r_cnt_clk_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \r_cnt_clk_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \r_cnt_clk_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_clk_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \r_cnt_clk_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \r_cnt_clk_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \r_cnt_clk_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \r_cnt_clk_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \r_cnt_clk_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \r_cnt_clk_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \r_cnt_clk_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \r_cnt_clk_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \r_cnt_clk_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \r_cnt_clk_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_clk_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \r_cnt_clk_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \r_cnt_clk_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \r_cnt_clk_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \r_cnt_clk_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \r_cnt_clk_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \r_cnt_clk_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \r_cnt_clk_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_clk_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \r_cnt_clk_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \r_cnt_clk_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \r_cnt_clk_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \r_cnt_clk_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \r_cnt_clk_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \r_cnt_clk_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_r_cnt_clk_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r_cnt_clk_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \led_out[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_out[1]_i_1\ : label is "soft_lutpair0";
begin
  led(1 downto 0) <= \^led\(1 downto 0);
\led_out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => \^led\(0),
      I1 => led_out(0),
      I2 => \^led\(1),
      I3 => rst_n,
      O => \led_out[0]_i_1_n_0\
    );
\led_out[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \^led\(1),
      I1 => led_out(0),
      I2 => \^led\(0),
      I3 => rst_n,
      O => \led_out[1]_i_1_n_0\
    );
\led_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \led_out[1]_i_3_n_0\,
      I1 => \led_out[1]_i_4_n_0\,
      I2 => \led_out[1]_i_5_n_0\,
      I3 => \led_out[1]_i_6_n_0\,
      I4 => r_cnt_clk_reg(0),
      I5 => r_cnt_clk_reg(1),
      O => led_out(0)
    );
\led_out[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => r_cnt_clk_reg(4),
      I1 => r_cnt_clk_reg(5),
      I2 => r_cnt_clk_reg(2),
      I3 => r_cnt_clk_reg(3),
      I4 => r_cnt_clk_reg(7),
      I5 => r_cnt_clk_reg(6),
      O => \led_out[1]_i_3_n_0\
    );
\led_out[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => r_cnt_clk_reg(22),
      I1 => r_cnt_clk_reg(23),
      I2 => r_cnt_clk_reg(20),
      I3 => r_cnt_clk_reg(21),
      I4 => r_cnt_clk_reg(24),
      I5 => r_cnt_clk_reg(25),
      O => \led_out[1]_i_4_n_0\
    );
\led_out[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => r_cnt_clk_reg(17),
      I1 => r_cnt_clk_reg(16),
      I2 => r_cnt_clk_reg(14),
      I3 => r_cnt_clk_reg(15),
      I4 => r_cnt_clk_reg(18),
      I5 => r_cnt_clk_reg(19),
      O => \led_out[1]_i_5_n_0\
    );
\led_out[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => r_cnt_clk_reg(10),
      I1 => r_cnt_clk_reg(11),
      I2 => r_cnt_clk_reg(8),
      I3 => r_cnt_clk_reg(9),
      I4 => r_cnt_clk_reg(13),
      I5 => r_cnt_clk_reg(12),
      O => \led_out[1]_i_6_n_0\
    );
\led_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \led_out[0]_i_1_n_0\,
      Q => \^led\(0),
      R => '0'
    );
\led_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \led_out[1]_i_1_n_0\,
      Q => \^led\(1),
      R => '0'
    );
\r_cnt_clk[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => led_out(0),
      I1 => rst_n,
      O => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_cnt_clk_reg(0),
      O => \r_cnt_clk[0]_i_3_n_0\
    );
\r_cnt_clk_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[0]_i_2_n_7\,
      Q => r_cnt_clk_reg(0),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_cnt_clk_reg[0]_i_2_n_0\,
      CO(2) => \r_cnt_clk_reg[0]_i_2_n_1\,
      CO(1) => \r_cnt_clk_reg[0]_i_2_n_2\,
      CO(0) => \r_cnt_clk_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \r_cnt_clk_reg[0]_i_2_n_4\,
      O(2) => \r_cnt_clk_reg[0]_i_2_n_5\,
      O(1) => \r_cnt_clk_reg[0]_i_2_n_6\,
      O(0) => \r_cnt_clk_reg[0]_i_2_n_7\,
      S(3 downto 1) => r_cnt_clk_reg(3 downto 1),
      S(0) => \r_cnt_clk[0]_i_3_n_0\
    );
\r_cnt_clk_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[8]_i_1_n_5\,
      Q => r_cnt_clk_reg(10),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[8]_i_1_n_4\,
      Q => r_cnt_clk_reg(11),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[12]_i_1_n_7\,
      Q => r_cnt_clk_reg(12),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_cnt_clk_reg[8]_i_1_n_0\,
      CO(3) => \r_cnt_clk_reg[12]_i_1_n_0\,
      CO(2) => \r_cnt_clk_reg[12]_i_1_n_1\,
      CO(1) => \r_cnt_clk_reg[12]_i_1_n_2\,
      CO(0) => \r_cnt_clk_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_cnt_clk_reg[12]_i_1_n_4\,
      O(2) => \r_cnt_clk_reg[12]_i_1_n_5\,
      O(1) => \r_cnt_clk_reg[12]_i_1_n_6\,
      O(0) => \r_cnt_clk_reg[12]_i_1_n_7\,
      S(3 downto 0) => r_cnt_clk_reg(15 downto 12)
    );
\r_cnt_clk_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[12]_i_1_n_6\,
      Q => r_cnt_clk_reg(13),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[12]_i_1_n_5\,
      Q => r_cnt_clk_reg(14),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[12]_i_1_n_4\,
      Q => r_cnt_clk_reg(15),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[16]_i_1_n_7\,
      Q => r_cnt_clk_reg(16),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_cnt_clk_reg[12]_i_1_n_0\,
      CO(3) => \r_cnt_clk_reg[16]_i_1_n_0\,
      CO(2) => \r_cnt_clk_reg[16]_i_1_n_1\,
      CO(1) => \r_cnt_clk_reg[16]_i_1_n_2\,
      CO(0) => \r_cnt_clk_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_cnt_clk_reg[16]_i_1_n_4\,
      O(2) => \r_cnt_clk_reg[16]_i_1_n_5\,
      O(1) => \r_cnt_clk_reg[16]_i_1_n_6\,
      O(0) => \r_cnt_clk_reg[16]_i_1_n_7\,
      S(3 downto 0) => r_cnt_clk_reg(19 downto 16)
    );
\r_cnt_clk_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[16]_i_1_n_6\,
      Q => r_cnt_clk_reg(17),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[16]_i_1_n_5\,
      Q => r_cnt_clk_reg(18),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[16]_i_1_n_4\,
      Q => r_cnt_clk_reg(19),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[0]_i_2_n_6\,
      Q => r_cnt_clk_reg(1),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[20]_i_1_n_7\,
      Q => r_cnt_clk_reg(20),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_cnt_clk_reg[16]_i_1_n_0\,
      CO(3) => \r_cnt_clk_reg[20]_i_1_n_0\,
      CO(2) => \r_cnt_clk_reg[20]_i_1_n_1\,
      CO(1) => \r_cnt_clk_reg[20]_i_1_n_2\,
      CO(0) => \r_cnt_clk_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_cnt_clk_reg[20]_i_1_n_4\,
      O(2) => \r_cnt_clk_reg[20]_i_1_n_5\,
      O(1) => \r_cnt_clk_reg[20]_i_1_n_6\,
      O(0) => \r_cnt_clk_reg[20]_i_1_n_7\,
      S(3 downto 0) => r_cnt_clk_reg(23 downto 20)
    );
\r_cnt_clk_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[20]_i_1_n_6\,
      Q => r_cnt_clk_reg(21),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[20]_i_1_n_5\,
      Q => r_cnt_clk_reg(22),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[20]_i_1_n_4\,
      Q => r_cnt_clk_reg(23),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[24]_i_1_n_7\,
      Q => r_cnt_clk_reg(24),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_cnt_clk_reg[20]_i_1_n_0\,
      CO(3 downto 1) => \NLW_r_cnt_clk_reg[24]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \r_cnt_clk_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_r_cnt_clk_reg[24]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \r_cnt_clk_reg[24]_i_1_n_6\,
      O(0) => \r_cnt_clk_reg[24]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => r_cnt_clk_reg(25 downto 24)
    );
\r_cnt_clk_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[24]_i_1_n_6\,
      Q => r_cnt_clk_reg(25),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[0]_i_2_n_5\,
      Q => r_cnt_clk_reg(2),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[0]_i_2_n_4\,
      Q => r_cnt_clk_reg(3),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[4]_i_1_n_7\,
      Q => r_cnt_clk_reg(4),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_cnt_clk_reg[0]_i_2_n_0\,
      CO(3) => \r_cnt_clk_reg[4]_i_1_n_0\,
      CO(2) => \r_cnt_clk_reg[4]_i_1_n_1\,
      CO(1) => \r_cnt_clk_reg[4]_i_1_n_2\,
      CO(0) => \r_cnt_clk_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_cnt_clk_reg[4]_i_1_n_4\,
      O(2) => \r_cnt_clk_reg[4]_i_1_n_5\,
      O(1) => \r_cnt_clk_reg[4]_i_1_n_6\,
      O(0) => \r_cnt_clk_reg[4]_i_1_n_7\,
      S(3 downto 0) => r_cnt_clk_reg(7 downto 4)
    );
\r_cnt_clk_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[4]_i_1_n_6\,
      Q => r_cnt_clk_reg(5),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[4]_i_1_n_5\,
      Q => r_cnt_clk_reg(6),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[4]_i_1_n_4\,
      Q => r_cnt_clk_reg(7),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[8]_i_1_n_7\,
      Q => r_cnt_clk_reg(8),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
\r_cnt_clk_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_cnt_clk_reg[4]_i_1_n_0\,
      CO(3) => \r_cnt_clk_reg[8]_i_1_n_0\,
      CO(2) => \r_cnt_clk_reg[8]_i_1_n_1\,
      CO(1) => \r_cnt_clk_reg[8]_i_1_n_2\,
      CO(0) => \r_cnt_clk_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_cnt_clk_reg[8]_i_1_n_4\,
      O(2) => \r_cnt_clk_reg[8]_i_1_n_5\,
      O(1) => \r_cnt_clk_reg[8]_i_1_n_6\,
      O(0) => \r_cnt_clk_reg[8]_i_1_n_7\,
      S(3 downto 0) => r_cnt_clk_reg(11 downto 8)
    );
\r_cnt_clk_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_clk_reg[8]_i_1_n_6\,
      Q => r_cnt_clk_reg(9),
      R => \r_cnt_clk[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Blinky_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Blinky_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Blinky_0_0 : entity is "design_1_Blinky_0_0,Blinky,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_Blinky_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_Blinky_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_Blinky_0_0 : entity is "Blinky,Vivado 2025.2";
end design_1_Blinky_0_0;

architecture STRUCTURE of design_1_Blinky_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute x_interface_mode of rst_n : signal is "slave rst_n";
  attribute x_interface_parameter of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_Blinky_0_0_Blinky
     port map (
      clk => clk,
      led(1 downto 0) => led(1 downto 0),
      rst_n => rst_n
    );
end STRUCTURE;
