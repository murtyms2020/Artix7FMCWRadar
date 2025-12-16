-------------------------------------------------------------------
-- System Generator version 2014.2 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------

-- Generated from Simulink block "gpmc_axi_bridge/SR_flop"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity sr_flop_27fd76287e is
  port (
    clk_1: in std_logic;
    ce_1: in std_logic;
    s: in std_logic;
    r: in std_logic;
    out_x0: out std_logic
  );
end sr_flop_27fd76287e;

architecture structural of sr_flop_27fd76287e is
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal constant_op_net: std_logic;
  signal convert_dout_net: std_logic;
  signal convert1_dout_net: std_logic;
  signal logical2_y_net: std_logic;
  signal logical10_y_net: std_logic;
  signal register_q_net: std_logic;

begin
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  logical2_y_net <= s;
  logical10_y_net <= r;
  out_x0 <= register_q_net;

  constant_x0: entity work.sysgen_constant_9d7622fb5e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant_op_net
  );

  convert: entity work.xlconvert_gpmc_axi_bridge
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      en => "1",
      din(0) => logical10_y_net,
      dout(0) => convert_dout_net
  );

  convert1: entity work.xlconvert_gpmc_axi_bridge
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      en => "1",
      din(0) => logical2_y_net,
      dout(0) => convert1_dout_net
  );

  register_x0: entity work.xlregister_gpmc_axi_bridge
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      d(0) => constant_op_net,
      rst(0) => convert_dout_net,
      en(0) => convert1_dout_net,
      q(0) => register_q_net
  );
end structural;


-- Generated from Simulink block "gpmc_axi_bridge/SR_flop1"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity sr_flop1_171797e57a is
  port (
    clk_1: in std_logic;
    ce_1: in std_logic;
    s: in std_logic;
    r: in std_logic;
    out_x0: out std_logic
  );
end sr_flop1_171797e57a;

architecture structural of sr_flop1_171797e57a is
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal constant_op_net_x0: std_logic;
  signal convert_dout_net_x0: std_logic;
  signal convert1_dout_net_x0: std_logic;
  signal logical2_y_net: std_logic;
  signal logical11_y_net: std_logic;
  signal register_q_net_x0: std_logic;

begin
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  logical2_y_net <= s;
  logical11_y_net <= r;
  out_x0 <= register_q_net_x0;

  constant_x0: entity work.sysgen_constant_9d7622fb5e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant_op_net_x0
  );

  convert: entity work.xlconvert_gpmc_axi_bridge
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      en => "1",
      din(0) => logical11_y_net,
      dout(0) => convert_dout_net_x0
  );

  convert1: entity work.xlconvert_gpmc_axi_bridge
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      en => "1",
      din(0) => logical2_y_net,
      dout(0) => convert1_dout_net_x0
  );

  register_x0: entity work.xlregister_gpmc_axi_bridge
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      d(0) => constant_op_net_x0,
      rst(0) => convert_dout_net_x0,
      en(0) => convert1_dout_net_x0,
      q(0) => register_q_net_x0
  );
end structural;


-- Generated from Simulink block "gpmc_axi_bridge/SR_flop2"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity sr_flop2_88b8ff2137 is
  port (
    clk_1: in std_logic;
    ce_1: in std_logic;
    s: in std_logic;
    r: in std_logic;
    out_x0: out std_logic
  );
end sr_flop2_88b8ff2137;

architecture structural of sr_flop2_88b8ff2137 is
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal constant_op_net_x1: std_logic;
  signal convert_dout_net_x1: std_logic;
  signal convert1_dout_net_x1: std_logic;
  signal logical5_y_net: std_logic;
  signal logical9_y_net: std_logic;
  signal register_q_net_x1: std_logic;

begin
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  logical5_y_net <= s;
  logical9_y_net <= r;
  out_x0 <= register_q_net_x1;

  constant_x0: entity work.sysgen_constant_9d7622fb5e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant_op_net_x1
  );

  convert: entity work.xlconvert_gpmc_axi_bridge
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      en => "1",
      din(0) => logical9_y_net,
      dout(0) => convert_dout_net_x1
  );

  convert1: entity work.xlconvert_gpmc_axi_bridge
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      en => "1",
      din(0) => logical5_y_net,
      dout(0) => convert1_dout_net_x1
  );

  register_x0: entity work.xlregister_gpmc_axi_bridge
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      d(0) => constant_op_net_x1,
      rst(0) => convert_dout_net_x1,
      en(0) => convert1_dout_net_x1,
      q(0) => register_q_net_x1
  );
end structural;


-- Generated from Simulink block "gpmc_axi_bridge/SR_flop3"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity sr_flop3_37f193c616 is
  port (
    clk_1: in std_logic;
    ce_1: in std_logic;
    s: in std_logic;
    r: in std_logic;
    out_x0: out std_logic
  );
end sr_flop3_37f193c616;

architecture structural of sr_flop3_37f193c616 is
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal constant_op_net_x2: std_logic;
  signal convert_dout_net_x2: std_logic;
  signal convert1_dout_net_x2: std_logic;
  signal logical4_y_net_x4: std_logic;
  signal logical8_y_net: std_logic;
  signal register_q_net_x2: std_logic;

begin
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  logical4_y_net_x4 <= s;
  logical8_y_net <= r;
  out_x0 <= register_q_net_x2;

  constant_x0: entity work.sysgen_constant_9d7622fb5e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant_op_net_x2
  );

  convert: entity work.xlconvert_gpmc_axi_bridge
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      en => "1",
      din(0) => logical8_y_net,
      dout(0) => convert_dout_net_x2
  );

  convert1: entity work.xlconvert_gpmc_axi_bridge
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      en => "1",
      din(0) => logical4_y_net_x4,
      dout(0) => convert1_dout_net_x2
  );

  register_x0: entity work.xlregister_gpmc_axi_bridge
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      d(0) => constant_op_net_x2,
      rst(0) => convert_dout_net_x2,
      en(0) => convert1_dout_net_x2,
      q(0) => register_q_net_x2
  );
end structural;


-- Generated from Simulink block "gpmc_axi_bridge/redge_det"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity redge_det_f52227972b is
  port (
    clk_1: in std_logic;
    ce_1: in std_logic;
    in_x0: in std_logic;
    out_x0: out std_logic
  );
end redge_det_f52227972b;

architecture structural of redge_det_f52227972b is
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal delay2_q_net: std_logic;
  signal inverter3_op_net_x0: std_logic;
  signal logical13_y_net: std_logic;
  signal logical4_y_net_x0: std_logic;

begin
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  logical13_y_net <= in_x0;
  out_x0 <= logical4_y_net_x0;

  delay2: entity work.xldelay_gpmc_axi_bridge
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1)
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => '1',
      rst => '1',
      d(0) => logical13_y_net,
      q(0) => delay2_q_net
  );

  inverter3: entity work.sysgen_inverter_8c34576c15
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip(0) => delay2_q_net,
      op(0) => inverter3_op_net_x0
  );

  logical4: entity work.sysgen_logical_9d4b3181e5
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => logical13_y_net,
      d1(0) => inverter3_op_net_x0,
      y(0) => logical4_y_net_x0
  );
end structural;


-- Generated from Simulink block "gpmc_axi_bridge/redge_det1"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity redge_det1_a880eba569 is
  port (
    clk_1: in std_logic;
    ce_1: in std_logic;
    in_x0: in std_logic;
    out_x0: out std_logic
  );
end redge_det1_a880eba569;

architecture structural of redge_det1_a880eba569 is
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal delay2_q_net_x0: std_logic;
  signal inverter3_op_net_x1: std_logic;
  signal logical12_y_net: std_logic;
  signal logical4_y_net_x1: std_logic;

begin
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  logical12_y_net <= in_x0;
  out_x0 <= logical4_y_net_x1;

  delay2: entity work.xldelay_gpmc_axi_bridge
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1)
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => '1',
      rst => '1',
      d(0) => logical12_y_net,
      q(0) => delay2_q_net_x0
  );

  inverter3: entity work.sysgen_inverter_8c34576c15
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip(0) => delay2_q_net_x0,
      op(0) => inverter3_op_net_x1
  );

  logical4: entity work.sysgen_logical_9d4b3181e5
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => logical12_y_net,
      d1(0) => inverter3_op_net_x1,
      y(0) => logical4_y_net_x1
  );
end structural;


-- Generated from Simulink block "gpmc_axi_bridge/redge_det2"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity redge_det2_7d56bee8e0 is
  port (
    clk_1: in std_logic;
    ce_1: in std_logic;
    in_x0: in std_logic;
    out_x0: out std_logic
  );
end redge_det2_7d56bee8e0;

architecture structural of redge_det2_7d56bee8e0 is
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal delay2_q_net_x1: std_logic;
  signal inverter3_op_net_x2: std_logic;
  signal m_axi_lite_bvalid_net: std_logic;
  signal logical4_y_net_x2: std_logic;

begin
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  m_axi_lite_bvalid_net <= in_x0;
  out_x0 <= logical4_y_net_x2;

  delay2: entity work.xldelay_gpmc_axi_bridge
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1)
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => '1',
      rst => '1',
      d(0) => m_axi_lite_bvalid_net,
      q(0) => delay2_q_net_x1
  );

  inverter3: entity work.sysgen_inverter_8c34576c15
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip(0) => delay2_q_net_x1,
      op(0) => inverter3_op_net_x2
  );

  logical4: entity work.sysgen_logical_9d4b3181e5
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => m_axi_lite_bvalid_net,
      d1(0) => inverter3_op_net_x2,
      y(0) => logical4_y_net_x2
  );
end structural;


-- Generated from Simulink block "gpmc_axi_bridge/redge_det3"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity redge_det3_74cd140bb8 is
  port (
    clk_1: in std_logic;
    ce_1: in std_logic;
    in_x0: in std_logic;
    out_x0: out std_logic
  );
end redge_det3_74cd140bb8;

architecture structural of redge_det3_74cd140bb8 is
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal delay2_q_net_x2: std_logic;
  signal inverter3_op_net_x3: std_logic;
  signal logical14_y_net: std_logic;
  signal logical4_y_net_x3: std_logic;

begin
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  logical14_y_net <= in_x0;
  out_x0 <= logical4_y_net_x3;

  delay2: entity work.xldelay_gpmc_axi_bridge
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1)
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => '1',
      rst => '1',
      d(0) => logical14_y_net,
      q(0) => delay2_q_net_x2
  );

  inverter3: entity work.sysgen_inverter_8c34576c15
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip(0) => delay2_q_net_x2,
      op(0) => inverter3_op_net_x3
  );

  logical4: entity work.sysgen_logical_9d4b3181e5
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => logical14_y_net,
      d1(0) => inverter3_op_net_x3,
      y(0) => logical4_y_net_x3
  );
end structural;


-- Generated from Simulink block "gpmc_axi_bridge/redge_det4"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity redge_det4_cdc2ed7a05 is
  port (
    clk_1: in std_logic;
    ce_1: in std_logic;
    in_x0: in std_logic;
    out_x0: out std_logic
  );
end redge_det4_cdc2ed7a05;

architecture structural of redge_det4_cdc2ed7a05 is
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal delay2_q_net_x3: std_logic;
  signal inverter3_op_net_x4: std_logic;
  signal m_axi_lite_arready_net: std_logic;
  signal logical4_y_net_x4: std_logic;

begin
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  m_axi_lite_arready_net <= in_x0;
  out_x0 <= logical4_y_net_x4;

  delay2: entity work.xldelay_gpmc_axi_bridge
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1)
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => '1',
      rst => '1',
      d(0) => m_axi_lite_arready_net,
      q(0) => delay2_q_net_x3
  );

  inverter3: entity work.sysgen_inverter_8c34576c15
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip(0) => delay2_q_net_x3,
      op(0) => inverter3_op_net_x4
  );

  logical4: entity work.sysgen_logical_9d4b3181e5
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => m_axi_lite_arready_net,
      d1(0) => inverter3_op_net_x4,
      y(0) => logical4_y_net_x4
  );
end structural;


-- Generated from Simulink block "gpmc_axi_bridge/gpmc_axi_bridge_struct"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity gpmc_axi_bridge_struct is
  port (
    clk_1: in std_logic;
    ce_1: in std_logic;
    m_axi_lite_wready: in std_logic;
    m_axi_lite_rvalid: in std_logic;
    m_axi_lite_rresp: in std_logic_vector(1 downto 0);
    m_axi_lite_rdata: in std_logic_vector(31 downto 0);
    m_axi_lite_bvalid: in std_logic;
    m_axi_lite_bresp: in std_logic_vector(1 downto 0);
    m_axi_lite_awready: in std_logic;
    m_axi_lite_arready: in std_logic;
    m_axi_lite_aresetn: in std_logic;
    csn: in std_logic;
    wen: in std_logic;
    oen: in std_logic;
    a_d: in std_logic_vector(15 downto 0);
    advn: in std_logic;
    a: in std_logic_vector(2 downto 0);
    m_axi_lite_araddr: out std_logic_vector(18 downto 0);
    m_axi_lite_arvalid: out std_logic;
    m_axi_lite_awaddr: out std_logic_vector(18 downto 0);
    m_axi_lite_awvalid: out std_logic;
    m_axi_lite_bready: out std_logic;
    m_axi_lite_rready: out std_logic;
    m_axi_lite_wdata: out std_logic_vector(31 downto 0);
    m_axi_lite_wvalid: out std_logic;
    read_data_out: out std_logic_vector(15 downto 0);
    status: out std_logic_vector(3 downto 0);
    latched_addr_out: out std_logic_vector(18 downto 0)
  );
end gpmc_axi_bridge_struct;

architecture structural of gpmc_axi_bridge_struct is
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal concat_y_net: std_logic_vector(18 downto 0);
  signal concat1_y_net: std_logic_vector(31 downto 0);
  signal concat2_y_net: std_logic_vector(18 downto 0);
  signal concat3_y_net: std_logic_vector(3 downto 0);
  signal constant8_op_net: std_logic_vector(1 downto 0);
  signal inverter_op_net: std_logic;
  signal inverter1_op_net: std_logic;
  signal inverter2_op_net: std_logic;
  signal inverter3_op_net: std_logic;
  signal inverter4_op_net: std_logic;
  signal inverter5_op_net: std_logic;
  signal logical_y_net: std_logic;
  signal logical1_y_net: std_logic;
  signal logical10_y_net: std_logic;
  signal logical11_y_net: std_logic;
  signal logical12_y_net: std_logic;
  signal logical13_y_net: std_logic;
  signal logical14_y_net: std_logic;
  signal logical2_y_net: std_logic;
  signal logical3_y_net: std_logic;
  signal logical4_y_net: std_logic;
  signal logical5_y_net: std_logic;
  signal logical6_y_net: std_logic;
  signal logical7_y_net: std_logic;
  signal logical8_y_net: std_logic;
  signal logical9_y_net: std_logic;
  signal mux_y_net: std_logic_vector(15 downto 0);
  signal register1_q_net: std_logic;
  signal register10_q_net: std_logic;
  signal register11_q_net: std_logic;
  signal register12_q_net: std_logic;
  signal register2_q_net: std_logic;
  signal register3_q_net: std_logic;
  signal register4_q_net: std_logic;
  signal register5_q_net: std_logic_vector(15 downto 0);
  signal register6_q_net: std_logic_vector(15 downto 0);
  signal register7_q_net: std_logic_vector(2 downto 0);
  signal register8_q_net: std_logic_vector(2 downto 0);
  signal register9_q_net: std_logic;
  signal shift_op_net: std_logic_vector(18 downto 0);
  signal slice_y_net: std_logic_vector(15 downto 0);
  signal slice1_y_net: std_logic_vector(15 downto 0);
  signal bit1_y_net: std_logic;
  signal bit18_2_y_net: std_logic_vector(16 downto 0);
  signal latched_addr_q_net: std_logic_vector(18 downto 0);
  signal wdata_lsw_q_net: std_logic_vector(15 downto 0);
  signal wdata_lsw1_q_net: std_logic_vector(31 downto 0);
  signal wdata_msw_q_net: std_logic_vector(15 downto 0);
  signal m_axi_lite_wready_net: std_logic;
  signal m_axi_lite_rvalid_net: std_logic;
  signal m_axi_lite_rresp_net: std_logic_vector(1 downto 0);
  signal m_axi_lite_rdata_net: std_logic_vector(31 downto 0);
  signal m_axi_lite_bvalid_net: std_logic;
  signal m_axi_lite_bresp_net: std_logic_vector(1 downto 0);
  signal m_axi_lite_awready_net: std_logic;
  signal m_axi_lite_arready_net: std_logic;
  signal m_axi_lite_aresetn_net: std_logic;
  signal csn_net: std_logic;
  signal wen_net: std_logic;
  signal oen_net: std_logic;
  signal a_d_net: std_logic_vector(15 downto 0);
  signal advn_net: std_logic;
  signal a_net: std_logic_vector(2 downto 0);
  signal m_axi_lite_araddr_net: std_logic_vector(18 downto 0);
  signal m_axi_lite_arvalid_net: std_logic;
  signal m_axi_lite_awaddr_net: std_logic_vector(18 downto 0);
  signal m_axi_lite_awvalid_net: std_logic;
  signal m_axi_lite_bready_net: std_logic;
  signal m_axi_lite_rready_net: std_logic;
  signal m_axi_lite_wdata_net: std_logic_vector(31 downto 0);
  signal m_axi_lite_wvalid_net: std_logic;
  signal read_data_out_net: std_logic_vector(15 downto 0);
  signal status_net: std_logic_vector(3 downto 0);
  signal latched_addr_out_net: std_logic_vector(18 downto 0);
  signal register_q_net: std_logic;
  signal register_q_net_x0: std_logic;
  signal register_q_net_x1: std_logic;
  signal register_q_net_x2: std_logic;
  signal logical4_y_net_x0: std_logic;
  signal logical4_y_net_x1: std_logic;
  signal logical4_y_net_x2: std_logic;
  signal logical4_y_net_x3: std_logic;
  signal logical4_y_net_x4: std_logic;

begin
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  m_axi_lite_wready_net <= m_axi_lite_wready;
  m_axi_lite_rvalid_net <= m_axi_lite_rvalid;
  m_axi_lite_rresp_net <= m_axi_lite_rresp;
  m_axi_lite_rdata_net <= m_axi_lite_rdata;
  m_axi_lite_bvalid_net <= m_axi_lite_bvalid;
  m_axi_lite_bresp_net <= m_axi_lite_bresp;
  m_axi_lite_awready_net <= m_axi_lite_awready;
  m_axi_lite_arready_net <= m_axi_lite_arready;
  m_axi_lite_aresetn_net <= m_axi_lite_aresetn;
  csn_net <= csn;
  wen_net <= wen;
  oen_net <= oen;
  a_d_net <= a_d;
  advn_net <= advn;
  a_net <= a;
  m_axi_lite_araddr <= m_axi_lite_araddr_net;
  m_axi_lite_arvalid <= m_axi_lite_arvalid_net;
  m_axi_lite_awaddr <= m_axi_lite_awaddr_net;
  m_axi_lite_awvalid <= m_axi_lite_awvalid_net;
  m_axi_lite_bready <= m_axi_lite_bready_net;
  m_axi_lite_rready <= m_axi_lite_rready_net;
  m_axi_lite_wdata <= m_axi_lite_wdata_net;
  m_axi_lite_wvalid <= m_axi_lite_wvalid_net;
  read_data_out <= read_data_out_net;
  status <= status_net;
  latched_addr_out <= latched_addr_out_net;
  m_axi_lite_araddr_net <= concat2_y_net;
  m_axi_lite_arvalid_net <= register_q_net_x1;
  m_axi_lite_awaddr_net <= concat2_y_net;
  m_axi_lite_awvalid_net <= register_q_net_x0;
  m_axi_lite_bready_net <= logical4_y_net_x2;
  m_axi_lite_rready_net <= register_q_net_x2;
  m_axi_lite_wdata_net <= concat1_y_net;
  m_axi_lite_wvalid_net <= register_q_net;
  read_data_out_net <= mux_y_net;
  status_net <= concat3_y_net;
  latched_addr_out_net <= latched_addr_q_net;

  concat: entity work.sysgen_concat_b305b62d65
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      in0 => register8_q_net,
      in1 => register6_q_net,
      y => concat_y_net
  );

  concat1: entity work.sysgen_concat_fa629975a4
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      in0 => wdata_msw_q_net,
      in1 => wdata_lsw_q_net,
      y => concat1_y_net
  );

  concat2: entity work.sysgen_concat_d1f34a1f92
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      in0 => bit18_2_y_net,
      in1 => constant8_op_net,
      y => concat2_y_net
  );

  concat3: entity work.sysgen_concat_549bad11fe
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      in0 => m_axi_lite_bresp_net,
      in1 => m_axi_lite_rresp_net,
      y => concat3_y_net
  );

  constant8: entity work.sysgen_constant_08fd53d81c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant8_op_net
  );

  inverter: entity work.sysgen_inverter_8c34576c15
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip(0) => csn_net,
      op(0) => inverter_op_net
  );

  inverter1: entity work.sysgen_inverter_8c34576c15
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip(0) => advn_net,
      op(0) => inverter1_op_net
  );

  inverter2: entity work.sysgen_inverter_8c34576c15
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip(0) => wen_net,
      op(0) => inverter2_op_net
  );

  inverter3: entity work.sysgen_inverter_8c34576c15
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip(0) => bit1_y_net,
      op(0) => inverter3_op_net
  );

  inverter4: entity work.sysgen_inverter_8c34576c15
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip(0) => oen_net,
      op(0) => inverter4_op_net
  );

  inverter5: entity work.sysgen_inverter_8c34576c15
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip(0) => m_axi_lite_aresetn_net,
      op(0) => inverter5_op_net
  );

  logical: entity work.sysgen_logical_9d4b3181e5
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => register4_q_net,
      d1(0) => logical4_y_net_x0,
      y(0) => logical_y_net
  );

  logical1: entity work.sysgen_logical_9d4b3181e5
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => inverter3_op_net,
      d1(0) => logical4_y_net_x1,
      y(0) => logical1_y_net
  );

  logical10: entity work.sysgen_logical_8f3cbcb295
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => logical4_y_net,
      d1(0) => inverter5_op_net,
      y(0) => logical10_y_net
  );

  logical11: entity work.sysgen_logical_8f3cbcb295
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => logical3_y_net,
      d1(0) => inverter5_op_net,
      y(0) => logical11_y_net
  );

  logical12: entity work.sysgen_logical_9d4b3181e5
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => register4_q_net,
      d1(0) => register10_q_net,
      y(0) => logical12_y_net
  );

  logical13: entity work.sysgen_logical_9d4b3181e5
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => register4_q_net,
      d1(0) => register2_q_net,
      y(0) => logical13_y_net
  );

  logical14: entity work.sysgen_logical_9d4b3181e5
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => register4_q_net,
      d1(0) => register11_q_net,
      y(0) => logical14_y_net
  );

  logical2: entity work.sysgen_logical_9d4b3181e5
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => bit1_y_net,
      d1(0) => logical4_y_net_x1,
      y(0) => logical2_y_net
  );

  logical3: entity work.sysgen_logical_9d4b3181e5
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => m_axi_lite_awready_net,
      d1(0) => register_q_net_x0,
      y(0) => logical3_y_net
  );

  logical4: entity work.sysgen_logical_9d4b3181e5
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => m_axi_lite_wready_net,
      d1(0) => register_q_net,
      y(0) => logical4_y_net
  );

  logical5: entity work.sysgen_logical_9d4b3181e5
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => inverter3_op_net,
      d1(0) => logical4_y_net_x3,
      y(0) => logical5_y_net
  );

  logical6: entity work.sysgen_logical_9d4b3181e5
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => m_axi_lite_arready_net,
      d1(0) => register_q_net_x1,
      y(0) => logical6_y_net
  );

  logical7: entity work.sysgen_logical_9d4b3181e5
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => m_axi_lite_rvalid_net,
      d1(0) => register_q_net_x2,
      y(0) => logical7_y_net
  );

  logical8: entity work.sysgen_logical_8f3cbcb295
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => logical7_y_net,
      d1(0) => inverter5_op_net,
      y(0) => logical8_y_net
  );

  logical9: entity work.sysgen_logical_8f3cbcb295
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => logical6_y_net,
      d1(0) => inverter5_op_net,
      y(0) => logical9_y_net
  );

  mux: entity work.sysgen_mux_2dfa32ddae
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => bit1_y_net,
      d0 => slice1_y_net,
      d1 => slice_y_net,
      y => mux_y_net
  );

  register1: entity work.xlregister_gpmc_axi_bridge
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => inverter1_op_net,
      q(0) => register1_q_net
  );

  register10: entity work.xlregister_gpmc_axi_bridge
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => register9_q_net,
      q(0) => register10_q_net
  );

  register11: entity work.xlregister_gpmc_axi_bridge
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => register12_q_net,
      q(0) => register11_q_net
  );

  register12: entity work.xlregister_gpmc_axi_bridge
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => inverter4_op_net,
      q(0) => register12_q_net
  );

  register2: entity work.xlregister_gpmc_axi_bridge
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => register1_q_net,
      q(0) => register2_q_net
  );

  register3: entity work.xlregister_gpmc_axi_bridge
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => inverter_op_net,
      q(0) => register3_q_net
  );

  register4: entity work.xlregister_gpmc_axi_bridge
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => register3_q_net,
      q(0) => register4_q_net
  );

  register5: entity work.xlregister_gpmc_axi_bridge
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d => a_d_net,
      q => register5_q_net
  );

  register6: entity work.xlregister_gpmc_axi_bridge
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d => register5_q_net,
      q => register6_q_net
  );

  register7: entity work.xlregister_gpmc_axi_bridge
    generic map (
      d_width => 3,
      init_value => b"000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d => a_net,
      q => register7_q_net
  );

  register8: entity work.xlregister_gpmc_axi_bridge
    generic map (
      d_width => 3,
      init_value => b"000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d => register7_q_net,
      q => register8_q_net
  );

  register9: entity work.xlregister_gpmc_axi_bridge
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => inverter2_op_net,
      q(0) => register9_q_net
  );

  shift: entity work.sysgen_shift_281c4fb751
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip => latched_addr_q_net,
      op => shift_op_net
  );

  slice: entity work.xlslice_gpmc_axi_bridge
    generic map (
      new_lsb => 16,
      new_msb => 31,
      x_width => 32,
      y_width => 16)
    port map (
      x => wdata_lsw1_q_net,
      y => slice_y_net
  );

  slice1: entity work.xlslice_gpmc_axi_bridge
    generic map (
      new_lsb => 0,
      new_msb => 15,
      x_width => 32,
      y_width => 16)
    port map (
      x => wdata_lsw1_q_net,
      y => slice1_y_net
  );

  bit1: entity work.xlslice_gpmc_axi_bridge
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 19,
      y_width => 1)
    port map (
      x => shift_op_net,
      y(0) => bit1_y_net
  );

  bit18_2: entity work.xlslice_gpmc_axi_bridge
    generic map (
      new_lsb => 2,
      new_msb => 18,
      x_width => 19,
      y_width => 17)
    port map (
      x => shift_op_net,
      y => bit18_2_y_net
  );

  latched_addr: entity work.xlregister_gpmc_axi_bridge
    generic map (
      d_width => 19,
      init_value => b"0000000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => concat_y_net,
      en(0) => logical_y_net,
      q => latched_addr_q_net
  );

  wdata_lsw: entity work.xlregister_gpmc_axi_bridge
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register6_q_net,
      en(0) => logical1_y_net,
      q => wdata_lsw_q_net
  );

  wdata_lsw1: entity work.xlregister_gpmc_axi_bridge
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => m_axi_lite_rdata_net,
      en(0) => m_axi_lite_rvalid_net,
      q => wdata_lsw1_q_net
  );

  wdata_msw: entity work.xlregister_gpmc_axi_bridge
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register6_q_net,
      en(0) => logical2_y_net,
      q => wdata_msw_q_net
  );

  sr_flop: entity work.sr_flop_27fd76287e
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      s => logical2_y_net,
      r => logical10_y_net,
      out_x0 => register_q_net
    );

  sr_flop1: entity work.sr_flop1_171797e57a
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      s => logical2_y_net,
      r => logical11_y_net,
      out_x0 => register_q_net_x0
    );

  sr_flop2: entity work.sr_flop2_88b8ff2137
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      s => logical5_y_net,
      r => logical9_y_net,
      out_x0 => register_q_net_x1
    );

  sr_flop3: entity work.sr_flop3_37f193c616
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      s => logical4_y_net_x4,
      r => logical8_y_net,
      out_x0 => register_q_net_x2
    );

  redge_det: entity work.redge_det_f52227972b
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      in_x0 => logical13_y_net,
      out_x0 => logical4_y_net_x0
    );

  redge_det1: entity work.redge_det1_a880eba569
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      in_x0 => logical12_y_net,
      out_x0 => logical4_y_net_x1
    );

  redge_det2: entity work.redge_det2_7d56bee8e0
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      in_x0 => m_axi_lite_bvalid_net,
      out_x0 => logical4_y_net_x2
    );

  redge_det3: entity work.redge_det3_74cd140bb8
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      in_x0 => logical14_y_net,
      out_x0 => logical4_y_net_x3
    );

  redge_det4: entity work.redge_det4_cdc2ed7a05
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      in_x0 => m_axi_lite_arready_net,
      out_x0 => logical4_y_net_x4
    );
end structural;


-- Generated from Simulink block "gpmc_axi_bridge/default_clock_driver_gpmc_axi_bridge"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity default_clock_driver_gpmc_axi_bridge is
  port (
    sysclk: in std_logic;
    sysce: in std_logic;
    sysce_clr: in std_logic;
    ce_1: out std_logic;
    clk_1: out std_logic
  );
end default_clock_driver_gpmc_axi_bridge;

architecture structural of default_clock_driver_gpmc_axi_bridge is
  signal xlclockdriver_1_clk : std_logic;
  signal xlclockdriver_1_ce : std_logic;

begin
  clk_1 <= xlclockdriver_1_clk;
  ce_1 <= xlclockdriver_1_ce;

  xlclockdriver_1 : entity work.xlclockdriver
    generic map (
      log_2_period => 1,
      period => 1,
      use_bufg => 0
    )
    port map (
      sysce => sysce,
      sysclk => sysclk,
      sysclr => sysce_clr,
      ce => xlclockdriver_1_ce,
      clk => xlclockdriver_1_clk
    );
end structural;


-- Generated from Simulink block "gpmc_axi_bridge"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity gpmc_axi_bridge is
  port (
    clk: in std_logic;
    m_axi_lite_wready: in std_logic;
    m_axi_lite_rvalid: in std_logic;
    m_axi_lite_rresp: in std_logic_vector(1 downto 0);
    m_axi_lite_rdata: in std_logic_vector(31 downto 0);
    m_axi_lite_bvalid: in std_logic;
    m_axi_lite_bresp: in std_logic_vector(1 downto 0);
    m_axi_lite_awready: in std_logic;
    m_axi_lite_arready: in std_logic;
    m_axi_lite_aresetn: in std_logic;
    csn: in std_logic;
    wen: in std_logic;
    oen: in std_logic;
    a_d: in std_logic_vector(15 downto 0);
    advn: in std_logic;
    a: in std_logic_vector(2 downto 0);
    m_axi_lite_araddr: out std_logic_vector(18 downto 0);
    m_axi_lite_arvalid: out std_logic;
    m_axi_lite_awaddr: out std_logic_vector(18 downto 0);
    m_axi_lite_awvalid: out std_logic;
    m_axi_lite_bready: out std_logic;
    m_axi_lite_rready: out std_logic;
    m_axi_lite_wdata: out std_logic_vector(31 downto 0);
    m_axi_lite_wvalid: out std_logic;
    read_data_out: out std_logic_vector(15 downto 0);
    status: out std_logic_vector(3 downto 0);
    latched_addr_out: out std_logic_vector(18 downto 0)
  );
end gpmc_axi_bridge;

architecture structural of gpmc_axi_bridge is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "gpmc_axi_bridge,sysgen_core_2014_2,{compilation=IP Catalog,block_icon_display=Default,family=artix7,part=xc7a200t,speed=-2,package=ffg1156,synthesis_tool=Vivado,synthesis_language=vhdl,hdl_library=work,proj_type=Vivado,synth_file=Vivado Synthesis Defaults,impl_file=Vivado Implementation Defaults,clock_loc=,clock_wrapper=Clock Enables,directory=./gpmc_axi_bridge,testbench=0,create_interface_document=0,ce_clr=0,base_system_period_hardware=32.552,dcm_input_clock_period=5,base_system_period_simulink=1,sim_time=100,sim_status=0,}";

  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal clk_net: std_logic;
  signal m_axi_lite_wready_net: std_logic;
  signal m_axi_lite_rvalid_net: std_logic;
  signal m_axi_lite_rresp_net: std_logic_vector(1 downto 0);
  signal m_axi_lite_rdata_net: std_logic_vector(31 downto 0);
  signal m_axi_lite_bvalid_net: std_logic;
  signal m_axi_lite_bresp_net: std_logic_vector(1 downto 0);
  signal m_axi_lite_awready_net: std_logic;
  signal m_axi_lite_arready_net: std_logic;
  signal m_axi_lite_aresetn_net: std_logic;
  signal csn_net: std_logic;
  signal wen_net: std_logic;
  signal oen_net: std_logic;
  signal a_d_net: std_logic_vector(15 downto 0);
  signal advn_net: std_logic;
  signal a_net: std_logic_vector(2 downto 0);
  signal m_axi_lite_araddr_net: std_logic_vector(18 downto 0);
  signal m_axi_lite_arvalid_net: std_logic;
  signal m_axi_lite_awaddr_net: std_logic_vector(18 downto 0);
  signal m_axi_lite_awvalid_net: std_logic;
  signal m_axi_lite_bready_net: std_logic;
  signal m_axi_lite_rready_net: std_logic;
  signal m_axi_lite_wdata_net: std_logic_vector(31 downto 0);
  signal m_axi_lite_wvalid_net: std_logic;
  signal read_data_out_net: std_logic_vector(15 downto 0);
  signal status_net: std_logic_vector(3 downto 0);
  signal latched_addr_out_net: std_logic_vector(18 downto 0);

begin
  clk_net <= clk;
  m_axi_lite_wready_net <= m_axi_lite_wready;
  m_axi_lite_rvalid_net <= m_axi_lite_rvalid;
  m_axi_lite_rresp_net <= m_axi_lite_rresp;
  m_axi_lite_rdata_net <= m_axi_lite_rdata;
  m_axi_lite_bvalid_net <= m_axi_lite_bvalid;
  m_axi_lite_bresp_net <= m_axi_lite_bresp;
  m_axi_lite_awready_net <= m_axi_lite_awready;
  m_axi_lite_arready_net <= m_axi_lite_arready;
  m_axi_lite_aresetn_net <= m_axi_lite_aresetn;
  csn_net <= csn;
  wen_net <= wen;
  oen_net <= oen;
  a_d_net <= a_d;
  advn_net <= advn;
  a_net <= a;
  m_axi_lite_araddr <= m_axi_lite_araddr_net;
  m_axi_lite_arvalid <= m_axi_lite_arvalid_net;
  m_axi_lite_awaddr <= m_axi_lite_awaddr_net;
  m_axi_lite_awvalid <= m_axi_lite_awvalid_net;
  m_axi_lite_bready <= m_axi_lite_bready_net;
  m_axi_lite_rready <= m_axi_lite_rready_net;
  m_axi_lite_wdata <= m_axi_lite_wdata_net;
  m_axi_lite_wvalid <= m_axi_lite_wvalid_net;
  read_data_out <= read_data_out_net;
  status <= status_net;
  latched_addr_out <= latched_addr_out_net;

  gpmc_axi_bridge_struct: entity work.gpmc_axi_bridge_struct
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      m_axi_lite_wready => m_axi_lite_wready_net,
      m_axi_lite_rvalid => m_axi_lite_rvalid_net,
      m_axi_lite_rresp => m_axi_lite_rresp_net,
      m_axi_lite_rdata => m_axi_lite_rdata_net,
      m_axi_lite_bvalid => m_axi_lite_bvalid_net,
      m_axi_lite_bresp => m_axi_lite_bresp_net,
      m_axi_lite_awready => m_axi_lite_awready_net,
      m_axi_lite_arready => m_axi_lite_arready_net,
      m_axi_lite_aresetn => m_axi_lite_aresetn_net,
      csn => csn_net,
      wen => wen_net,
      oen => oen_net,
      a_d => a_d_net,
      advn => advn_net,
      a => a_net,
      m_axi_lite_araddr => m_axi_lite_araddr_net,
      m_axi_lite_arvalid => m_axi_lite_arvalid_net,
      m_axi_lite_awaddr => m_axi_lite_awaddr_net,
      m_axi_lite_awvalid => m_axi_lite_awvalid_net,
      m_axi_lite_bready => m_axi_lite_bready_net,
      m_axi_lite_rready => m_axi_lite_rready_net,
      m_axi_lite_wdata => m_axi_lite_wdata_net,
      m_axi_lite_wvalid => m_axi_lite_wvalid_net,
      read_data_out => read_data_out_net,
      status => status_net,
      latched_addr_out => latched_addr_out_net
    );

  default_clock_driver_gpmc_axi_bridge: entity work.default_clock_driver_gpmc_axi_bridge
    port map (
      sysclk => clk_net,
      sysce => '1',
      sysce_clr => '0',
      clk_1 => clk_1_net,
      ce_1 => ce_1_net
    );
end structural;
