-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Sun Dec 14 17:39:57 2025
-- Host        : murtyms-Z270X-Gaming-7 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/murtyms/Radar/HarrisFMCWRadar/HarrisFMCWRadar.gen/sources_1/bd/design_1/ip/design_1_gpmc_axi_bridge_0_1/design_1_gpmc_axi_bridge_0_1_sim_netlist.vhdl
-- Design      : design_1_gpmc_axi_bridge_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tffg1156-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_single_reg_w_init is
  port (
    m_axi_lite_rready : out STD_LOGIC;
    \fd_prim_array[0].bit_is_0.fdre_comp_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    m_axi_lite_rvalid : in STD_LOGIC;
    m_axi_lite_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_single_reg_w_init : entity is "single_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_single_reg_w_init;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_single_reg_w_init is
  signal \fd_prim_array[0].bit_is_0.fdre_comp_i_1__6_n_0\ : STD_LOGIC;
  signal \^m_axi_lite_rready\ : STD_LOGIC;
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "TRUE";
begin
  m_axi_lite_rready <= \^m_axi_lite_rready\;
\fd_prim_array[0].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[0].bit_is_0.fdre_comp_0\,
      D => '1',
      Q => \^m_axi_lite_rready\,
      R => \fd_prim_array[0].bit_is_0.fdre_comp_i_1__6_n_0\
    );
\fd_prim_array[0].bit_is_0.fdre_comp_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^m_axi_lite_rready\,
      I1 => m_axi_lite_rvalid,
      I2 => m_axi_lite_aresetn,
      O => \fd_prim_array[0].bit_is_0.fdre_comp_i_1__6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_single_reg_w_init_16 is
  port (
    m_axi_lite_arvalid : out STD_LOGIC;
    \fd_prim_array[0].bit_is_0.fdre_comp_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    m_axi_lite_arready : in STD_LOGIC;
    m_axi_lite_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_single_reg_w_init_16 : entity is "single_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_single_reg_w_init_16;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_single_reg_w_init_16 is
  signal \fd_prim_array[0].bit_is_0.fdre_comp_i_1__5_n_0\ : STD_LOGIC;
  signal \^m_axi_lite_arvalid\ : STD_LOGIC;
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "TRUE";
begin
  m_axi_lite_arvalid <= \^m_axi_lite_arvalid\;
\fd_prim_array[0].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[0].bit_is_0.fdre_comp_0\,
      D => '1',
      Q => \^m_axi_lite_arvalid\,
      R => \fd_prim_array[0].bit_is_0.fdre_comp_i_1__5_n_0\
    );
\fd_prim_array[0].bit_is_0.fdre_comp_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^m_axi_lite_arvalid\,
      I1 => m_axi_lite_arready,
      I2 => m_axi_lite_aresetn,
      O => \fd_prim_array[0].bit_is_0.fdre_comp_i_1__5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_single_reg_w_init_19 is
  port (
    m_axi_lite_awvalid : out STD_LOGIC;
    ce : in STD_LOGIC;
    clk : in STD_LOGIC;
    m_axi_lite_awready : in STD_LOGIC;
    m_axi_lite_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_single_reg_w_init_19 : entity is "single_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_single_reg_w_init_19;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_single_reg_w_init_19 is
  signal \fd_prim_array[0].bit_is_0.fdre_comp_i_1__3_n_0\ : STD_LOGIC;
  signal \^m_axi_lite_awvalid\ : STD_LOGIC;
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "TRUE";
begin
  m_axi_lite_awvalid <= \^m_axi_lite_awvalid\;
\fd_prim_array[0].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ce,
      D => '1',
      Q => \^m_axi_lite_awvalid\,
      R => \fd_prim_array[0].bit_is_0.fdre_comp_i_1__3_n_0\
    );
\fd_prim_array[0].bit_is_0.fdre_comp_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^m_axi_lite_awvalid\,
      I1 => m_axi_lite_awready,
      I2 => m_axi_lite_aresetn,
      O => \fd_prim_array[0].bit_is_0.fdre_comp_i_1__3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_single_reg_w_init_22 is
  port (
    m_axi_lite_wvalid : out STD_LOGIC;
    ce : in STD_LOGIC;
    clk : in STD_LOGIC;
    m_axi_lite_wready : in STD_LOGIC;
    m_axi_lite_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_single_reg_w_init_22 : entity is "single_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_single_reg_w_init_22;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_single_reg_w_init_22 is
  signal \fd_prim_array[0].bit_is_0.fdre_comp_i_1__4_n_0\ : STD_LOGIC;
  signal \^m_axi_lite_wvalid\ : STD_LOGIC;
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "TRUE";
begin
  m_axi_lite_wvalid <= \^m_axi_lite_wvalid\;
\fd_prim_array[0].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ce,
      D => '1',
      Q => \^m_axi_lite_wvalid\,
      R => \fd_prim_array[0].bit_is_0.fdre_comp_i_1__4_n_0\
    );
\fd_prim_array[0].bit_is_0.fdre_comp_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^m_axi_lite_wvalid\,
      I1 => m_axi_lite_wready,
      I2 => m_axi_lite_aresetn,
      O => \fd_prim_array[0].bit_is_0.fdre_comp_i_1__4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_single_reg_w_init_24 is
  port (
    register9_q_net : out STD_LOGIC;
    clk : in STD_LOGIC;
    wen : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_single_reg_w_init_24 : entity is "single_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_single_reg_w_init_24;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_single_reg_w_init_24 is
  signal inverter2_op_net : STD_LOGIC;
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "TRUE";
begin
\fd_prim_array[0].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => inverter2_op_net,
      Q => register9_q_net,
      R => '0'
    );
\fd_prim_array[0].bit_is_0.fdre_comp_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wen,
      O => inverter2_op_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_single_reg_w_init_32 is
  port (
    \fd_prim_array[0].bit_is_0.fdre_comp_0\ : out STD_LOGIC;
    logical12_y_net : out STD_LOGIC;
    logical13_y_net : out STD_LOGIC;
    logical14_y_net : out STD_LOGIC;
    register3_q_net : in STD_LOGIC;
    clk : in STD_LOGIC;
    register10_q_net : in STD_LOGIC;
    register2_q_net : in STD_LOGIC;
    register11_q_net : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_single_reg_w_init_32 : entity is "single_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_single_reg_w_init_32;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_single_reg_w_init_32 is
  signal \^fd_prim_array[0].bit_is_0.fdre_comp_0\ : STD_LOGIC;
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \reg_array[0].fde_used.u2_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \reg_array[0].fde_used.u2_i_1__0\ : label is "soft_lutpair8";
begin
  \fd_prim_array[0].bit_is_0.fdre_comp_0\ <= \^fd_prim_array[0].bit_is_0.fdre_comp_0\;
\fd_prim_array[0].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => register3_q_net,
      Q => \^fd_prim_array[0].bit_is_0.fdre_comp_0\,
      R => '0'
    );
\reg_array[0].fde_used.u2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fd_prim_array[0].bit_is_0.fdre_comp_0\,
      I1 => register10_q_net,
      O => logical12_y_net
    );
\reg_array[0].fde_used.u2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fd_prim_array[0].bit_is_0.fdre_comp_0\,
      I1 => register2_q_net,
      O => logical13_y_net
    );
\reg_array[0].fde_used.u2_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fd_prim_array[0].bit_is_0.fdre_comp_0\,
      I1 => register11_q_net,
      O => logical14_y_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_single_reg_w_init_34 is
  port (
    register3_q_net : out STD_LOGIC;
    clk : in STD_LOGIC;
    csn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_single_reg_w_init_34 : entity is "single_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_single_reg_w_init_34;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_single_reg_w_init_34 is
  signal inverter_op_net : STD_LOGIC;
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "TRUE";
begin
\fd_prim_array[0].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => inverter_op_net,
      Q => register3_q_net,
      R => '0'
    );
\fd_prim_array[0].bit_is_0.fdre_comp_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => csn,
      O => inverter_op_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_single_reg_w_init_36 is
  port (
    register2_q_net : out STD_LOGIC;
    register1_q_net : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_single_reg_w_init_36 : entity is "single_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_single_reg_w_init_36;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_single_reg_w_init_36 is
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "TRUE";
begin
\fd_prim_array[0].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => register1_q_net,
      Q => register2_q_net,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_single_reg_w_init_38 is
  port (
    register12_q_net : out STD_LOGIC;
    clk : in STD_LOGIC;
    oen : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_single_reg_w_init_38 : entity is "single_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_single_reg_w_init_38;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_single_reg_w_init_38 is
  signal inverter4_op_net : STD_LOGIC;
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "TRUE";
begin
\fd_prim_array[0].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => inverter4_op_net,
      Q => register12_q_net,
      R => '0'
    );
\fd_prim_array[0].bit_is_0.fdre_comp_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => oen,
      O => inverter4_op_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_single_reg_w_init_40 is
  port (
    register11_q_net : out STD_LOGIC;
    register12_q_net : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_single_reg_w_init_40 : entity is "single_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_single_reg_w_init_40;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_single_reg_w_init_40 is
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "TRUE";
begin
\fd_prim_array[0].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => register12_q_net,
      Q => register11_q_net,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_single_reg_w_init_42 is
  port (
    register10_q_net : out STD_LOGIC;
    register9_q_net : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_single_reg_w_init_42 : entity is "single_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_single_reg_w_init_42;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_single_reg_w_init_42 is
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "TRUE";
begin
\fd_prim_array[0].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => register9_q_net,
      Q => register10_q_net,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_single_reg_w_init_44 is
  port (
    register1_q_net : out STD_LOGIC;
    clk : in STD_LOGIC;
    advn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_single_reg_w_init_44 : entity is "single_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_single_reg_w_init_44;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_single_reg_w_init_44 is
  signal inverter1_op_net : STD_LOGIC;
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "TRUE";
begin
\fd_prim_array[0].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => inverter1_op_net,
      Q => register1_q_net,
      R => '0'
    );
\fd_prim_array[0].bit_is_0.fdre_comp_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => advn,
      O => inverter1_op_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1\ is
  port (
    m_axi_lite_wdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ce : in STD_LOGIC;
    i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1\ : entity is "single_reg_w_init";
end \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1\ is
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[10].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[10].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[11].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[11].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[12].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[12].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[13].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[13].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[14].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[14].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[15].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[15].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[1].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[1].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[2].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[2].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[3].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[3].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[4].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[4].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[5].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[5].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[6].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[6].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[7].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[7].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[8].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[8].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[9].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[9].bit_is_0.fdre_comp\ : label is "TRUE";
begin
\fd_prim_array[0].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ce,
      D => i(0),
      Q => m_axi_lite_wdata(0),
      R => '0'
    );
\fd_prim_array[10].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ce,
      D => i(10),
      Q => m_axi_lite_wdata(10),
      R => '0'
    );
\fd_prim_array[11].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ce,
      D => i(11),
      Q => m_axi_lite_wdata(11),
      R => '0'
    );
\fd_prim_array[12].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ce,
      D => i(12),
      Q => m_axi_lite_wdata(12),
      R => '0'
    );
\fd_prim_array[13].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ce,
      D => i(13),
      Q => m_axi_lite_wdata(13),
      R => '0'
    );
\fd_prim_array[14].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ce,
      D => i(14),
      Q => m_axi_lite_wdata(14),
      R => '0'
    );
\fd_prim_array[15].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ce,
      D => i(15),
      Q => m_axi_lite_wdata(15),
      R => '0'
    );
\fd_prim_array[1].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ce,
      D => i(1),
      Q => m_axi_lite_wdata(1),
      R => '0'
    );
\fd_prim_array[2].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ce,
      D => i(2),
      Q => m_axi_lite_wdata(2),
      R => '0'
    );
\fd_prim_array[3].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ce,
      D => i(3),
      Q => m_axi_lite_wdata(3),
      R => '0'
    );
\fd_prim_array[4].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ce,
      D => i(4),
      Q => m_axi_lite_wdata(4),
      R => '0'
    );
\fd_prim_array[5].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ce,
      D => i(5),
      Q => m_axi_lite_wdata(5),
      R => '0'
    );
\fd_prim_array[6].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ce,
      D => i(6),
      Q => m_axi_lite_wdata(6),
      R => '0'
    );
\fd_prim_array[7].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ce,
      D => i(7),
      Q => m_axi_lite_wdata(7),
      R => '0'
    );
\fd_prim_array[8].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ce,
      D => i(8),
      Q => m_axi_lite_wdata(8),
      R => '0'
    );
\fd_prim_array[9].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ce,
      D => i(9),
      Q => m_axi_lite_wdata(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1_12\ is
  port (
    m_axi_lite_wdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \fd_prim_array[15].bit_is_0.fdre_comp_0\ : in STD_LOGIC;
    i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1_12\ : entity is "single_reg_w_init";
end \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1_12\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1_12\ is
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[10].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[10].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[11].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[11].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[12].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[12].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[13].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[13].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[14].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[14].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[15].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[15].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[1].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[1].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[2].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[2].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[3].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[3].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[4].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[4].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[5].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[5].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[6].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[6].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[7].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[7].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[8].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[8].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[9].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[9].bit_is_0.fdre_comp\ : label is "TRUE";
begin
\fd_prim_array[0].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[15].bit_is_0.fdre_comp_0\,
      D => i(0),
      Q => m_axi_lite_wdata(0),
      R => '0'
    );
\fd_prim_array[10].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[15].bit_is_0.fdre_comp_0\,
      D => i(10),
      Q => m_axi_lite_wdata(10),
      R => '0'
    );
\fd_prim_array[11].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[15].bit_is_0.fdre_comp_0\,
      D => i(11),
      Q => m_axi_lite_wdata(11),
      R => '0'
    );
\fd_prim_array[12].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[15].bit_is_0.fdre_comp_0\,
      D => i(12),
      Q => m_axi_lite_wdata(12),
      R => '0'
    );
\fd_prim_array[13].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[15].bit_is_0.fdre_comp_0\,
      D => i(13),
      Q => m_axi_lite_wdata(13),
      R => '0'
    );
\fd_prim_array[14].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[15].bit_is_0.fdre_comp_0\,
      D => i(14),
      Q => m_axi_lite_wdata(14),
      R => '0'
    );
\fd_prim_array[15].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[15].bit_is_0.fdre_comp_0\,
      D => i(15),
      Q => m_axi_lite_wdata(15),
      R => '0'
    );
\fd_prim_array[1].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[15].bit_is_0.fdre_comp_0\,
      D => i(1),
      Q => m_axi_lite_wdata(1),
      R => '0'
    );
\fd_prim_array[2].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[15].bit_is_0.fdre_comp_0\,
      D => i(2),
      Q => m_axi_lite_wdata(2),
      R => '0'
    );
\fd_prim_array[3].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[15].bit_is_0.fdre_comp_0\,
      D => i(3),
      Q => m_axi_lite_wdata(3),
      R => '0'
    );
\fd_prim_array[4].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[15].bit_is_0.fdre_comp_0\,
      D => i(4),
      Q => m_axi_lite_wdata(4),
      R => '0'
    );
\fd_prim_array[5].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[15].bit_is_0.fdre_comp_0\,
      D => i(5),
      Q => m_axi_lite_wdata(5),
      R => '0'
    );
\fd_prim_array[6].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[15].bit_is_0.fdre_comp_0\,
      D => i(6),
      Q => m_axi_lite_wdata(6),
      R => '0'
    );
\fd_prim_array[7].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[15].bit_is_0.fdre_comp_0\,
      D => i(7),
      Q => m_axi_lite_wdata(7),
      R => '0'
    );
\fd_prim_array[8].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[15].bit_is_0.fdre_comp_0\,
      D => i(8),
      Q => m_axi_lite_wdata(8),
      R => '0'
    );
\fd_prim_array[9].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[15].bit_is_0.fdre_comp_0\,
      D => i(9),
      Q => m_axi_lite_wdata(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1_28\ is
  port (
    o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1_28\ : entity is "single_reg_w_init";
end \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1_28\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1_28\ is
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[10].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[10].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[11].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[11].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[12].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[12].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[13].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[13].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[14].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[14].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[15].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[15].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[1].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[1].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[2].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[2].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[3].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[3].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[4].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[4].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[5].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[5].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[6].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[6].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[7].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[7].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[8].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[8].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[9].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[9].bit_is_0.fdre_comp\ : label is "TRUE";
begin
\fd_prim_array[0].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i(0),
      Q => o(0),
      R => '0'
    );
\fd_prim_array[10].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i(10),
      Q => o(10),
      R => '0'
    );
\fd_prim_array[11].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i(11),
      Q => o(11),
      R => '0'
    );
\fd_prim_array[12].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i(12),
      Q => o(12),
      R => '0'
    );
\fd_prim_array[13].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i(13),
      Q => o(13),
      R => '0'
    );
\fd_prim_array[14].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i(14),
      Q => o(14),
      R => '0'
    );
\fd_prim_array[15].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i(15),
      Q => o(15),
      R => '0'
    );
\fd_prim_array[1].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i(1),
      Q => o(1),
      R => '0'
    );
\fd_prim_array[2].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i(2),
      Q => o(2),
      R => '0'
    );
\fd_prim_array[3].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i(3),
      Q => o(3),
      R => '0'
    );
\fd_prim_array[4].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i(4),
      Q => o(4),
      R => '0'
    );
\fd_prim_array[5].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i(5),
      Q => o(5),
      R => '0'
    );
\fd_prim_array[6].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i(6),
      Q => o(6),
      R => '0'
    );
\fd_prim_array[7].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i(7),
      Q => o(7),
      R => '0'
    );
\fd_prim_array[8].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i(8),
      Q => o(8),
      R => '0'
    );
\fd_prim_array[9].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i(9),
      Q => o(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1_30\ is
  port (
    o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    a_d : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1_30\ : entity is "single_reg_w_init";
end \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1_30\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1_30\ is
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[10].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[10].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[11].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[11].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[12].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[12].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[13].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[13].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[14].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[14].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[15].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[15].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[1].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[1].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[2].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[2].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[3].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[3].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[4].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[4].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[5].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[5].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[6].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[6].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[7].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[7].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[8].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[8].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[9].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[9].bit_is_0.fdre_comp\ : label is "TRUE";
begin
\fd_prim_array[0].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a_d(0),
      Q => o(0),
      R => '0'
    );
\fd_prim_array[10].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a_d(10),
      Q => o(10),
      R => '0'
    );
\fd_prim_array[11].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a_d(11),
      Q => o(11),
      R => '0'
    );
\fd_prim_array[12].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a_d(12),
      Q => o(12),
      R => '0'
    );
\fd_prim_array[13].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a_d(13),
      Q => o(13),
      R => '0'
    );
\fd_prim_array[14].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a_d(14),
      Q => o(14),
      R => '0'
    );
\fd_prim_array[15].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a_d(15),
      Q => o(15),
      R => '0'
    );
\fd_prim_array[1].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a_d(1),
      Q => o(1),
      R => '0'
    );
\fd_prim_array[2].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a_d(2),
      Q => o(2),
      R => '0'
    );
\fd_prim_array[3].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a_d(3),
      Q => o(3),
      R => '0'
    );
\fd_prim_array[4].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a_d(4),
      Q => o(4),
      R => '0'
    );
\fd_prim_array[5].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a_d(5),
      Q => o(5),
      R => '0'
    );
\fd_prim_array[6].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a_d(6),
      Q => o(6),
      R => '0'
    );
\fd_prim_array[7].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a_d(7),
      Q => o(7),
      R => '0'
    );
\fd_prim_array[8].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a_d(8),
      Q => o(8),
      R => '0'
    );
\fd_prim_array[9].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a_d(9),
      Q => o(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized3\ is
  port (
    o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized3\ : entity is "single_reg_w_init";
end \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized3\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized3\ is
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[1].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[1].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[2].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[2].bit_is_0.fdre_comp\ : label is "TRUE";
begin
\fd_prim_array[0].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i(0),
      Q => o(0),
      R => '0'
    );
\fd_prim_array[1].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i(1),
      Q => o(1),
      R => '0'
    );
\fd_prim_array[2].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i(2),
      Q => o(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized3_26\ is
  port (
    o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    a : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized3_26\ : entity is "single_reg_w_init";
end \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized3_26\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized3_26\ is
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[1].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[1].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[2].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[2].bit_is_0.fdre_comp\ : label is "TRUE";
begin
\fd_prim_array[0].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a(0),
      Q => o(0),
      R => '0'
    );
\fd_prim_array[1].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a(1),
      Q => o(1),
      R => '0'
    );
\fd_prim_array[2].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => a(2),
      Q => o(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized5\ is
  port (
    ce : out STD_LOGIC;
    o : out STD_LOGIC_VECTOR ( 18 downto 0 );
    delay2_q_net_x0 : in STD_LOGIC;
    register4_q_net : in STD_LOGIC;
    register10_q_net : in STD_LOGIC;
    \fd_prim_array[0].bit_is_0.fdre_comp_0\ : in STD_LOGIC;
    i : in STD_LOGIC_VECTOR ( 18 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized5\ : entity is "single_reg_w_init";
end \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized5\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized5\ is
  signal \^o\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[10].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[10].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[11].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[11].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[12].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[12].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[13].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[13].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[14].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[14].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[15].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[15].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[16].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[16].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[17].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[17].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[18].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[18].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[1].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[1].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[2].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[2].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[3].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[3].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[4].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[4].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[5].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[5].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[6].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[6].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[7].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[7].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[8].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[8].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[9].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[9].bit_is_0.fdre_comp\ : label is "TRUE";
begin
  o(18 downto 0) <= \^o\(18 downto 0);
\fd_prim_array[0].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[0].bit_is_0.fdre_comp_0\,
      D => i(0),
      Q => \^o\(0),
      R => '0'
    );
\fd_prim_array[0].bit_is_0.fdre_comp_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \^o\(0),
      I1 => delay2_q_net_x0,
      I2 => register4_q_net,
      I3 => register10_q_net,
      O => ce
    );
\fd_prim_array[10].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[0].bit_is_0.fdre_comp_0\,
      D => i(10),
      Q => \^o\(10),
      R => '0'
    );
\fd_prim_array[11].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[0].bit_is_0.fdre_comp_0\,
      D => i(11),
      Q => \^o\(11),
      R => '0'
    );
\fd_prim_array[12].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[0].bit_is_0.fdre_comp_0\,
      D => i(12),
      Q => \^o\(12),
      R => '0'
    );
\fd_prim_array[13].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[0].bit_is_0.fdre_comp_0\,
      D => i(13),
      Q => \^o\(13),
      R => '0'
    );
\fd_prim_array[14].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[0].bit_is_0.fdre_comp_0\,
      D => i(14),
      Q => \^o\(14),
      R => '0'
    );
\fd_prim_array[15].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[0].bit_is_0.fdre_comp_0\,
      D => i(15),
      Q => \^o\(15),
      R => '0'
    );
\fd_prim_array[16].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[0].bit_is_0.fdre_comp_0\,
      D => i(16),
      Q => \^o\(16),
      R => '0'
    );
\fd_prim_array[17].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[0].bit_is_0.fdre_comp_0\,
      D => i(17),
      Q => \^o\(17),
      R => '0'
    );
\fd_prim_array[18].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[0].bit_is_0.fdre_comp_0\,
      D => i(18),
      Q => \^o\(18),
      R => '0'
    );
\fd_prim_array[1].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[0].bit_is_0.fdre_comp_0\,
      D => i(1),
      Q => \^o\(1),
      R => '0'
    );
\fd_prim_array[2].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[0].bit_is_0.fdre_comp_0\,
      D => i(2),
      Q => \^o\(2),
      R => '0'
    );
\fd_prim_array[3].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[0].bit_is_0.fdre_comp_0\,
      D => i(3),
      Q => \^o\(3),
      R => '0'
    );
\fd_prim_array[4].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[0].bit_is_0.fdre_comp_0\,
      D => i(4),
      Q => \^o\(4),
      R => '0'
    );
\fd_prim_array[5].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[0].bit_is_0.fdre_comp_0\,
      D => i(5),
      Q => \^o\(5),
      R => '0'
    );
\fd_prim_array[6].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[0].bit_is_0.fdre_comp_0\,
      D => i(6),
      Q => \^o\(6),
      R => '0'
    );
\fd_prim_array[7].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[0].bit_is_0.fdre_comp_0\,
      D => i(7),
      Q => \^o\(7),
      R => '0'
    );
\fd_prim_array[8].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[0].bit_is_0.fdre_comp_0\,
      D => i(8),
      Q => \^o\(8),
      R => '0'
    );
\fd_prim_array[9].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fd_prim_array[0].bit_is_0.fdre_comp_0\,
      D => i(9),
      Q => \^o\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized7\ is
  port (
    o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_lite_rvalid : in STD_LOGIC;
    m_axi_lite_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized7\ : entity is "single_reg_w_init";
end \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized7\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized7\ is
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \fd_prim_array[0].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[10].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[10].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[11].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[11].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[12].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[12].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[13].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[13].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[14].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[14].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[15].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[15].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[16].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[16].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[17].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[17].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[18].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[18].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[19].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[19].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[1].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[1].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[20].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[20].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[21].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[21].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[22].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[22].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[23].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[23].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[24].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[24].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[25].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[25].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[26].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[26].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[27].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[27].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[28].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[28].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[29].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[29].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[2].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[2].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[30].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[30].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[31].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[31].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[3].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[3].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[4].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[4].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[5].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[5].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[6].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[6].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[7].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[7].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[8].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[8].bit_is_0.fdre_comp\ : label is "TRUE";
  attribute fpga_dont_touch of \fd_prim_array[9].bit_is_0.fdre_comp\ : label is "true";
  attribute syn_black_box of \fd_prim_array[9].bit_is_0.fdre_comp\ : label is "TRUE";
begin
\fd_prim_array[0].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(0),
      Q => o(0),
      R => '0'
    );
\fd_prim_array[10].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(10),
      Q => o(10),
      R => '0'
    );
\fd_prim_array[11].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(11),
      Q => o(11),
      R => '0'
    );
\fd_prim_array[12].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(12),
      Q => o(12),
      R => '0'
    );
\fd_prim_array[13].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(13),
      Q => o(13),
      R => '0'
    );
\fd_prim_array[14].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(14),
      Q => o(14),
      R => '0'
    );
\fd_prim_array[15].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(15),
      Q => o(15),
      R => '0'
    );
\fd_prim_array[16].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(16),
      Q => o(16),
      R => '0'
    );
\fd_prim_array[17].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(17),
      Q => o(17),
      R => '0'
    );
\fd_prim_array[18].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(18),
      Q => o(18),
      R => '0'
    );
\fd_prim_array[19].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(19),
      Q => o(19),
      R => '0'
    );
\fd_prim_array[1].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(1),
      Q => o(1),
      R => '0'
    );
\fd_prim_array[20].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(20),
      Q => o(20),
      R => '0'
    );
\fd_prim_array[21].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(21),
      Q => o(21),
      R => '0'
    );
\fd_prim_array[22].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(22),
      Q => o(22),
      R => '0'
    );
\fd_prim_array[23].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(23),
      Q => o(23),
      R => '0'
    );
\fd_prim_array[24].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(24),
      Q => o(24),
      R => '0'
    );
\fd_prim_array[25].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(25),
      Q => o(25),
      R => '0'
    );
\fd_prim_array[26].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(26),
      Q => o(26),
      R => '0'
    );
\fd_prim_array[27].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(27),
      Q => o(27),
      R => '0'
    );
\fd_prim_array[28].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(28),
      Q => o(28),
      R => '0'
    );
\fd_prim_array[29].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(29),
      Q => o(29),
      R => '0'
    );
\fd_prim_array[2].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(2),
      Q => o(2),
      R => '0'
    );
\fd_prim_array[30].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(30),
      Q => o(30),
      R => '0'
    );
\fd_prim_array[31].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(31),
      Q => o(31),
      R => '0'
    );
\fd_prim_array[3].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(3),
      Q => o(3),
      R => '0'
    );
\fd_prim_array[4].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(4),
      Q => o(4),
      R => '0'
    );
\fd_prim_array[5].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(5),
      Q => o(5),
      R => '0'
    );
\fd_prim_array[6].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(6),
      Q => o(6),
      R => '0'
    );
\fd_prim_array[7].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(7),
      Q => o(7),
      R => '0'
    );
\fd_prim_array[8].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(8),
      Q => o(8),
      R => '0'
    );
\fd_prim_array[9].bit_is_0.fdre_comp\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axi_lite_rvalid,
      D => m_axi_lite_rdata(9),
      Q => o(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_srl17e is
  port (
    m_axi_lite_arready_0 : out STD_LOGIC;
    m_axi_lite_arready : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_srl17e : entity is "srl17e";
end design_1_gpmc_axi_bridge_0_1_srl17e;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_srl17e is
  signal delay2_q_net_x3 : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \reg_array[0].fde_used.u2\ : label is "FDE";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \reg_array[0].fde_used.u2\ : label is "GND:R";
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \reg_array[0].fde_used.u2\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \reg_array[0].fde_used.u2\ : label is "TRUE";
begin
\fd_prim_array[0].bit_is_0.fdre_comp_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_lite_arready,
      I1 => delay2_q_net_x3,
      O => m_axi_lite_arready_0
    );
\reg_array[0].fde_used.u2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => m_axi_lite_arready,
      Q => delay2_q_net_x3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_srl17e_47 is
  port (
    \reg_array[0].fde_used.u2_0\ : out STD_LOGIC;
    logical14_y_net : in STD_LOGIC;
    clk : in STD_LOGIC;
    register4_q_net : in STD_LOGIC;
    register11_q_net : in STD_LOGIC;
    o : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_srl17e_47 : entity is "srl17e";
end design_1_gpmc_axi_bridge_0_1_srl17e_47;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_srl17e_47 is
  signal delay2_q_net_x2 : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \reg_array[0].fde_used.u2\ : label is "FDE";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \reg_array[0].fde_used.u2\ : label is "GND:R";
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \reg_array[0].fde_used.u2\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \reg_array[0].fde_used.u2\ : label is "TRUE";
begin
\fd_prim_array[0].bit_is_0.fdre_comp_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => delay2_q_net_x2,
      I1 => register4_q_net,
      I2 => register11_q_net,
      I3 => o(0),
      O => \reg_array[0].fde_used.u2_0\
    );
\reg_array[0].fde_used.u2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => logical14_y_net,
      Q => delay2_q_net_x2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_srl17e_50 is
  port (
    m_axi_lite_bready : out STD_LOGIC;
    m_axi_lite_bvalid : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_srl17e_50 : entity is "srl17e";
end design_1_gpmc_axi_bridge_0_1_srl17e_50;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_srl17e_50 is
  signal delay2_q_net_x1 : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \reg_array[0].fde_used.u2\ : label is "FDE";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \reg_array[0].fde_used.u2\ : label is "GND:R";
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \reg_array[0].fde_used.u2\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \reg_array[0].fde_used.u2\ : label is "TRUE";
begin
m_axi_lite_bready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_lite_bvalid,
      I1 => delay2_q_net_x1,
      O => m_axi_lite_bready
    );
\reg_array[0].fde_used.u2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => m_axi_lite_bvalid,
      Q => delay2_q_net_x1,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_srl17e_53 is
  port (
    delay2_q_net_x0 : out STD_LOGIC;
    \reg_array[0].fde_used.u2_0\ : out STD_LOGIC;
    logical12_y_net : in STD_LOGIC;
    clk : in STD_LOGIC;
    register4_q_net : in STD_LOGIC;
    register10_q_net : in STD_LOGIC;
    o : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_srl17e_53 : entity is "srl17e";
end design_1_gpmc_axi_bridge_0_1_srl17e_53;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_srl17e_53 is
  signal \^delay2_q_net_x0\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \reg_array[0].fde_used.u2\ : label is "FDE";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \reg_array[0].fde_used.u2\ : label is "GND:R";
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \reg_array[0].fde_used.u2\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \reg_array[0].fde_used.u2\ : label is "TRUE";
begin
  delay2_q_net_x0 <= \^delay2_q_net_x0\;
\fd_prim_array[15].bit_is_0.fdre_comp_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^delay2_q_net_x0\,
      I1 => register4_q_net,
      I2 => register10_q_net,
      I3 => o(0),
      O => \reg_array[0].fde_used.u2_0\
    );
\reg_array[0].fde_used.u2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => logical12_y_net,
      Q => \^delay2_q_net_x0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_srl17e_56 is
  port (
    \reg_array[0].fde_used.u2_0\ : out STD_LOGIC;
    logical13_y_net : in STD_LOGIC;
    clk : in STD_LOGIC;
    register4_q_net : in STD_LOGIC;
    register2_q_net : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_srl17e_56 : entity is "srl17e";
end design_1_gpmc_axi_bridge_0_1_srl17e_56;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_srl17e_56 is
  signal delay2_q_net : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \reg_array[0].fde_used.u2\ : label is "FDE";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \reg_array[0].fde_used.u2\ : label is "GND:R";
  attribute fpga_dont_touch : string;
  attribute fpga_dont_touch of \reg_array[0].fde_used.u2\ : label is "true";
  attribute syn_black_box : string;
  attribute syn_black_box of \reg_array[0].fde_used.u2\ : label is "TRUE";
begin
\fd_prim_array[17].bit_is_0.fdre_comp_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => delay2_q_net,
      I1 => register4_q_net,
      I2 => register2_q_net,
      O => \reg_array[0].fde_used.u2_0\
    );
\reg_array[0].fde_used.u2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => logical13_y_net,
      Q => delay2_q_net,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_sysgen_mux_2dfa32ddae is
  port (
    read_data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    latched_addr_out : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_sysgen_mux_2dfa32ddae : entity is "sysgen_mux_2dfa32ddae";
end design_1_gpmc_axi_bridge_0_1_sysgen_mux_2dfa32ddae;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_sysgen_mux_2dfa32ddae is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \read_data_out[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \read_data_out[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_data_out[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_data_out[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \read_data_out[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \read_data_out[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \read_data_out[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \read_data_out[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \read_data_out[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \read_data_out[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \read_data_out[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \read_data_out[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \read_data_out[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \read_data_out[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \read_data_out[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_data_out[9]_INST_0\ : label is "soft_lutpair4";
begin
\read_data_out[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => o(16),
      I1 => latched_addr_out(0),
      I2 => o(0),
      O => read_data_out(0)
    );
\read_data_out[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => o(26),
      I1 => latched_addr_out(0),
      I2 => o(10),
      O => read_data_out(10)
    );
\read_data_out[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => o(27),
      I1 => latched_addr_out(0),
      I2 => o(11),
      O => read_data_out(11)
    );
\read_data_out[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => o(28),
      I1 => latched_addr_out(0),
      I2 => o(12),
      O => read_data_out(12)
    );
\read_data_out[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => o(29),
      I1 => latched_addr_out(0),
      I2 => o(13),
      O => read_data_out(13)
    );
\read_data_out[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => o(30),
      I1 => latched_addr_out(0),
      I2 => o(14),
      O => read_data_out(14)
    );
\read_data_out[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => o(31),
      I1 => latched_addr_out(0),
      I2 => o(15),
      O => read_data_out(15)
    );
\read_data_out[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => o(17),
      I1 => latched_addr_out(0),
      I2 => o(1),
      O => read_data_out(1)
    );
\read_data_out[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => o(18),
      I1 => latched_addr_out(0),
      I2 => o(2),
      O => read_data_out(2)
    );
\read_data_out[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => o(19),
      I1 => latched_addr_out(0),
      I2 => o(3),
      O => read_data_out(3)
    );
\read_data_out[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => o(20),
      I1 => latched_addr_out(0),
      I2 => o(4),
      O => read_data_out(4)
    );
\read_data_out[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => o(21),
      I1 => latched_addr_out(0),
      I2 => o(5),
      O => read_data_out(5)
    );
\read_data_out[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => o(22),
      I1 => latched_addr_out(0),
      I2 => o(6),
      O => read_data_out(6)
    );
\read_data_out[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => o(23),
      I1 => latched_addr_out(0),
      I2 => o(7),
      O => read_data_out(7)
    );
\read_data_out[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => o(24),
      I1 => latched_addr_out(0),
      I2 => o(8),
      O => read_data_out(8)
    );
\read_data_out[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => o(25),
      I1 => latched_addr_out(0),
      I2 => o(9),
      O => read_data_out(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_synth_reg is
  port (
    m_axi_lite_arready_0 : out STD_LOGIC;
    m_axi_lite_arready : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_synth_reg : entity is "synth_reg";
end design_1_gpmc_axi_bridge_0_1_synth_reg;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_synth_reg is
begin
\partial_one.last_srl17e\: entity work.design_1_gpmc_axi_bridge_0_1_srl17e
     port map (
      clk => clk,
      m_axi_lite_arready => m_axi_lite_arready,
      m_axi_lite_arready_0 => m_axi_lite_arready_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_synth_reg_46 is
  port (
    \reg_array[0].fde_used.u2\ : out STD_LOGIC;
    logical14_y_net : in STD_LOGIC;
    clk : in STD_LOGIC;
    register4_q_net : in STD_LOGIC;
    register11_q_net : in STD_LOGIC;
    o : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_synth_reg_46 : entity is "synth_reg";
end design_1_gpmc_axi_bridge_0_1_synth_reg_46;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_synth_reg_46 is
begin
\partial_one.last_srl17e\: entity work.design_1_gpmc_axi_bridge_0_1_srl17e_47
     port map (
      clk => clk,
      logical14_y_net => logical14_y_net,
      o(0) => o(0),
      \reg_array[0].fde_used.u2_0\ => \reg_array[0].fde_used.u2\,
      register11_q_net => register11_q_net,
      register4_q_net => register4_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_synth_reg_49 is
  port (
    m_axi_lite_bready : out STD_LOGIC;
    m_axi_lite_bvalid : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_synth_reg_49 : entity is "synth_reg";
end design_1_gpmc_axi_bridge_0_1_synth_reg_49;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_synth_reg_49 is
begin
\partial_one.last_srl17e\: entity work.design_1_gpmc_axi_bridge_0_1_srl17e_50
     port map (
      clk => clk,
      m_axi_lite_bready => m_axi_lite_bready,
      m_axi_lite_bvalid => m_axi_lite_bvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_synth_reg_52 is
  port (
    delay2_q_net_x0 : out STD_LOGIC;
    \reg_array[0].fde_used.u2\ : out STD_LOGIC;
    logical12_y_net : in STD_LOGIC;
    clk : in STD_LOGIC;
    register4_q_net : in STD_LOGIC;
    register10_q_net : in STD_LOGIC;
    o : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_synth_reg_52 : entity is "synth_reg";
end design_1_gpmc_axi_bridge_0_1_synth_reg_52;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_synth_reg_52 is
begin
\partial_one.last_srl17e\: entity work.design_1_gpmc_axi_bridge_0_1_srl17e_53
     port map (
      clk => clk,
      delay2_q_net_x0 => delay2_q_net_x0,
      logical12_y_net => logical12_y_net,
      o(0) => o(0),
      \reg_array[0].fde_used.u2_0\ => \reg_array[0].fde_used.u2\,
      register10_q_net => register10_q_net,
      register4_q_net => register4_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_synth_reg_55 is
  port (
    \reg_array[0].fde_used.u2\ : out STD_LOGIC;
    logical13_y_net : in STD_LOGIC;
    clk : in STD_LOGIC;
    register4_q_net : in STD_LOGIC;
    register2_q_net : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_synth_reg_55 : entity is "synth_reg";
end design_1_gpmc_axi_bridge_0_1_synth_reg_55;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_synth_reg_55 is
begin
\partial_one.last_srl17e\: entity work.design_1_gpmc_axi_bridge_0_1_srl17e_56
     port map (
      clk => clk,
      logical13_y_net => logical13_y_net,
      \reg_array[0].fde_used.u2_0\ => \reg_array[0].fde_used.u2\,
      register2_q_net => register2_q_net,
      register4_q_net => register4_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_synth_reg_w_init is
  port (
    m_axi_lite_rready : out STD_LOGIC;
    \fd_prim_array[0].bit_is_0.fdre_comp\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    m_axi_lite_rvalid : in STD_LOGIC;
    m_axi_lite_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init : entity is "synth_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_synth_reg_w_init;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init is
begin
\latency_gt_0.fd_array[1].reg_comp\: entity work.design_1_gpmc_axi_bridge_0_1_single_reg_w_init
     port map (
      clk => clk,
      \fd_prim_array[0].bit_is_0.fdre_comp_0\ => \fd_prim_array[0].bit_is_0.fdre_comp\,
      m_axi_lite_aresetn => m_axi_lite_aresetn,
      m_axi_lite_rready => m_axi_lite_rready,
      m_axi_lite_rvalid => m_axi_lite_rvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_15 is
  port (
    m_axi_lite_arvalid : out STD_LOGIC;
    \fd_prim_array[0].bit_is_0.fdre_comp\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    m_axi_lite_arready : in STD_LOGIC;
    m_axi_lite_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_15 : entity is "synth_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_15;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_15 is
begin
\latency_gt_0.fd_array[1].reg_comp\: entity work.design_1_gpmc_axi_bridge_0_1_single_reg_w_init_16
     port map (
      clk => clk,
      \fd_prim_array[0].bit_is_0.fdre_comp_0\ => \fd_prim_array[0].bit_is_0.fdre_comp\,
      m_axi_lite_aresetn => m_axi_lite_aresetn,
      m_axi_lite_arready => m_axi_lite_arready,
      m_axi_lite_arvalid => m_axi_lite_arvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_18 is
  port (
    m_axi_lite_awvalid : out STD_LOGIC;
    ce : in STD_LOGIC;
    clk : in STD_LOGIC;
    m_axi_lite_awready : in STD_LOGIC;
    m_axi_lite_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_18 : entity is "synth_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_18;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_18 is
begin
\latency_gt_0.fd_array[1].reg_comp\: entity work.design_1_gpmc_axi_bridge_0_1_single_reg_w_init_19
     port map (
      ce => ce,
      clk => clk,
      m_axi_lite_aresetn => m_axi_lite_aresetn,
      m_axi_lite_awready => m_axi_lite_awready,
      m_axi_lite_awvalid => m_axi_lite_awvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_21 is
  port (
    m_axi_lite_wvalid : out STD_LOGIC;
    ce : in STD_LOGIC;
    clk : in STD_LOGIC;
    m_axi_lite_wready : in STD_LOGIC;
    m_axi_lite_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_21 : entity is "synth_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_21;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_21 is
begin
\latency_gt_0.fd_array[1].reg_comp\: entity work.design_1_gpmc_axi_bridge_0_1_single_reg_w_init_22
     port map (
      ce => ce,
      clk => clk,
      m_axi_lite_aresetn => m_axi_lite_aresetn,
      m_axi_lite_wready => m_axi_lite_wready,
      m_axi_lite_wvalid => m_axi_lite_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_23 is
  port (
    register9_q_net : out STD_LOGIC;
    clk : in STD_LOGIC;
    wen : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_23 : entity is "synth_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_23;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_23 is
begin
\latency_gt_0.fd_array[1].reg_comp\: entity work.design_1_gpmc_axi_bridge_0_1_single_reg_w_init_24
     port map (
      clk => clk,
      register9_q_net => register9_q_net,
      wen => wen
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_31 is
  port (
    \fd_prim_array[0].bit_is_0.fdre_comp\ : out STD_LOGIC;
    logical12_y_net : out STD_LOGIC;
    logical13_y_net : out STD_LOGIC;
    logical14_y_net : out STD_LOGIC;
    register3_q_net : in STD_LOGIC;
    clk : in STD_LOGIC;
    register10_q_net : in STD_LOGIC;
    register2_q_net : in STD_LOGIC;
    register11_q_net : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_31 : entity is "synth_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_31;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_31 is
begin
\latency_gt_0.fd_array[1].reg_comp\: entity work.design_1_gpmc_axi_bridge_0_1_single_reg_w_init_32
     port map (
      clk => clk,
      \fd_prim_array[0].bit_is_0.fdre_comp_0\ => \fd_prim_array[0].bit_is_0.fdre_comp\,
      logical12_y_net => logical12_y_net,
      logical13_y_net => logical13_y_net,
      logical14_y_net => logical14_y_net,
      register10_q_net => register10_q_net,
      register11_q_net => register11_q_net,
      register2_q_net => register2_q_net,
      register3_q_net => register3_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_33 is
  port (
    register3_q_net : out STD_LOGIC;
    clk : in STD_LOGIC;
    csn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_33 : entity is "synth_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_33;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_33 is
begin
\latency_gt_0.fd_array[1].reg_comp\: entity work.design_1_gpmc_axi_bridge_0_1_single_reg_w_init_34
     port map (
      clk => clk,
      csn => csn,
      register3_q_net => register3_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_35 is
  port (
    register2_q_net : out STD_LOGIC;
    register1_q_net : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_35 : entity is "synth_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_35;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_35 is
begin
\latency_gt_0.fd_array[1].reg_comp\: entity work.design_1_gpmc_axi_bridge_0_1_single_reg_w_init_36
     port map (
      clk => clk,
      register1_q_net => register1_q_net,
      register2_q_net => register2_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_37 is
  port (
    register12_q_net : out STD_LOGIC;
    clk : in STD_LOGIC;
    oen : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_37 : entity is "synth_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_37;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_37 is
begin
\latency_gt_0.fd_array[1].reg_comp\: entity work.design_1_gpmc_axi_bridge_0_1_single_reg_w_init_38
     port map (
      clk => clk,
      oen => oen,
      register12_q_net => register12_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_39 is
  port (
    register11_q_net : out STD_LOGIC;
    register12_q_net : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_39 : entity is "synth_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_39;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_39 is
begin
\latency_gt_0.fd_array[1].reg_comp\: entity work.design_1_gpmc_axi_bridge_0_1_single_reg_w_init_40
     port map (
      clk => clk,
      register11_q_net => register11_q_net,
      register12_q_net => register12_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_41 is
  port (
    register10_q_net : out STD_LOGIC;
    register9_q_net : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_41 : entity is "synth_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_41;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_41 is
begin
\latency_gt_0.fd_array[1].reg_comp\: entity work.design_1_gpmc_axi_bridge_0_1_single_reg_w_init_42
     port map (
      clk => clk,
      register10_q_net => register10_q_net,
      register9_q_net => register9_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_43 is
  port (
    register1_q_net : out STD_LOGIC;
    clk : in STD_LOGIC;
    advn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_43 : entity is "synth_reg_w_init";
end design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_43;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_43 is
begin
\latency_gt_0.fd_array[1].reg_comp\: entity work.design_1_gpmc_axi_bridge_0_1_single_reg_w_init_44
     port map (
      advn => advn,
      clk => clk,
      register1_q_net => register1_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1\ is
  port (
    m_axi_lite_wdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ce : in STD_LOGIC;
    i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1\ : entity is "synth_reg_w_init";
end \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1\ is
begin
\latency_gt_0.fd_array[1].reg_comp\: entity work.\design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1\
     port map (
      ce => ce,
      clk => clk,
      i(15 downto 0) => i(15 downto 0),
      m_axi_lite_wdata(15 downto 0) => m_axi_lite_wdata(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1_11\ is
  port (
    m_axi_lite_wdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \fd_prim_array[15].bit_is_0.fdre_comp\ : in STD_LOGIC;
    i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1_11\ : entity is "synth_reg_w_init";
end \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1_11\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1_11\ is
begin
\latency_gt_0.fd_array[1].reg_comp\: entity work.\design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1_12\
     port map (
      clk => clk,
      \fd_prim_array[15].bit_is_0.fdre_comp_0\ => \fd_prim_array[15].bit_is_0.fdre_comp\,
      i(15 downto 0) => i(15 downto 0),
      m_axi_lite_wdata(15 downto 0) => m_axi_lite_wdata(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1_27\ is
  port (
    o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1_27\ : entity is "synth_reg_w_init";
end \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1_27\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1_27\ is
begin
\latency_gt_0.fd_array[1].reg_comp\: entity work.\design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1_28\
     port map (
      clk => clk,
      i(15 downto 0) => i(15 downto 0),
      o(15 downto 0) => o(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1_29\ is
  port (
    o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    a_d : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1_29\ : entity is "synth_reg_w_init";
end \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1_29\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1_29\ is
begin
\latency_gt_0.fd_array[1].reg_comp\: entity work.\design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1_30\
     port map (
      a_d(15 downto 0) => a_d(15 downto 0),
      clk => clk,
      o(15 downto 0) => o(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized3\ is
  port (
    o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized3\ : entity is "synth_reg_w_init";
end \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized3\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized3\ is
begin
\latency_gt_0.fd_array[1].reg_comp\: entity work.\design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized3\
     port map (
      clk => clk,
      i(2 downto 0) => i(2 downto 0),
      o(2 downto 0) => o(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized3_25\ is
  port (
    o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    a : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized3_25\ : entity is "synth_reg_w_init";
end \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized3_25\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized3_25\ is
begin
\latency_gt_0.fd_array[1].reg_comp\: entity work.\design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized3_26\
     port map (
      a(2 downto 0) => a(2 downto 0),
      clk => clk,
      o(2 downto 0) => o(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized5\ is
  port (
    ce : out STD_LOGIC;
    o : out STD_LOGIC_VECTOR ( 18 downto 0 );
    delay2_q_net_x0 : in STD_LOGIC;
    register4_q_net : in STD_LOGIC;
    register10_q_net : in STD_LOGIC;
    \fd_prim_array[0].bit_is_0.fdre_comp\ : in STD_LOGIC;
    i : in STD_LOGIC_VECTOR ( 18 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized5\ : entity is "synth_reg_w_init";
end \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized5\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized5\ is
begin
\latency_gt_0.fd_array[1].reg_comp\: entity work.\design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized5\
     port map (
      ce => ce,
      clk => clk,
      delay2_q_net_x0 => delay2_q_net_x0,
      \fd_prim_array[0].bit_is_0.fdre_comp_0\ => \fd_prim_array[0].bit_is_0.fdre_comp\,
      i(18 downto 0) => i(18 downto 0),
      o(18 downto 0) => o(18 downto 0),
      register10_q_net => register10_q_net,
      register4_q_net => register4_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized7\ is
  port (
    o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_lite_rvalid : in STD_LOGIC;
    m_axi_lite_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized7\ : entity is "synth_reg_w_init";
end \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized7\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized7\ is
begin
\latency_gt_0.fd_array[1].reg_comp\: entity work.\design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized7\
     port map (
      clk => clk,
      m_axi_lite_rdata(31 downto 0) => m_axi_lite_rdata(31 downto 0),
      m_axi_lite_rvalid => m_axi_lite_rvalid,
      o(31 downto 0) => o(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge is
  port (
    m_axi_lite_arready_0 : out STD_LOGIC;
    m_axi_lite_arready : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge : entity is "xldelay_gpmc_axi_bridge";
end design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge is
begin
\srl_delay.synth_reg_srl_inst\: entity work.design_1_gpmc_axi_bridge_0_1_synth_reg
     port map (
      clk => clk,
      m_axi_lite_arready => m_axi_lite_arready,
      m_axi_lite_arready_0 => m_axi_lite_arready_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_45 is
  port (
    \reg_array[0].fde_used.u2\ : out STD_LOGIC;
    logical14_y_net : in STD_LOGIC;
    clk : in STD_LOGIC;
    register4_q_net : in STD_LOGIC;
    register11_q_net : in STD_LOGIC;
    o : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_45 : entity is "xldelay_gpmc_axi_bridge";
end design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_45;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_45 is
begin
\srl_delay.synth_reg_srl_inst\: entity work.design_1_gpmc_axi_bridge_0_1_synth_reg_46
     port map (
      clk => clk,
      logical14_y_net => logical14_y_net,
      o(0) => o(0),
      \reg_array[0].fde_used.u2\ => \reg_array[0].fde_used.u2\,
      register11_q_net => register11_q_net,
      register4_q_net => register4_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_48 is
  port (
    m_axi_lite_bready : out STD_LOGIC;
    m_axi_lite_bvalid : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_48 : entity is "xldelay_gpmc_axi_bridge";
end design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_48;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_48 is
begin
\srl_delay.synth_reg_srl_inst\: entity work.design_1_gpmc_axi_bridge_0_1_synth_reg_49
     port map (
      clk => clk,
      m_axi_lite_bready => m_axi_lite_bready,
      m_axi_lite_bvalid => m_axi_lite_bvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_51 is
  port (
    delay2_q_net_x0 : out STD_LOGIC;
    \reg_array[0].fde_used.u2\ : out STD_LOGIC;
    logical12_y_net : in STD_LOGIC;
    clk : in STD_LOGIC;
    register4_q_net : in STD_LOGIC;
    register10_q_net : in STD_LOGIC;
    o : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_51 : entity is "xldelay_gpmc_axi_bridge";
end design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_51;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_51 is
begin
\srl_delay.synth_reg_srl_inst\: entity work.design_1_gpmc_axi_bridge_0_1_synth_reg_52
     port map (
      clk => clk,
      delay2_q_net_x0 => delay2_q_net_x0,
      logical12_y_net => logical12_y_net,
      o(0) => o(0),
      \reg_array[0].fde_used.u2\ => \reg_array[0].fde_used.u2\,
      register10_q_net => register10_q_net,
      register4_q_net => register4_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_54 is
  port (
    \reg_array[0].fde_used.u2\ : out STD_LOGIC;
    logical13_y_net : in STD_LOGIC;
    clk : in STD_LOGIC;
    register4_q_net : in STD_LOGIC;
    register2_q_net : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_54 : entity is "xldelay_gpmc_axi_bridge";
end design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_54;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_54 is
begin
\srl_delay.synth_reg_srl_inst\: entity work.design_1_gpmc_axi_bridge_0_1_synth_reg_55
     port map (
      clk => clk,
      logical13_y_net => logical13_y_net,
      \reg_array[0].fde_used.u2\ => \reg_array[0].fde_used.u2\,
      register2_q_net => register2_q_net,
      register4_q_net => register4_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge is
  port (
    register1_q_net : out STD_LOGIC;
    clk : in STD_LOGIC;
    advn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge : entity is "xlregister_gpmc_axi_bridge";
end design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge is
begin
synth_reg_inst: entity work.design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_43
     port map (
      advn => advn,
      clk => clk,
      register1_q_net => register1_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_0 is
  port (
    register10_q_net : out STD_LOGIC;
    register9_q_net : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_0 : entity is "xlregister_gpmc_axi_bridge";
end design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_0;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_0 is
begin
synth_reg_inst: entity work.design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_41
     port map (
      clk => clk,
      register10_q_net => register10_q_net,
      register9_q_net => register9_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_1 is
  port (
    register11_q_net : out STD_LOGIC;
    register12_q_net : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_1 : entity is "xlregister_gpmc_axi_bridge";
end design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_1;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_1 is
begin
synth_reg_inst: entity work.design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_39
     port map (
      clk => clk,
      register11_q_net => register11_q_net,
      register12_q_net => register12_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_13 is
  port (
    m_axi_lite_rready : out STD_LOGIC;
    \fd_prim_array[0].bit_is_0.fdre_comp\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    m_axi_lite_rvalid : in STD_LOGIC;
    m_axi_lite_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_13 : entity is "xlregister_gpmc_axi_bridge";
end design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_13;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_13 is
begin
synth_reg_inst: entity work.design_1_gpmc_axi_bridge_0_1_synth_reg_w_init
     port map (
      clk => clk,
      \fd_prim_array[0].bit_is_0.fdre_comp\ => \fd_prim_array[0].bit_is_0.fdre_comp\,
      m_axi_lite_aresetn => m_axi_lite_aresetn,
      m_axi_lite_rready => m_axi_lite_rready,
      m_axi_lite_rvalid => m_axi_lite_rvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_14 is
  port (
    m_axi_lite_arvalid : out STD_LOGIC;
    \fd_prim_array[0].bit_is_0.fdre_comp\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    m_axi_lite_arready : in STD_LOGIC;
    m_axi_lite_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_14 : entity is "xlregister_gpmc_axi_bridge";
end design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_14;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_14 is
begin
synth_reg_inst: entity work.design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_15
     port map (
      clk => clk,
      \fd_prim_array[0].bit_is_0.fdre_comp\ => \fd_prim_array[0].bit_is_0.fdre_comp\,
      m_axi_lite_aresetn => m_axi_lite_aresetn,
      m_axi_lite_arready => m_axi_lite_arready,
      m_axi_lite_arvalid => m_axi_lite_arvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_17 is
  port (
    m_axi_lite_awvalid : out STD_LOGIC;
    ce : in STD_LOGIC;
    clk : in STD_LOGIC;
    m_axi_lite_awready : in STD_LOGIC;
    m_axi_lite_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_17 : entity is "xlregister_gpmc_axi_bridge";
end design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_17;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_17 is
begin
synth_reg_inst: entity work.design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_18
     port map (
      ce => ce,
      clk => clk,
      m_axi_lite_aresetn => m_axi_lite_aresetn,
      m_axi_lite_awready => m_axi_lite_awready,
      m_axi_lite_awvalid => m_axi_lite_awvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_2 is
  port (
    register12_q_net : out STD_LOGIC;
    clk : in STD_LOGIC;
    oen : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_2 : entity is "xlregister_gpmc_axi_bridge";
end design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_2;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_2 is
begin
synth_reg_inst: entity work.design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_37
     port map (
      clk => clk,
      oen => oen,
      register12_q_net => register12_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_20 is
  port (
    m_axi_lite_wvalid : out STD_LOGIC;
    ce : in STD_LOGIC;
    clk : in STD_LOGIC;
    m_axi_lite_wready : in STD_LOGIC;
    m_axi_lite_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_20 : entity is "xlregister_gpmc_axi_bridge";
end design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_20;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_20 is
begin
synth_reg_inst: entity work.design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_21
     port map (
      ce => ce,
      clk => clk,
      m_axi_lite_aresetn => m_axi_lite_aresetn,
      m_axi_lite_wready => m_axi_lite_wready,
      m_axi_lite_wvalid => m_axi_lite_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_3 is
  port (
    register2_q_net : out STD_LOGIC;
    register1_q_net : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_3 : entity is "xlregister_gpmc_axi_bridge";
end design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_3;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_3 is
begin
synth_reg_inst: entity work.design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_35
     port map (
      clk => clk,
      register1_q_net => register1_q_net,
      register2_q_net => register2_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_4 is
  port (
    register3_q_net : out STD_LOGIC;
    clk : in STD_LOGIC;
    csn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_4 : entity is "xlregister_gpmc_axi_bridge";
end design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_4;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_4 is
begin
synth_reg_inst: entity work.design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_33
     port map (
      clk => clk,
      csn => csn,
      register3_q_net => register3_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_5 is
  port (
    register4_q_net : out STD_LOGIC;
    logical12_y_net : out STD_LOGIC;
    logical13_y_net : out STD_LOGIC;
    logical14_y_net : out STD_LOGIC;
    register3_q_net : in STD_LOGIC;
    clk : in STD_LOGIC;
    register10_q_net : in STD_LOGIC;
    register2_q_net : in STD_LOGIC;
    register11_q_net : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_5 : entity is "xlregister_gpmc_axi_bridge";
end design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_5;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_5 is
begin
synth_reg_inst: entity work.design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_31
     port map (
      clk => clk,
      \fd_prim_array[0].bit_is_0.fdre_comp\ => register4_q_net,
      logical12_y_net => logical12_y_net,
      logical13_y_net => logical13_y_net,
      logical14_y_net => logical14_y_net,
      register10_q_net => register10_q_net,
      register11_q_net => register11_q_net,
      register2_q_net => register2_q_net,
      register3_q_net => register3_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_8 is
  port (
    register9_q_net : out STD_LOGIC;
    clk : in STD_LOGIC;
    wen : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_8 : entity is "xlregister_gpmc_axi_bridge";
end design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_8;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_8 is
begin
synth_reg_inst: entity work.design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_23
     port map (
      clk => clk,
      register9_q_net => register9_q_net,
      wen => wen
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0\ is
  port (
    o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    a_d : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0\ : entity is "xlregister_gpmc_axi_bridge";
end \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0\ is
begin
synth_reg_inst: entity work.\design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1_29\
     port map (
      a_d(15 downto 0) => a_d(15 downto 0),
      clk => clk,
      o(15 downto 0) => o(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0_10\ is
  port (
    m_axi_lite_wdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ce : in STD_LOGIC;
    i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0_10\ : entity is "xlregister_gpmc_axi_bridge";
end \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0_10\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0_10\ is
begin
synth_reg_inst: entity work.\design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1\
     port map (
      ce => ce,
      clk => clk,
      i(15 downto 0) => i(15 downto 0),
      m_axi_lite_wdata(15 downto 0) => m_axi_lite_wdata(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0_6\ is
  port (
    o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0_6\ : entity is "xlregister_gpmc_axi_bridge";
end \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0_6\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0_6\ is
begin
synth_reg_inst: entity work.\design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1_27\
     port map (
      clk => clk,
      i(15 downto 0) => i(15 downto 0),
      o(15 downto 0) => o(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0_9\ is
  port (
    m_axi_lite_wdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \fd_prim_array[15].bit_is_0.fdre_comp\ : in STD_LOGIC;
    i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0_9\ : entity is "xlregister_gpmc_axi_bridge";
end \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0_9\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0_9\ is
begin
synth_reg_inst: entity work.\design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1_11\
     port map (
      clk => clk,
      \fd_prim_array[15].bit_is_0.fdre_comp\ => \fd_prim_array[15].bit_is_0.fdre_comp\,
      i(15 downto 0) => i(15 downto 0),
      m_axi_lite_wdata(15 downto 0) => m_axi_lite_wdata(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized1\ is
  port (
    o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    a : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized1\ : entity is "xlregister_gpmc_axi_bridge";
end \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized1\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized1\ is
begin
synth_reg_inst: entity work.\design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized3_25\
     port map (
      a(2 downto 0) => a(2 downto 0),
      clk => clk,
      o(2 downto 0) => o(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized1_7\ is
  port (
    o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized1_7\ : entity is "xlregister_gpmc_axi_bridge";
end \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized1_7\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized1_7\ is
begin
synth_reg_inst: entity work.\design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized3\
     port map (
      clk => clk,
      i(2 downto 0) => i(2 downto 0),
      o(2 downto 0) => o(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized2\ is
  port (
    ce : out STD_LOGIC;
    o : out STD_LOGIC_VECTOR ( 18 downto 0 );
    delay2_q_net_x0 : in STD_LOGIC;
    register4_q_net : in STD_LOGIC;
    register10_q_net : in STD_LOGIC;
    \fd_prim_array[0].bit_is_0.fdre_comp\ : in STD_LOGIC;
    i : in STD_LOGIC_VECTOR ( 18 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized2\ : entity is "xlregister_gpmc_axi_bridge";
end \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized2\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized2\ is
begin
synth_reg_inst: entity work.\design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized5\
     port map (
      ce => ce,
      clk => clk,
      delay2_q_net_x0 => delay2_q_net_x0,
      \fd_prim_array[0].bit_is_0.fdre_comp\ => \fd_prim_array[0].bit_is_0.fdre_comp\,
      i(18 downto 0) => i(18 downto 0),
      o(18 downto 0) => o(18 downto 0),
      register10_q_net => register10_q_net,
      register4_q_net => register4_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized3\ is
  port (
    o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_lite_rvalid : in STD_LOGIC;
    m_axi_lite_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized3\ : entity is "xlregister_gpmc_axi_bridge";
end \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized3\;

architecture STRUCTURE of \design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized3\ is
begin
synth_reg_inst: entity work.\design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized7\
     port map (
      clk => clk,
      m_axi_lite_rdata(31 downto 0) => m_axi_lite_rdata(31 downto 0),
      m_axi_lite_rvalid => m_axi_lite_rvalid,
      o(31 downto 0) => o(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_redge_det1_a880eba569 is
  port (
    delay2_q_net_x0 : out STD_LOGIC;
    \reg_array[0].fde_used.u2\ : out STD_LOGIC;
    logical12_y_net : in STD_LOGIC;
    clk : in STD_LOGIC;
    register4_q_net : in STD_LOGIC;
    register10_q_net : in STD_LOGIC;
    o : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_redge_det1_a880eba569 : entity is "redge_det1_a880eba569";
end design_1_gpmc_axi_bridge_0_1_redge_det1_a880eba569;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_redge_det1_a880eba569 is
begin
delay2: entity work.design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_51
     port map (
      clk => clk,
      delay2_q_net_x0 => delay2_q_net_x0,
      logical12_y_net => logical12_y_net,
      o(0) => o(0),
      \reg_array[0].fde_used.u2\ => \reg_array[0].fde_used.u2\,
      register10_q_net => register10_q_net,
      register4_q_net => register4_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_redge_det2_7d56bee8e0 is
  port (
    m_axi_lite_bready : out STD_LOGIC;
    m_axi_lite_bvalid : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_redge_det2_7d56bee8e0 : entity is "redge_det2_7d56bee8e0";
end design_1_gpmc_axi_bridge_0_1_redge_det2_7d56bee8e0;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_redge_det2_7d56bee8e0 is
begin
delay2: entity work.design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_48
     port map (
      clk => clk,
      m_axi_lite_bready => m_axi_lite_bready,
      m_axi_lite_bvalid => m_axi_lite_bvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_redge_det3_74cd140bb8 is
  port (
    \reg_array[0].fde_used.u2\ : out STD_LOGIC;
    logical14_y_net : in STD_LOGIC;
    clk : in STD_LOGIC;
    register4_q_net : in STD_LOGIC;
    register11_q_net : in STD_LOGIC;
    o : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_redge_det3_74cd140bb8 : entity is "redge_det3_74cd140bb8";
end design_1_gpmc_axi_bridge_0_1_redge_det3_74cd140bb8;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_redge_det3_74cd140bb8 is
begin
delay2: entity work.design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_45
     port map (
      clk => clk,
      logical14_y_net => logical14_y_net,
      o(0) => o(0),
      \reg_array[0].fde_used.u2\ => \reg_array[0].fde_used.u2\,
      register11_q_net => register11_q_net,
      register4_q_net => register4_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_redge_det4_cdc2ed7a05 is
  port (
    m_axi_lite_arready_0 : out STD_LOGIC;
    m_axi_lite_arready : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_redge_det4_cdc2ed7a05 : entity is "redge_det4_cdc2ed7a05";
end design_1_gpmc_axi_bridge_0_1_redge_det4_cdc2ed7a05;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_redge_det4_cdc2ed7a05 is
begin
delay2: entity work.design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge
     port map (
      clk => clk,
      m_axi_lite_arready => m_axi_lite_arready,
      m_axi_lite_arready_0 => m_axi_lite_arready_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_redge_det_f52227972b is
  port (
    \reg_array[0].fde_used.u2\ : out STD_LOGIC;
    logical13_y_net : in STD_LOGIC;
    clk : in STD_LOGIC;
    register4_q_net : in STD_LOGIC;
    register2_q_net : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_redge_det_f52227972b : entity is "redge_det_f52227972b";
end design_1_gpmc_axi_bridge_0_1_redge_det_f52227972b;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_redge_det_f52227972b is
begin
delay2: entity work.design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_54
     port map (
      clk => clk,
      logical13_y_net => logical13_y_net,
      \reg_array[0].fde_used.u2\ => \reg_array[0].fde_used.u2\,
      register2_q_net => register2_q_net,
      register4_q_net => register4_q_net
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_sr_flop1_171797e57a is
  port (
    m_axi_lite_awvalid : out STD_LOGIC;
    ce : in STD_LOGIC;
    clk : in STD_LOGIC;
    m_axi_lite_awready : in STD_LOGIC;
    m_axi_lite_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_sr_flop1_171797e57a : entity is "sr_flop1_171797e57a";
end design_1_gpmc_axi_bridge_0_1_sr_flop1_171797e57a;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_sr_flop1_171797e57a is
begin
register_x0: entity work.design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_17
     port map (
      ce => ce,
      clk => clk,
      m_axi_lite_aresetn => m_axi_lite_aresetn,
      m_axi_lite_awready => m_axi_lite_awready,
      m_axi_lite_awvalid => m_axi_lite_awvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_sr_flop2_88b8ff2137 is
  port (
    m_axi_lite_arvalid : out STD_LOGIC;
    \fd_prim_array[0].bit_is_0.fdre_comp\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    m_axi_lite_arready : in STD_LOGIC;
    m_axi_lite_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_sr_flop2_88b8ff2137 : entity is "sr_flop2_88b8ff2137";
end design_1_gpmc_axi_bridge_0_1_sr_flop2_88b8ff2137;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_sr_flop2_88b8ff2137 is
begin
register_x0: entity work.design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_14
     port map (
      clk => clk,
      \fd_prim_array[0].bit_is_0.fdre_comp\ => \fd_prim_array[0].bit_is_0.fdre_comp\,
      m_axi_lite_aresetn => m_axi_lite_aresetn,
      m_axi_lite_arready => m_axi_lite_arready,
      m_axi_lite_arvalid => m_axi_lite_arvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_sr_flop3_37f193c616 is
  port (
    m_axi_lite_rready : out STD_LOGIC;
    \fd_prim_array[0].bit_is_0.fdre_comp\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    m_axi_lite_rvalid : in STD_LOGIC;
    m_axi_lite_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_sr_flop3_37f193c616 : entity is "sr_flop3_37f193c616";
end design_1_gpmc_axi_bridge_0_1_sr_flop3_37f193c616;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_sr_flop3_37f193c616 is
begin
register_x0: entity work.design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_13
     port map (
      clk => clk,
      \fd_prim_array[0].bit_is_0.fdre_comp\ => \fd_prim_array[0].bit_is_0.fdre_comp\,
      m_axi_lite_aresetn => m_axi_lite_aresetn,
      m_axi_lite_rready => m_axi_lite_rready,
      m_axi_lite_rvalid => m_axi_lite_rvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_sr_flop_27fd76287e is
  port (
    m_axi_lite_wvalid : out STD_LOGIC;
    ce : in STD_LOGIC;
    clk : in STD_LOGIC;
    m_axi_lite_wready : in STD_LOGIC;
    m_axi_lite_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_sr_flop_27fd76287e : entity is "sr_flop_27fd76287e";
end design_1_gpmc_axi_bridge_0_1_sr_flop_27fd76287e;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_sr_flop_27fd76287e is
begin
register_x0: entity work.design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_20
     port map (
      ce => ce,
      clk => clk,
      m_axi_lite_aresetn => m_axi_lite_aresetn,
      m_axi_lite_wready => m_axi_lite_wready,
      m_axi_lite_wvalid => m_axi_lite_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_gpmc_axi_bridge_struct is
  port (
    o : out STD_LOGIC_VECTOR ( 18 downto 0 );
    m_axi_lite_awvalid : out STD_LOGIC;
    m_axi_lite_wvalid : out STD_LOGIC;
    m_axi_lite_arvalid : out STD_LOGIC;
    m_axi_lite_rready : out STD_LOGIC;
    m_axi_lite_bready : out STD_LOGIC;
    m_axi_lite_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    read_data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_lite_awready : in STD_LOGIC;
    m_axi_lite_aresetn : in STD_LOGIC;
    m_axi_lite_wready : in STD_LOGIC;
    m_axi_lite_arready : in STD_LOGIC;
    m_axi_lite_rvalid : in STD_LOGIC;
    m_axi_lite_bvalid : in STD_LOGIC;
    clk : in STD_LOGIC;
    a_d : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_lite_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    csn : in STD_LOGIC;
    advn : in STD_LOGIC;
    wen : in STD_LOGIC;
    oen : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_gpmc_axi_bridge_struct : entity is "gpmc_axi_bridge_struct";
end design_1_gpmc_axi_bridge_0_1_gpmc_axi_bridge_struct;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_gpmc_axi_bridge_struct is
  signal delay2_q_net_x0 : STD_LOGIC;
  signal logical12_y_net : STD_LOGIC;
  signal logical13_y_net : STD_LOGIC;
  signal logical14_y_net : STD_LOGIC;
  signal logical2_y_net : STD_LOGIC;
  signal logical_y_net : STD_LOGIC;
  signal \^o\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal redge_det1_n_1 : STD_LOGIC;
  signal redge_det3_n_0 : STD_LOGIC;
  signal redge_det4_n_0 : STD_LOGIC;
  signal register10_q_net : STD_LOGIC;
  signal register11_q_net : STD_LOGIC;
  signal register12_q_net : STD_LOGIC;
  signal register1_q_net : STD_LOGIC;
  signal register2_q_net : STD_LOGIC;
  signal register3_q_net : STD_LOGIC;
  signal register4_q_net : STD_LOGIC;
  signal register5_q_net : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal register6_q_net : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal register7_q_net : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal register8_q_net : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal register9_q_net : STD_LOGIC;
  signal wdata_lsw1_q_net : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  o(18 downto 0) <= \^o\(18 downto 0);
latched_addr: entity work.\design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized2\
     port map (
      ce => logical2_y_net,
      clk => clk,
      delay2_q_net_x0 => delay2_q_net_x0,
      \fd_prim_array[0].bit_is_0.fdre_comp\ => logical_y_net,
      i(18 downto 16) => register8_q_net(2 downto 0),
      i(15 downto 0) => register6_q_net(15 downto 0),
      o(18 downto 0) => \^o\(18 downto 0),
      register10_q_net => register10_q_net,
      register4_q_net => register4_q_net
    );
mux: entity work.design_1_gpmc_axi_bridge_0_1_sysgen_mux_2dfa32ddae
     port map (
      latched_addr_out(0) => \^o\(0),
      o(31 downto 0) => wdata_lsw1_q_net(31 downto 0),
      read_data_out(15 downto 0) => read_data_out(15 downto 0)
    );
redge_det: entity work.design_1_gpmc_axi_bridge_0_1_redge_det_f52227972b
     port map (
      clk => clk,
      logical13_y_net => logical13_y_net,
      \reg_array[0].fde_used.u2\ => logical_y_net,
      register2_q_net => register2_q_net,
      register4_q_net => register4_q_net
    );
redge_det1: entity work.design_1_gpmc_axi_bridge_0_1_redge_det1_a880eba569
     port map (
      clk => clk,
      delay2_q_net_x0 => delay2_q_net_x0,
      logical12_y_net => logical12_y_net,
      o(0) => \^o\(0),
      \reg_array[0].fde_used.u2\ => redge_det1_n_1,
      register10_q_net => register10_q_net,
      register4_q_net => register4_q_net
    );
redge_det2: entity work.design_1_gpmc_axi_bridge_0_1_redge_det2_7d56bee8e0
     port map (
      clk => clk,
      m_axi_lite_bready => m_axi_lite_bready,
      m_axi_lite_bvalid => m_axi_lite_bvalid
    );
redge_det3: entity work.design_1_gpmc_axi_bridge_0_1_redge_det3_74cd140bb8
     port map (
      clk => clk,
      logical14_y_net => logical14_y_net,
      o(0) => \^o\(0),
      \reg_array[0].fde_used.u2\ => redge_det3_n_0,
      register11_q_net => register11_q_net,
      register4_q_net => register4_q_net
    );
redge_det4: entity work.design_1_gpmc_axi_bridge_0_1_redge_det4_cdc2ed7a05
     port map (
      clk => clk,
      m_axi_lite_arready => m_axi_lite_arready,
      m_axi_lite_arready_0 => redge_det4_n_0
    );
register1: entity work.design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge
     port map (
      advn => advn,
      clk => clk,
      register1_q_net => register1_q_net
    );
register10: entity work.design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_0
     port map (
      clk => clk,
      register10_q_net => register10_q_net,
      register9_q_net => register9_q_net
    );
register11: entity work.design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_1
     port map (
      clk => clk,
      register11_q_net => register11_q_net,
      register12_q_net => register12_q_net
    );
register12: entity work.design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_2
     port map (
      clk => clk,
      oen => oen,
      register12_q_net => register12_q_net
    );
register2: entity work.design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_3
     port map (
      clk => clk,
      register1_q_net => register1_q_net,
      register2_q_net => register2_q_net
    );
register3: entity work.design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_4
     port map (
      clk => clk,
      csn => csn,
      register3_q_net => register3_q_net
    );
register4: entity work.design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_5
     port map (
      clk => clk,
      logical12_y_net => logical12_y_net,
      logical13_y_net => logical13_y_net,
      logical14_y_net => logical14_y_net,
      register10_q_net => register10_q_net,
      register11_q_net => register11_q_net,
      register2_q_net => register2_q_net,
      register3_q_net => register3_q_net,
      register4_q_net => register4_q_net
    );
register5: entity work.\design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0\
     port map (
      a_d(15 downto 0) => a_d(15 downto 0),
      clk => clk,
      o(15 downto 0) => register5_q_net(15 downto 0)
    );
register6: entity work.\design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0_6\
     port map (
      clk => clk,
      i(15 downto 0) => register5_q_net(15 downto 0),
      o(15 downto 0) => register6_q_net(15 downto 0)
    );
register7: entity work.\design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized1\
     port map (
      a(2 downto 0) => a(2 downto 0),
      clk => clk,
      o(2 downto 0) => register7_q_net(2 downto 0)
    );
register8: entity work.\design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized1_7\
     port map (
      clk => clk,
      i(2 downto 0) => register7_q_net(2 downto 0),
      o(2 downto 0) => register8_q_net(2 downto 0)
    );
register9: entity work.design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_8
     port map (
      clk => clk,
      register9_q_net => register9_q_net,
      wen => wen
    );
sr_flop: entity work.design_1_gpmc_axi_bridge_0_1_sr_flop_27fd76287e
     port map (
      ce => logical2_y_net,
      clk => clk,
      m_axi_lite_aresetn => m_axi_lite_aresetn,
      m_axi_lite_wready => m_axi_lite_wready,
      m_axi_lite_wvalid => m_axi_lite_wvalid
    );
sr_flop1: entity work.design_1_gpmc_axi_bridge_0_1_sr_flop1_171797e57a
     port map (
      ce => logical2_y_net,
      clk => clk,
      m_axi_lite_aresetn => m_axi_lite_aresetn,
      m_axi_lite_awready => m_axi_lite_awready,
      m_axi_lite_awvalid => m_axi_lite_awvalid
    );
sr_flop2: entity work.design_1_gpmc_axi_bridge_0_1_sr_flop2_88b8ff2137
     port map (
      clk => clk,
      \fd_prim_array[0].bit_is_0.fdre_comp\ => redge_det3_n_0,
      m_axi_lite_aresetn => m_axi_lite_aresetn,
      m_axi_lite_arready => m_axi_lite_arready,
      m_axi_lite_arvalid => m_axi_lite_arvalid
    );
sr_flop3: entity work.design_1_gpmc_axi_bridge_0_1_sr_flop3_37f193c616
     port map (
      clk => clk,
      \fd_prim_array[0].bit_is_0.fdre_comp\ => redge_det4_n_0,
      m_axi_lite_aresetn => m_axi_lite_aresetn,
      m_axi_lite_rready => m_axi_lite_rready,
      m_axi_lite_rvalid => m_axi_lite_rvalid
    );
wdata_lsw: entity work.\design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0_9\
     port map (
      clk => clk,
      \fd_prim_array[15].bit_is_0.fdre_comp\ => redge_det1_n_1,
      i(15 downto 0) => register6_q_net(15 downto 0),
      m_axi_lite_wdata(15 downto 0) => m_axi_lite_wdata(15 downto 0)
    );
wdata_lsw1: entity work.\design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized3\
     port map (
      clk => clk,
      m_axi_lite_rdata(31 downto 0) => m_axi_lite_rdata(31 downto 0),
      m_axi_lite_rvalid => m_axi_lite_rvalid,
      o(31 downto 0) => wdata_lsw1_q_net(31 downto 0)
    );
wdata_msw: entity work.\design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0_10\
     port map (
      ce => logical2_y_net,
      clk => clk,
      i(15 downto 0) => register6_q_net(15 downto 0),
      m_axi_lite_wdata(15 downto 0) => m_axi_lite_wdata(31 downto 16)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1_gpmc_axi_bridge is
  port (
    latched_addr_out : out STD_LOGIC_VECTOR ( 18 downto 0 );
    m_axi_lite_awvalid : out STD_LOGIC;
    m_axi_lite_wvalid : out STD_LOGIC;
    m_axi_lite_arvalid : out STD_LOGIC;
    m_axi_lite_rready : out STD_LOGIC;
    m_axi_lite_bready : out STD_LOGIC;
    m_axi_lite_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    read_data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_lite_awready : in STD_LOGIC;
    m_axi_lite_aresetn : in STD_LOGIC;
    m_axi_lite_wready : in STD_LOGIC;
    m_axi_lite_arready : in STD_LOGIC;
    m_axi_lite_rvalid : in STD_LOGIC;
    m_axi_lite_bvalid : in STD_LOGIC;
    clk : in STD_LOGIC;
    a_d : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_lite_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    csn : in STD_LOGIC;
    advn : in STD_LOGIC;
    wen : in STD_LOGIC;
    oen : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_gpmc_axi_bridge_0_1_gpmc_axi_bridge : entity is "gpmc_axi_bridge";
end design_1_gpmc_axi_bridge_0_1_gpmc_axi_bridge;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1_gpmc_axi_bridge is
begin
gpmc_axi_bridge_struct: entity work.design_1_gpmc_axi_bridge_0_1_gpmc_axi_bridge_struct
     port map (
      a(2 downto 0) => a(2 downto 0),
      a_d(15 downto 0) => a_d(15 downto 0),
      advn => advn,
      clk => clk,
      csn => csn,
      m_axi_lite_aresetn => m_axi_lite_aresetn,
      m_axi_lite_arready => m_axi_lite_arready,
      m_axi_lite_arvalid => m_axi_lite_arvalid,
      m_axi_lite_awready => m_axi_lite_awready,
      m_axi_lite_awvalid => m_axi_lite_awvalid,
      m_axi_lite_bready => m_axi_lite_bready,
      m_axi_lite_bvalid => m_axi_lite_bvalid,
      m_axi_lite_rdata(31 downto 0) => m_axi_lite_rdata(31 downto 0),
      m_axi_lite_rready => m_axi_lite_rready,
      m_axi_lite_rvalid => m_axi_lite_rvalid,
      m_axi_lite_wdata(31 downto 0) => m_axi_lite_wdata(31 downto 0),
      m_axi_lite_wready => m_axi_lite_wready,
      m_axi_lite_wvalid => m_axi_lite_wvalid,
      o(18 downto 0) => latched_addr_out(18 downto 0),
      oen => oen,
      read_data_out(15 downto 0) => read_data_out(15 downto 0),
      wen => wen
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_gpmc_axi_bridge_0_1 is
  port (
    clk : in STD_LOGIC;
    m_axi_lite_wready : in STD_LOGIC;
    m_axi_lite_rvalid : in STD_LOGIC;
    m_axi_lite_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_lite_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_lite_bvalid : in STD_LOGIC;
    m_axi_lite_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_lite_awready : in STD_LOGIC;
    m_axi_lite_arready : in STD_LOGIC;
    m_axi_lite_aresetn : in STD_LOGIC;
    csn : in STD_LOGIC;
    wen : in STD_LOGIC;
    oen : in STD_LOGIC;
    a_d : in STD_LOGIC_VECTOR ( 15 downto 0 );
    advn : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_lite_araddr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    m_axi_lite_arvalid : out STD_LOGIC;
    m_axi_lite_awaddr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    m_axi_lite_awvalid : out STD_LOGIC;
    m_axi_lite_bready : out STD_LOGIC;
    m_axi_lite_rready : out STD_LOGIC;
    m_axi_lite_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_lite_wvalid : out STD_LOGIC;
    read_data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    status : out STD_LOGIC_VECTOR ( 3 downto 0 );
    latched_addr_out : out STD_LOGIC_VECTOR ( 18 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_gpmc_axi_bridge_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_gpmc_axi_bridge_0_1 : entity is "design_1_gpmc_axi_bridge_0_1,gpmc_axi_bridge,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_gpmc_axi_bridge_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_gpmc_axi_bridge_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_gpmc_axi_bridge_0_1 : entity is "gpmc_axi_bridge,Vivado 2025.2";
end design_1_gpmc_axi_bridge_0_1;

architecture STRUCTURE of design_1_gpmc_axi_bridge_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \^latched_addr_out\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \^m_axi_lite_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_lite_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axi_lite, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of m_axi_lite_aresetn : signal is "xilinx.com:signal:reset:1.0 m_axi_lite_aresetn RST";
  attribute x_interface_mode of m_axi_lite_aresetn : signal is "slave m_axi_lite_aresetn";
  attribute x_interface_parameter of m_axi_lite_aresetn : signal is "XIL_INTERFACENAME m_axi_lite_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axi_lite_arready : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite ARREADY";
  attribute x_interface_info of m_axi_lite_arvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite ARVALID";
  attribute x_interface_info of m_axi_lite_awready : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite AWREADY";
  attribute x_interface_info of m_axi_lite_awvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite AWVALID";
  attribute x_interface_info of m_axi_lite_bready : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite BREADY";
  attribute x_interface_info of m_axi_lite_bvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite BVALID";
  attribute x_interface_info of m_axi_lite_rready : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite RREADY";
  attribute x_interface_info of m_axi_lite_rvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite RVALID";
  attribute x_interface_info of m_axi_lite_wready : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite WREADY";
  attribute x_interface_mode of m_axi_lite_wready : signal is "master m_axi_lite";
  attribute x_interface_parameter of m_axi_lite_wready : signal is "XIL_INTERFACENAME m_axi_lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 19, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of m_axi_lite_wvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite WVALID";
  attribute x_interface_info of m_axi_lite_araddr : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite ARADDR";
  attribute x_interface_info of m_axi_lite_awaddr : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite AWADDR";
  attribute x_interface_info of m_axi_lite_bresp : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite BRESP";
  attribute x_interface_info of m_axi_lite_rdata : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite RDATA";
  attribute x_interface_info of m_axi_lite_rresp : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite RRESP";
  attribute x_interface_info of m_axi_lite_wdata : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite WDATA";
begin
  \^m_axi_lite_bresp\(1 downto 0) <= m_axi_lite_bresp(1 downto 0);
  \^m_axi_lite_rresp\(1 downto 0) <= m_axi_lite_rresp(1 downto 0);
  latched_addr_out(18 downto 0) <= \^latched_addr_out\(18 downto 0);
  m_axi_lite_araddr(18 downto 2) <= \^latched_addr_out\(17 downto 1);
  m_axi_lite_araddr(1) <= \<const0>\;
  m_axi_lite_araddr(0) <= \<const0>\;
  m_axi_lite_awaddr(18 downto 2) <= \^latched_addr_out\(17 downto 1);
  m_axi_lite_awaddr(1) <= \<const0>\;
  m_axi_lite_awaddr(0) <= \<const0>\;
  status(3 downto 2) <= \^m_axi_lite_bresp\(1 downto 0);
  status(1 downto 0) <= \^m_axi_lite_rresp\(1 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_gpmc_axi_bridge_0_1_gpmc_axi_bridge
     port map (
      a(2 downto 0) => a(2 downto 0),
      a_d(15 downto 0) => a_d(15 downto 0),
      advn => advn,
      clk => clk,
      csn => csn,
      latched_addr_out(18 downto 0) => \^latched_addr_out\(18 downto 0),
      m_axi_lite_aresetn => m_axi_lite_aresetn,
      m_axi_lite_arready => m_axi_lite_arready,
      m_axi_lite_arvalid => m_axi_lite_arvalid,
      m_axi_lite_awready => m_axi_lite_awready,
      m_axi_lite_awvalid => m_axi_lite_awvalid,
      m_axi_lite_bready => m_axi_lite_bready,
      m_axi_lite_bvalid => m_axi_lite_bvalid,
      m_axi_lite_rdata(31 downto 0) => m_axi_lite_rdata(31 downto 0),
      m_axi_lite_rready => m_axi_lite_rready,
      m_axi_lite_rvalid => m_axi_lite_rvalid,
      m_axi_lite_wdata(31 downto 0) => m_axi_lite_wdata(31 downto 0),
      m_axi_lite_wready => m_axi_lite_wready,
      m_axi_lite_wvalid => m_axi_lite_wvalid,
      oen => oen,
      read_data_out(15 downto 0) => read_data_out(15 downto 0),
      wen => wen
    );
end STRUCTURE;
