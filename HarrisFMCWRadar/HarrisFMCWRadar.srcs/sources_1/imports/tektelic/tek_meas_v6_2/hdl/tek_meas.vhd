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

-- Generated from Simulink block "tek_meas/AXIS_to_parallel"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity axis_to_parallel_943a4f087a is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_1: in std_logic;
    ce_1: in std_logic;
    tdata: in std_logic_vector(15 downto 0);
    tvalid: in std_logic;
    tlast: in std_logic;
    i0: out std_logic_vector(15 downto 0);
    q0: out std_logic_vector(15 downto 0);
    i1: out std_logic_vector(15 downto 0);
    q1: out std_logic_vector(15 downto 0)
  );
end axis_to_parallel_943a4f087a;

architecture structural of axis_to_parallel_943a4f087a is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal delay_q_net: std_logic;
  signal register_q_net: std_logic_vector(15 downto 0);
  signal register1_q_net: std_logic_vector(15 downto 0);
  signal register2_q_net: std_logic_vector(15 downto 0);
  signal register3_q_net: std_logic_vector(15 downto 0);
  signal register4_q_net: std_logic_vector(15 downto 0);
  signal register5_q_net: std_logic_vector(15 downto 0);
  signal register6_q_net: std_logic_vector(15 downto 0);
  signal register7_q_net: std_logic_vector(15 downto 0);
  signal shift1_op_net_x11: std_logic_vector(15 downto 0);
  signal register10_q_net: std_logic;
  signal register9_q_net: std_logic;
  signal down_sample3_q_net: std_logic_vector(15 downto 0);
  signal down_sample2_q_net: std_logic_vector(15 downto 0);
  signal down_sample1_q_net: std_logic_vector(15 downto 0);
  signal down_sample_q_net: std_logic_vector(15 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  shift1_op_net_x11 <= tdata;
  register10_q_net <= tvalid;
  register9_q_net <= tlast;
  i0 <= down_sample3_q_net;
  q0 <= down_sample2_q_net;
  i1 <= down_sample1_q_net;
  q1 <= down_sample_q_net;

  delay: entity work.xldelay_tek_meas
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
      d(0) => register9_q_net,
      q(0) => delay_q_net
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register4_q_net,
      q => down_sample_q_net
  );

  down_sample1: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register5_q_net,
      q => down_sample1_q_net
  );

  down_sample2: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register6_q_net,
      q => down_sample2_q_net
  );

  down_sample3: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register7_q_net,
      q => down_sample3_q_net
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => shift1_op_net_x11,
      en(0) => register10_q_net,
      q => register_q_net
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net,
      en(0) => register10_q_net,
      q => register1_q_net
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net,
      en(0) => register10_q_net,
      q => register2_q_net
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net,
      en(0) => register10_q_net,
      q => register3_q_net
  );

  register4: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net,
      en(0) => delay_q_net,
      q => register4_q_net
  );

  register5: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net,
      en(0) => delay_q_net,
      q => register5_q_net
  );

  register6: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net,
      en(0) => delay_q_net,
      q => register6_q_net
  );

  register7: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register3_q_net,
      en(0) => delay_q_net,
      q => register7_q_net
  );
end structural;


-- Generated from Simulink block "tek_meas/AXIS_to_parallel1"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity axis_to_parallel1_a5f425d460 is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    clk_1: in std_logic;
    ce_1: in std_logic;
    tdata: in std_logic_vector(15 downto 0);
    tvalid: in std_logic;
    tlast: in std_logic;
    i0: out std_logic_vector(15 downto 0);
    q0: out std_logic_vector(15 downto 0);
    i1: out std_logic_vector(15 downto 0);
    q1: out std_logic_vector(15 downto 0)
  );
end axis_to_parallel1_a5f425d460;

architecture structural of axis_to_parallel1_a5f425d460 is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal delay_q_net_x0: std_logic;
  signal register_q_net_x0: std_logic_vector(15 downto 0);
  signal register1_q_net_x0: std_logic_vector(15 downto 0);
  signal register2_q_net_x0: std_logic_vector(15 downto 0);
  signal register3_q_net_x0: std_logic_vector(15 downto 0);
  signal register4_q_net_x0: std_logic_vector(15 downto 0);
  signal register5_q_net_x0: std_logic_vector(15 downto 0);
  signal register6_q_net_x0: std_logic_vector(15 downto 0);
  signal register7_q_net_x0: std_logic_vector(15 downto 0);
  signal shift2_op_net_x1: std_logic_vector(15 downto 0);
  signal register1_q_net_x5: std_logic;
  signal register3_q_net_x5: std_logic;
  signal down_sample3_q_net_x0: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x0: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x0: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x0: std_logic_vector(15 downto 0);

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  shift2_op_net_x1 <= tdata;
  register1_q_net_x5 <= tvalid;
  register3_q_net_x5 <= tlast;
  i0 <= down_sample3_q_net_x0;
  q0 <= down_sample2_q_net_x0;
  i1 <= down_sample1_q_net_x0;
  q1 <= down_sample_q_net_x0;

  delay: entity work.xldelay_tek_meas
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
      d(0) => register3_q_net_x5,
      q(0) => delay_q_net_x0
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register4_q_net_x0,
      q => down_sample_q_net_x0
  );

  down_sample1: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register5_q_net_x0,
      q => down_sample1_q_net_x0
  );

  down_sample2: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register6_q_net_x0,
      q => down_sample2_q_net_x0
  );

  down_sample3: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register7_q_net_x0,
      q => down_sample3_q_net_x0
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => shift2_op_net_x1,
      en(0) => register1_q_net_x5,
      q => register_q_net_x0
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net_x0,
      en(0) => register1_q_net_x5,
      q => register1_q_net_x0
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net_x0,
      en(0) => register1_q_net_x5,
      q => register2_q_net_x0
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x0,
      en(0) => register1_q_net_x5,
      q => register3_q_net_x0
  );

  register4: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net_x0,
      en(0) => delay_q_net_x0,
      q => register4_q_net_x0
  );

  register5: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net_x0,
      en(0) => delay_q_net_x0,
      q => register5_q_net_x0
  );

  register6: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x0,
      en(0) => delay_q_net_x0,
      q => register6_q_net_x0
  );

  register7: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register3_q_net_x0,
      en(0) => delay_q_net_x0,
      q => register7_q_net_x0
  );
end structural;


-- Generated from Simulink block "tek_meas/AXIS_to_parallel2"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity axis_to_parallel2_e59007d04d is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    clk_1: in std_logic;
    ce_1: in std_logic;
    tdata: in std_logic_vector(15 downto 0);
    tvalid: in std_logic;
    tlast: in std_logic;
    i0: out std_logic_vector(15 downto 0);
    q0: out std_logic_vector(15 downto 0);
    i1: out std_logic_vector(15 downto 0);
    q1: out std_logic_vector(15 downto 0)
  );
end axis_to_parallel2_e59007d04d;

architecture structural of axis_to_parallel2_e59007d04d is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal delay_q_net_x1: std_logic;
  signal register_q_net_x1: std_logic_vector(15 downto 0);
  signal register1_q_net_x1: std_logic_vector(15 downto 0);
  signal register2_q_net_x1: std_logic_vector(15 downto 0);
  signal register3_q_net_x1: std_logic_vector(15 downto 0);
  signal register4_q_net_x1: std_logic_vector(15 downto 0);
  signal register5_q_net_x1: std_logic_vector(15 downto 0);
  signal register6_q_net_x1: std_logic_vector(15 downto 0);
  signal register7_q_net_x1: std_logic_vector(15 downto 0);
  signal shift3_op_net: std_logic_vector(15 downto 0);
  signal register4_q_net_x5: std_logic;
  signal register6_q_net_x5: std_logic;
  signal down_sample3_q_net_x1: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x1: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x1: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x1: std_logic_vector(15 downto 0);

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  shift3_op_net <= tdata;
  register4_q_net_x5 <= tvalid;
  register6_q_net_x5 <= tlast;
  i0 <= down_sample3_q_net_x1;
  q0 <= down_sample2_q_net_x1;
  i1 <= down_sample1_q_net_x1;
  q1 <= down_sample_q_net_x1;

  delay: entity work.xldelay_tek_meas
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
      d(0) => register6_q_net_x5,
      q(0) => delay_q_net_x1
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register4_q_net_x1,
      q => down_sample_q_net_x1
  );

  down_sample1: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register5_q_net_x1,
      q => down_sample1_q_net_x1
  );

  down_sample2: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register6_q_net_x1,
      q => down_sample2_q_net_x1
  );

  down_sample3: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register7_q_net_x1,
      q => down_sample3_q_net_x1
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => shift3_op_net,
      en(0) => register4_q_net_x5,
      q => register_q_net_x1
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net_x1,
      en(0) => register4_q_net_x5,
      q => register1_q_net_x1
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net_x1,
      en(0) => register4_q_net_x5,
      q => register2_q_net_x1
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x1,
      en(0) => register4_q_net_x5,
      q => register3_q_net_x1
  );

  register4: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net_x1,
      en(0) => delay_q_net_x1,
      q => register4_q_net_x1
  );

  register5: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net_x1,
      en(0) => delay_q_net_x1,
      q => register5_q_net_x1
  );

  register6: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x1,
      en(0) => delay_q_net_x1,
      q => register6_q_net_x1
  );

  register7: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register3_q_net_x1,
      en(0) => delay_q_net_x1,
      q => register7_q_net_x1
  );
end structural;


-- Generated from Simulink block "tek_meas/AXIS_to_parallel3"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity axis_to_parallel3_7ca20824e6 is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    clk_1: in std_logic;
    ce_1: in std_logic;
    tdata: in std_logic_vector(15 downto 0);
    tvalid: in std_logic;
    tlast: in std_logic;
    i0: out std_logic_vector(15 downto 0);
    q0: out std_logic_vector(15 downto 0);
    i1: out std_logic_vector(15 downto 0);
    q1: out std_logic_vector(15 downto 0)
  );
end axis_to_parallel3_7ca20824e6;

architecture structural of axis_to_parallel3_7ca20824e6 is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal delay_q_net_x2: std_logic;
  signal register_q_net_x2: std_logic_vector(15 downto 0);
  signal register1_q_net_x2: std_logic_vector(15 downto 0);
  signal register2_q_net_x2: std_logic_vector(15 downto 0);
  signal register3_q_net_x2: std_logic_vector(15 downto 0);
  signal register4_q_net_x2: std_logic_vector(15 downto 0);
  signal register5_q_net_x2: std_logic_vector(15 downto 0);
  signal register6_q_net_x2: std_logic_vector(15 downto 0);
  signal register7_q_net_x2: std_logic_vector(15 downto 0);
  signal shift6_op_net: std_logic_vector(15 downto 0);
  signal register18_q_net: std_logic;
  signal register17_q_net: std_logic;
  signal down_sample3_q_net_x2: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x2: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x2: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x2: std_logic_vector(15 downto 0);

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  shift6_op_net <= tdata;
  register18_q_net <= tvalid;
  register17_q_net <= tlast;
  i0 <= down_sample3_q_net_x2;
  q0 <= down_sample2_q_net_x2;
  i1 <= down_sample1_q_net_x2;
  q1 <= down_sample_q_net_x2;

  delay: entity work.xldelay_tek_meas
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
      d(0) => register17_q_net,
      q(0) => delay_q_net_x2
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register4_q_net_x2,
      q => down_sample_q_net_x2
  );

  down_sample1: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register5_q_net_x2,
      q => down_sample1_q_net_x2
  );

  down_sample2: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register6_q_net_x2,
      q => down_sample2_q_net_x2
  );

  down_sample3: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register7_q_net_x2,
      q => down_sample3_q_net_x2
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => shift6_op_net,
      en(0) => register18_q_net,
      q => register_q_net_x2
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net_x2,
      en(0) => register18_q_net,
      q => register1_q_net_x2
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net_x2,
      en(0) => register18_q_net,
      q => register2_q_net_x2
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x2,
      en(0) => register18_q_net,
      q => register3_q_net_x2
  );

  register4: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net_x2,
      en(0) => delay_q_net_x2,
      q => register4_q_net_x2
  );

  register5: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net_x2,
      en(0) => delay_q_net_x2,
      q => register5_q_net_x2
  );

  register6: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x2,
      en(0) => delay_q_net_x2,
      q => register6_q_net_x2
  );

  register7: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register3_q_net_x2,
      en(0) => delay_q_net_x2,
      q => register7_q_net_x2
  );
end structural;


-- Generated from Simulink block "tek_meas/AXIS_to_parallel4"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity axis_to_parallel4_e921dc2638 is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    clk_1: in std_logic;
    ce_1: in std_logic;
    tdata: in std_logic_vector(15 downto 0);
    tvalid: in std_logic;
    tlast: in std_logic;
    i0: out std_logic_vector(15 downto 0);
    q0: out std_logic_vector(15 downto 0);
    i1: out std_logic_vector(15 downto 0);
    q1: out std_logic_vector(15 downto 0)
  );
end axis_to_parallel4_e921dc2638;

architecture structural of axis_to_parallel4_e921dc2638 is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal delay_q_net_x3: std_logic;
  signal register_q_net_x3: std_logic_vector(15 downto 0);
  signal register1_q_net_x3: std_logic_vector(15 downto 0);
  signal register2_q_net_x3: std_logic_vector(15 downto 0);
  signal register3_q_net_x3: std_logic_vector(15 downto 0);
  signal register4_q_net_x3: std_logic_vector(15 downto 0);
  signal register5_q_net_x3: std_logic_vector(15 downto 0);
  signal register6_q_net_x3: std_logic_vector(15 downto 0);
  signal register7_q_net_x3: std_logic_vector(15 downto 0);
  signal shift4_op_net: std_logic_vector(15 downto 0);
  signal register7_q_net_x5: std_logic;
  signal register12_q_net: std_logic;
  signal down_sample3_q_net_x3: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x3: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x3: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x3: std_logic_vector(15 downto 0);

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  shift4_op_net <= tdata;
  register7_q_net_x5 <= tvalid;
  register12_q_net <= tlast;
  i0 <= down_sample3_q_net_x3;
  q0 <= down_sample2_q_net_x3;
  i1 <= down_sample1_q_net_x3;
  q1 <= down_sample_q_net_x3;

  delay: entity work.xldelay_tek_meas
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
      d(0) => register12_q_net,
      q(0) => delay_q_net_x3
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register4_q_net_x3,
      q => down_sample_q_net_x3
  );

  down_sample1: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register5_q_net_x3,
      q => down_sample1_q_net_x3
  );

  down_sample2: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register6_q_net_x3,
      q => down_sample2_q_net_x3
  );

  down_sample3: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register7_q_net_x3,
      q => down_sample3_q_net_x3
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => shift4_op_net,
      en(0) => register7_q_net_x5,
      q => register_q_net_x3
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net_x3,
      en(0) => register7_q_net_x5,
      q => register1_q_net_x3
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net_x3,
      en(0) => register7_q_net_x5,
      q => register2_q_net_x3
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x3,
      en(0) => register7_q_net_x5,
      q => register3_q_net_x3
  );

  register4: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net_x3,
      en(0) => delay_q_net_x3,
      q => register4_q_net_x3
  );

  register5: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net_x3,
      en(0) => delay_q_net_x3,
      q => register5_q_net_x3
  );

  register6: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x3,
      en(0) => delay_q_net_x3,
      q => register6_q_net_x3
  );

  register7: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register3_q_net_x3,
      en(0) => delay_q_net_x3,
      q => register7_q_net_x3
  );
end structural;


-- Generated from Simulink block "tek_meas/AXIS_to_parallel5"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity axis_to_parallel5_034ebf7873 is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    clk_1: in std_logic;
    ce_1: in std_logic;
    tdata: in std_logic_vector(15 downto 0);
    tvalid: in std_logic;
    tlast: in std_logic;
    i0: out std_logic_vector(15 downto 0);
    q0: out std_logic_vector(15 downto 0);
    i1: out std_logic_vector(15 downto 0);
    q1: out std_logic_vector(15 downto 0)
  );
end axis_to_parallel5_034ebf7873;

architecture structural of axis_to_parallel5_034ebf7873 is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal delay_q_net_x4: std_logic;
  signal register_q_net_x4: std_logic_vector(15 downto 0);
  signal register1_q_net_x4: std_logic_vector(15 downto 0);
  signal register2_q_net_x4: std_logic_vector(15 downto 0);
  signal register3_q_net_x4: std_logic_vector(15 downto 0);
  signal register4_q_net_x4: std_logic_vector(15 downto 0);
  signal register5_q_net_x4: std_logic_vector(15 downto 0);
  signal register6_q_net_x4: std_logic_vector(15 downto 0);
  signal register7_q_net_x4: std_logic_vector(15 downto 0);
  signal shift5_op_net: std_logic_vector(15 downto 0);
  signal register15_q_net: std_logic;
  signal register14_q_net: std_logic;
  signal down_sample3_q_net_x4: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x4: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x4: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x4: std_logic_vector(15 downto 0);

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  shift5_op_net <= tdata;
  register15_q_net <= tvalid;
  register14_q_net <= tlast;
  i0 <= down_sample3_q_net_x4;
  q0 <= down_sample2_q_net_x4;
  i1 <= down_sample1_q_net_x4;
  q1 <= down_sample_q_net_x4;

  delay: entity work.xldelay_tek_meas
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
      d(0) => register14_q_net,
      q(0) => delay_q_net_x4
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register4_q_net_x4,
      q => down_sample_q_net_x4
  );

  down_sample1: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register5_q_net_x4,
      q => down_sample1_q_net_x4
  );

  down_sample2: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register6_q_net_x4,
      q => down_sample2_q_net_x4
  );

  down_sample3: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register7_q_net_x4,
      q => down_sample3_q_net_x4
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => shift5_op_net,
      en(0) => register15_q_net,
      q => register_q_net_x4
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net_x4,
      en(0) => register15_q_net,
      q => register1_q_net_x4
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net_x4,
      en(0) => register15_q_net,
      q => register2_q_net_x4
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x4,
      en(0) => register15_q_net,
      q => register3_q_net_x4
  );

  register4: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net_x4,
      en(0) => delay_q_net_x4,
      q => register4_q_net_x4
  );

  register5: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net_x4,
      en(0) => delay_q_net_x4,
      q => register5_q_net_x4
  );

  register6: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x4,
      en(0) => delay_q_net_x4,
      q => register6_q_net_x4
  );

  register7: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register3_q_net_x4,
      en(0) => delay_q_net_x4,
      q => register7_q_net_x4
  );
end structural;


-- Generated from Simulink block "tek_meas/DDS/gain"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity gain_d2e498c227 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    in_x0: in std_logic_vector(15 downto 0);
    sel: in std_logic_vector(1 downto 0);
    out_x0: out std_logic_vector(15 downto 0)
  );
end gain_d2e498c227;

architecture structural of gain_d2e498c227 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal shift_op_net: std_logic_vector(15 downto 0);
  signal shift1_op_net: std_logic_vector(15 downto 0);
  signal shift2_op_net: std_logic_vector(15 downto 0);
  signal cos_sin_douta_net: std_logic_vector(15 downto 0);
  signal down_sample7_q_net: std_logic_vector(1 downto 0);
  signal mux_y_net: std_logic_vector(15 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  cos_sin_douta_net <= in_x0;
  down_sample7_q_net <= sel;
  out_x0 <= mux_y_net;

  mux: entity work.sysgen_mux_8126b482ff
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel => down_sample7_q_net,
      d0 => cos_sin_douta_net,
      d1 => shift_op_net,
      d2 => shift1_op_net,
      d3 => shift2_op_net,
      y => mux_y_net
  );

  shift: entity work.sysgen_shift_b21cabcb3f
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => cos_sin_douta_net,
      op => shift_op_net
  );

  shift1: entity work.sysgen_shift_ce305b1e9e
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => cos_sin_douta_net,
      op => shift1_op_net
  );

  shift2: entity work.sysgen_shift_32b11b7b5f
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => cos_sin_douta_net,
      op => shift2_op_net
  );
end structural;


-- Generated from Simulink block "tek_meas/DDS/gain1"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity gain1_bdca480f25 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    in_x0: in std_logic_vector(15 downto 0);
    sel: in std_logic_vector(1 downto 0);
    out_x0: out std_logic_vector(15 downto 0)
  );
end gain1_bdca480f25;

architecture structural of gain1_bdca480f25 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal shift_op_net_x0: std_logic_vector(15 downto 0);
  signal shift1_op_net_x0: std_logic_vector(15 downto 0);
  signal shift2_op_net_x0: std_logic_vector(15 downto 0);
  signal cos_sin_doutb_net: std_logic_vector(15 downto 0);
  signal down_sample7_q_net: std_logic_vector(1 downto 0);
  signal mux_y_net_x0: std_logic_vector(15 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  cos_sin_doutb_net <= in_x0;
  down_sample7_q_net <= sel;
  out_x0 <= mux_y_net_x0;

  mux: entity work.sysgen_mux_8126b482ff
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel => down_sample7_q_net,
      d0 => cos_sin_doutb_net,
      d1 => shift_op_net_x0,
      d2 => shift1_op_net_x0,
      d3 => shift2_op_net_x0,
      y => mux_y_net_x0
  );

  shift: entity work.sysgen_shift_b21cabcb3f
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => cos_sin_doutb_net,
      op => shift_op_net_x0
  );

  shift1: entity work.sysgen_shift_ce305b1e9e
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => cos_sin_doutb_net,
      op => shift1_op_net_x0
  );

  shift2: entity work.sysgen_shift_32b11b7b5f
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => cos_sin_doutb_net,
      op => shift2_op_net_x0
  );
end structural;


-- Generated from Simulink block "tek_meas/DDS"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity dds_1ad93ec5bf is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    dds_gain: in std_logic_vector(1 downto 0);
    dds_phase: in std_logic_vector(13 downto 0);
    i: out std_logic_vector(15 downto 0);
    q: out std_logic_vector(15 downto 0)
  );
end dds_1ad93ec5bf;

architecture structural of dds_1ad93ec5bf is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub_s_net: std_logic_vector(13 downto 0);
  signal addsub1_s_net: std_logic_vector(13 downto 0);
  signal constant14_op_net_x0: std_logic_vector(13 downto 0);
  signal constant24_op_net_x0: std_logic_vector(15 downto 0);
  signal constant25_op_net_x0: std_logic;
  signal register22_q_net: std_logic_vector(13 downto 0);
  signal cos_sin_douta_net: std_logic_vector(15 downto 0);
  signal cos_sin_doutb_net: std_logic_vector(15 downto 0);
  signal down_sample7_q_net: std_logic_vector(1 downto 0);
  signal down_sample6_q_net: std_logic_vector(13 downto 0);
  signal mux_y_net: std_logic_vector(15 downto 0);
  signal mux_y_net_x0: std_logic_vector(15 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  down_sample7_q_net <= dds_gain;
  down_sample6_q_net <= dds_phase;
  i <= mux_y_net;
  q <= mux_y_net_x0;

  addsub: entity work.xladdsub_tek_meas
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 14,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 14,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 15,
      core_name0 => "tek_meas_c_addsub_v12_0_0",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 15,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 14)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      a => register22_q_net,
      b => down_sample6_q_net,
      s => addsub_s_net
  );

  addsub1: entity work.xladdsub_tek_meas
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 14,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 14,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 15,
      core_name0 => "tek_meas_c_addsub_v12_0_1",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 15,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 14)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      a => register22_q_net,
      b => constant14_op_net_x0,
      s => addsub1_s_net
  );

  constant14: entity work.sysgen_constant_ae18a6445a
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant14_op_net_x0
  );

  constant24: entity work.sysgen_constant_242e3bf62f
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant24_op_net_x0
  );

  constant25: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant25_op_net_x0
  );

  register22: entity work.xlregister_tek_meas
    generic map (
      d_width => 14,
      init_value => b"00000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      en => "1",
      rst => "0",
      d => addsub_s_net,
      q => register22_q_net
  );

  cos_sin: entity work.xldpram_tek_meas
    generic map (
      c_address_width_a => 14,
      c_address_width_b => 14,
      c_width_a => 16,
      c_width_b => 16,
      core_name0 => "tek_meas_blk_mem_gen_v8_2_0",
      latency => 1)
    port map (
      b_ce => ce_4_net,
      b_clk => clk_4_net,
      a_ce => ce_4_net,
      a_clk => clk_4_net,
      ena => "1",
      enb => "1",
      rsta => "0",
      rstb => "0",
      addra => register22_q_net,
      dina => constant24_op_net_x0,
      wea(0) => constant25_op_net_x0,
      addrb => addsub1_s_net,
      dinb => constant24_op_net_x0,
      web(0) => constant25_op_net_x0,
      douta => cos_sin_douta_net,
      doutb => cos_sin_doutb_net
  );

  gain: entity work.gain_d2e498c227
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      in_x0 => cos_sin_douta_net,
      sel => down_sample7_q_net,
      out_x0 => mux_y_net
    );

  gain1: entity work.gain1_bdca480f25
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      in_x0 => cos_sin_doutb_net,
      sel => down_sample7_q_net,
      out_x0 => mux_y_net_x0
    );
end structural;


-- Generated from Simulink block "tek_meas/Power/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_5d03491813 is
  port (
    clk_2: in std_logic;
    ce_2: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_5d03491813;

architecture structural of tdm_5d03491813 is
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal counter_op_net_x1: std_logic;
  signal convert6_dout_net: std_logic_vector(17 downto 0);
  signal convert_dout_net: std_logic_vector(17 downto 0);
  signal constant1_op_net: std_logic;
  signal mux_y_net_x3: std_logic_vector(17 downto 0);

begin
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  convert6_dout_net <= in1;
  convert_dout_net <= in0;
  constant1_op_net <= rst;
  out_x0 <= mux_y_net_x3;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant1_op_net,
      op(0) => counter_op_net_x1
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x1,
      d0 => convert_dout_net,
      d1 => convert6_dout_net,
      y => mux_y_net_x3
  );
end structural;


-- Generated from Simulink block "tek_meas/Power"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power_9efade0961 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end power_9efade0961;

architecture structural of power_9efade0961 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal convert_dout_net_x0: std_logic;
  signal convert1_dout_net_x0: std_logic_vector(31 downto 0);
  signal convert2_dout_net_x0: std_logic_vector(29 downto 0);
  signal counter_op_net_x0: std_logic;
  signal dsp48e1_p_net: std_logic_vector(47 downto 0);
  signal inverter_op_net: std_logic;
  signal mux_y_net_x2: std_logic_vector(19 downto 0);
  signal opmode_op_net: std_logic_vector(19 downto 0);
  signal opmode1_op_net: std_logic_vector(19 downto 0);
  signal register_q_net_x5: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(47 downto 0);
  signal constant1_op_net: std_logic;
  signal convert6_dout_net: std_logic_vector(17 downto 0);
  signal convert_dout_net: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x6: std_logic_vector(31 downto 0);
  signal mux_y_net_x3: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  constant1_op_net <= reset;
  convert6_dout_net <= in_q;
  convert_dout_net <= in_i;
  power <= down_sample_q_net_x6;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net,
      dout(0) => convert_dout_net_x0
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 31,
      dout_width => 32,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => register_q_net_x5,
      dout => convert1_dout_net_x0
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net,
      dout => convert2_dout_net_x0
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant1_op_net,
      op(0) => counter_op_net_x0
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x0,
      b => reinterpret_output_port_net,
      c => dsp48e1_p_net,
      op => mux_y_net_x2,
      p => dsp48e1_p_net
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 31,
      d_width => 32,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 31,
      q_width => 32)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert1_dout_net_x0,
      q => down_sample_q_net_x6
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      ip(0) => counter_op_net_x0,
      op(0) => inverter_op_net
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x0,
      d0 => opmode_op_net,
      d1 => opmode1_op_net,
      y => mux_y_net_x2
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      rst => "0",
      d => reinterpret1_output_port_net,
      en(0) => convert_dout_net_x0,
      q => register_q_net_x5
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x3,
      output_port => reinterpret_output_port_net
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net,
      output_port => reinterpret1_output_port_net
  );

  tdm: entity work.tdm_5d03491813
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      in1 => convert6_dout_net,
      in0 => convert_dout_net,
      rst => constant1_op_net,
      out_x0 => mux_y_net_x3
    );
end structural;


-- Generated from Simulink block "tek_meas/Power1/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_ca66a805e1 is
  port (
    clk_2: in std_logic;
    ce_2: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_ca66a805e1;

architecture structural of tdm_ca66a805e1 is
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal counter_op_net_x3: std_logic;
  signal convert3_dout_net: std_logic_vector(17 downto 0);
  signal convert1_dout_net: std_logic_vector(17 downto 0);
  signal constant3_op_net: std_logic;
  signal mux_y_net_x5: std_logic_vector(17 downto 0);

begin
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  convert3_dout_net <= in1;
  convert1_dout_net <= in0;
  constant3_op_net <= rst;
  out_x0 <= mux_y_net_x5;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant3_op_net,
      op(0) => counter_op_net_x3
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x3,
      d0 => convert1_dout_net,
      d1 => convert3_dout_net,
      y => mux_y_net_x5
  );
end structural;


-- Generated from Simulink block "tek_meas/Power1"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power1_2589964eb0 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end power1_2589964eb0;

architecture structural of power1_2589964eb0 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal convert_dout_net_x1: std_logic;
  signal convert2_dout_net_x1: std_logic_vector(29 downto 0);
  signal counter_op_net_x2: std_logic;
  signal dsp48e1_p_net_x0: std_logic_vector(47 downto 0);
  signal inverter_op_net_x0: std_logic;
  signal mux_y_net_x4: std_logic_vector(19 downto 0);
  signal opmode_op_net_x0: std_logic_vector(19 downto 0);
  signal opmode1_op_net_x0: std_logic_vector(19 downto 0);
  signal register_q_net_x6: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net_x0: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net_x0: std_logic_vector(47 downto 0);
  signal convert3_dout_net_x0: std_logic_vector(31 downto 0);
  signal constant3_op_net: std_logic;
  signal convert3_dout_net: std_logic_vector(17 downto 0);
  signal convert1_dout_net: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x7: std_logic_vector(31 downto 0);
  signal mux_y_net_x5: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  constant3_op_net <= reset;
  convert3_dout_net <= in_q;
  convert1_dout_net <= in_i;
  power <= down_sample_q_net_x7;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net_x0,
      dout(0) => convert_dout_net_x1
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net_x0,
      dout => convert2_dout_net_x1
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant3_op_net,
      op(0) => counter_op_net_x2
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x1,
      b => reinterpret_output_port_net_x0,
      c => dsp48e1_p_net_x0,
      op => mux_y_net_x4,
      p => dsp48e1_p_net_x0
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 31,
      d_width => 32,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 31,
      q_width => 32)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert3_dout_net_x0,
      q => down_sample_q_net_x7
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      ip(0) => counter_op_net_x2,
      op(0) => inverter_op_net_x0
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x2,
      d0 => opmode_op_net_x0,
      d1 => opmode1_op_net_x0,
      y => mux_y_net_x4
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net_x0
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net_x0
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      rst => "0",
      d => reinterpret1_output_port_net_x0,
      en(0) => convert_dout_net_x1,
      q => register_q_net_x6
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x5,
      output_port => reinterpret_output_port_net_x0
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net_x0,
      output_port => reinterpret1_output_port_net_x0
  );

  convert3: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 31,
      dout_width => 32,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => register_q_net_x6,
      dout => convert3_dout_net_x0
  );

  tdm: entity work.tdm_ca66a805e1
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      in1 => convert3_dout_net,
      in0 => convert1_dout_net,
      rst => constant3_op_net,
      out_x0 => mux_y_net_x5
    );
end structural;


-- Generated from Simulink block "tek_meas/Power10/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_e3548fc983 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_e3548fc983;

architecture structural of tdm_e3548fc983 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal counter_op_net_x5: std_logic;
  signal convert23_dout_net: std_logic_vector(17 downto 0);
  signal convert22_dout_net: std_logic_vector(17 downto 0);
  signal constant36_op_net: std_logic;
  signal mux_y_net_x7: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  convert23_dout_net <= in1;
  convert22_dout_net <= in0;
  constant36_op_net <= rst;
  out_x0 <= mux_y_net_x7;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant36_op_net,
      op(0) => counter_op_net_x5
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x5,
      d0 => convert22_dout_net,
      d1 => convert23_dout_net,
      y => mux_y_net_x7
  );
end structural;


-- Generated from Simulink block "tek_meas/Power10"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power10_93fb20817a is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    clk_4: in std_logic;
    ce_4: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end power10_93fb20817a;

architecture structural of power10_93fb20817a is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal convert_dout_net_x2: std_logic;
  signal convert2_dout_net_x2: std_logic_vector(29 downto 0);
  signal counter_op_net_x4: std_logic;
  signal dsp48e1_p_net_x1: std_logic_vector(47 downto 0);
  signal inverter_op_net_x1: std_logic;
  signal mux_y_net_x6: std_logic_vector(19 downto 0);
  signal opmode_op_net_x1: std_logic_vector(19 downto 0);
  signal opmode1_op_net_x1: std_logic_vector(19 downto 0);
  signal register_q_net_x7: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net_x1: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net_x1: std_logic_vector(47 downto 0);
  signal convert3_dout_net_x1: std_logic_vector(31 downto 0);
  signal constant36_op_net: std_logic;
  signal convert23_dout_net: std_logic_vector(17 downto 0);
  signal convert22_dout_net: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x8: std_logic_vector(31 downto 0);
  signal mux_y_net_x7: std_logic_vector(17 downto 0);

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant36_op_net <= reset;
  convert23_dout_net <= in_q;
  convert22_dout_net <= in_i;
  power <= down_sample_q_net_x8;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net_x1,
      dout(0) => convert_dout_net_x2
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net_x1,
      dout => convert2_dout_net_x2
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant36_op_net,
      op(0) => counter_op_net_x4
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x2,
      b => reinterpret_output_port_net_x1,
      c => dsp48e1_p_net_x1,
      op => mux_y_net_x6,
      p => dsp48e1_p_net_x1
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 31,
      d_width => 32,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 31,
      q_width => 32)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert3_dout_net_x1,
      q => down_sample_q_net_x8
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip(0) => counter_op_net_x4,
      op(0) => inverter_op_net_x1
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x4,
      d0 => opmode_op_net_x1,
      d1 => opmode1_op_net_x1,
      y => mux_y_net_x6
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net_x1
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net_x1
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => reinterpret1_output_port_net_x1,
      en(0) => convert_dout_net_x2,
      q => register_q_net_x7
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x7,
      output_port => reinterpret_output_port_net_x1
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net_x1,
      output_port => reinterpret1_output_port_net_x1
  );

  convert3: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 31,
      dout_width => 32,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => register_q_net_x7,
      dout => convert3_dout_net_x1
  );

  tdm: entity work.tdm_e3548fc983
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      in1 => convert23_dout_net,
      in0 => convert22_dout_net,
      rst => constant36_op_net,
      out_x0 => mux_y_net_x7
    );
end structural;


-- Generated from Simulink block "tek_meas/Power11/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_17dbc858fb is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_17dbc858fb;

architecture structural of tdm_17dbc858fb is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal counter_op_net_x7: std_logic;
  signal convert21_dout_net: std_logic_vector(17 downto 0);
  signal convert20_dout_net: std_logic_vector(17 downto 0);
  signal constant_op_net: std_logic;
  signal mux_y_net_x9: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  convert21_dout_net <= in1;
  convert20_dout_net <= in0;
  constant_op_net <= rst;
  out_x0 <= mux_y_net_x9;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant_op_net,
      op(0) => counter_op_net_x7
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x7,
      d0 => convert20_dout_net,
      d1 => convert21_dout_net,
      y => mux_y_net_x9
  );
end structural;


-- Generated from Simulink block "tek_meas/Power11"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power11_b1f4c583bc is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    clk_4: in std_logic;
    ce_4: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end power11_b1f4c583bc;

architecture structural of power11_b1f4c583bc is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal convert_dout_net_x3: std_logic;
  signal convert2_dout_net_x3: std_logic_vector(29 downto 0);
  signal counter_op_net_x6: std_logic;
  signal dsp48e1_p_net_x2: std_logic_vector(47 downto 0);
  signal inverter_op_net_x2: std_logic;
  signal mux_y_net_x8: std_logic_vector(19 downto 0);
  signal opmode_op_net_x2: std_logic_vector(19 downto 0);
  signal opmode1_op_net_x2: std_logic_vector(19 downto 0);
  signal register_q_net_x8: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net_x2: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net_x2: std_logic_vector(47 downto 0);
  signal convert3_dout_net_x2: std_logic_vector(31 downto 0);
  signal constant_op_net: std_logic;
  signal convert21_dout_net: std_logic_vector(17 downto 0);
  signal convert20_dout_net: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x9: std_logic_vector(31 downto 0);
  signal mux_y_net_x9: std_logic_vector(17 downto 0);

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant_op_net <= reset;
  convert21_dout_net <= in_q;
  convert20_dout_net <= in_i;
  power <= down_sample_q_net_x9;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net_x2,
      dout(0) => convert_dout_net_x3
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net_x2,
      dout => convert2_dout_net_x3
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant_op_net,
      op(0) => counter_op_net_x6
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x3,
      b => reinterpret_output_port_net_x2,
      c => dsp48e1_p_net_x2,
      op => mux_y_net_x8,
      p => dsp48e1_p_net_x2
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 31,
      d_width => 32,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 31,
      q_width => 32)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert3_dout_net_x2,
      q => down_sample_q_net_x9
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip(0) => counter_op_net_x6,
      op(0) => inverter_op_net_x2
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x6,
      d0 => opmode_op_net_x2,
      d1 => opmode1_op_net_x2,
      y => mux_y_net_x8
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net_x2
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net_x2
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => reinterpret1_output_port_net_x2,
      en(0) => convert_dout_net_x3,
      q => register_q_net_x8
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x9,
      output_port => reinterpret_output_port_net_x2
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net_x2,
      output_port => reinterpret1_output_port_net_x2
  );

  convert3: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 31,
      dout_width => 32,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => register_q_net_x8,
      dout => convert3_dout_net_x2
  );

  tdm: entity work.tdm_17dbc858fb
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      in1 => convert21_dout_net,
      in0 => convert20_dout_net,
      rst => constant_op_net,
      out_x0 => mux_y_net_x9
    );
end structural;


-- Generated from Simulink block "tek_meas/Power2/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_c928f7db46 is
  port (
    clk_2: in std_logic;
    ce_2: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_c928f7db46;

architecture structural of tdm_c928f7db46 is
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal counter_op_net_x9: std_logic;
  signal convert10_dout_net: std_logic_vector(17 downto 0);
  signal convert7_dout_net: std_logic_vector(17 downto 0);
  signal constant35_op_net: std_logic;
  signal mux_y_net_x11: std_logic_vector(17 downto 0);

begin
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  convert10_dout_net <= in1;
  convert7_dout_net <= in0;
  constant35_op_net <= rst;
  out_x0 <= mux_y_net_x11;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant35_op_net,
      op(0) => counter_op_net_x9
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x9,
      d0 => convert7_dout_net,
      d1 => convert10_dout_net,
      y => mux_y_net_x11
  );
end structural;


-- Generated from Simulink block "tek_meas/Power2"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power2_2fa3a8fc39 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end power2_2fa3a8fc39;

architecture structural of power2_2fa3a8fc39 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal convert_dout_net_x4: std_logic;
  signal convert2_dout_net_x4: std_logic_vector(29 downto 0);
  signal counter_op_net_x8: std_logic;
  signal dsp48e1_p_net_x3: std_logic_vector(47 downto 0);
  signal inverter_op_net_x3: std_logic;
  signal mux_y_net_x10: std_logic_vector(19 downto 0);
  signal opmode_op_net_x3: std_logic_vector(19 downto 0);
  signal opmode1_op_net_x3: std_logic_vector(19 downto 0);
  signal register_q_net_x9: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net_x3: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net_x3: std_logic_vector(47 downto 0);
  signal convert1_dout_net_x1: std_logic_vector(31 downto 0);
  signal constant35_op_net: std_logic;
  signal convert10_dout_net: std_logic_vector(17 downto 0);
  signal convert7_dout_net: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x10: std_logic_vector(31 downto 0);
  signal mux_y_net_x11: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  constant35_op_net <= reset;
  convert10_dout_net <= in_q;
  convert7_dout_net <= in_i;
  power <= down_sample_q_net_x10;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net_x3,
      dout(0) => convert_dout_net_x4
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net_x3,
      dout => convert2_dout_net_x4
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant35_op_net,
      op(0) => counter_op_net_x8
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x4,
      b => reinterpret_output_port_net_x3,
      c => dsp48e1_p_net_x3,
      op => mux_y_net_x10,
      p => dsp48e1_p_net_x3
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 31,
      d_width => 32,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 31,
      q_width => 32)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert1_dout_net_x1,
      q => down_sample_q_net_x10
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      ip(0) => counter_op_net_x8,
      op(0) => inverter_op_net_x3
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x8,
      d0 => opmode_op_net_x3,
      d1 => opmode1_op_net_x3,
      y => mux_y_net_x10
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net_x3
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net_x3
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      rst => "0",
      d => reinterpret1_output_port_net_x3,
      en(0) => convert_dout_net_x4,
      q => register_q_net_x9
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x11,
      output_port => reinterpret_output_port_net_x3
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net_x3,
      output_port => reinterpret1_output_port_net_x3
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 31,
      dout_width => 32,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => register_q_net_x9,
      dout => convert1_dout_net_x1
  );

  tdm: entity work.tdm_c928f7db46
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      in1 => convert10_dout_net,
      in0 => convert7_dout_net,
      rst => constant35_op_net,
      out_x0 => mux_y_net_x11
    );
end structural;


-- Generated from Simulink block "tek_meas/Power3/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_1c4ffeb6e2 is
  port (
    clk_2: in std_logic;
    ce_2: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_1c4ffeb6e2;

architecture structural of tdm_1c4ffeb6e2 is
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal counter_op_net_x11: std_logic;
  signal convert2_dout_net: std_logic_vector(17 downto 0);
  signal convert4_dout_net: std_logic_vector(17 downto 0);
  signal constant14_op_net: std_logic;
  signal mux_y_net_x13: std_logic_vector(17 downto 0);

begin
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  convert2_dout_net <= in1;
  convert4_dout_net <= in0;
  constant14_op_net <= rst;
  out_x0 <= mux_y_net_x13;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant14_op_net,
      op(0) => counter_op_net_x11
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x11,
      d0 => convert4_dout_net,
      d1 => convert2_dout_net,
      y => mux_y_net_x13
  );
end structural;


-- Generated from Simulink block "tek_meas/Power3"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power3_ec2ea25ddf is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end power3_ec2ea25ddf;

architecture structural of power3_ec2ea25ddf is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal convert_dout_net_x5: std_logic;
  signal convert2_dout_net_x5: std_logic_vector(29 downto 0);
  signal counter_op_net_x10: std_logic;
  signal dsp48e1_p_net_x4: std_logic_vector(47 downto 0);
  signal inverter_op_net_x4: std_logic;
  signal mux_y_net_x12: std_logic_vector(19 downto 0);
  signal opmode_op_net_x4: std_logic_vector(19 downto 0);
  signal opmode1_op_net_x4: std_logic_vector(19 downto 0);
  signal register_q_net_x10: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net_x4: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net_x4: std_logic_vector(47 downto 0);
  signal convert1_dout_net_x2: std_logic_vector(31 downto 0);
  signal constant14_op_net: std_logic;
  signal convert2_dout_net: std_logic_vector(17 downto 0);
  signal convert4_dout_net: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x11: std_logic_vector(31 downto 0);
  signal mux_y_net_x13: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  constant14_op_net <= reset;
  convert2_dout_net <= in_q;
  convert4_dout_net <= in_i;
  power <= down_sample_q_net_x11;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net_x4,
      dout(0) => convert_dout_net_x5
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net_x4,
      dout => convert2_dout_net_x5
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant14_op_net,
      op(0) => counter_op_net_x10
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x5,
      b => reinterpret_output_port_net_x4,
      c => dsp48e1_p_net_x4,
      op => mux_y_net_x12,
      p => dsp48e1_p_net_x4
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 31,
      d_width => 32,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 31,
      q_width => 32)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert1_dout_net_x2,
      q => down_sample_q_net_x11
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      ip(0) => counter_op_net_x10,
      op(0) => inverter_op_net_x4
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x10,
      d0 => opmode_op_net_x4,
      d1 => opmode1_op_net_x4,
      y => mux_y_net_x12
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net_x4
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net_x4
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      rst => "0",
      d => reinterpret1_output_port_net_x4,
      en(0) => convert_dout_net_x5,
      q => register_q_net_x10
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x13,
      output_port => reinterpret_output_port_net_x4
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net_x4,
      output_port => reinterpret1_output_port_net_x4
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 31,
      dout_width => 32,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => register_q_net_x10,
      dout => convert1_dout_net_x2
  );

  tdm: entity work.tdm_1c4ffeb6e2
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      in1 => convert2_dout_net,
      in0 => convert4_dout_net,
      rst => constant14_op_net,
      out_x0 => mux_y_net_x13
    );
end structural;


-- Generated from Simulink block "tek_meas/Power4/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_c25f509df6 is
  port (
    clk_2: in std_logic;
    ce_2: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_c25f509df6;

architecture structural of tdm_c25f509df6 is
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal counter_op_net_x13: std_logic;
  signal convert9_dout_net: std_logic_vector(17 downto 0);
  signal convert5_dout_net: std_logic_vector(17 downto 0);
  signal constant22_op_net: std_logic;
  signal mux_y_net_x15: std_logic_vector(17 downto 0);

begin
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  convert9_dout_net <= in1;
  convert5_dout_net <= in0;
  constant22_op_net <= rst;
  out_x0 <= mux_y_net_x15;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant22_op_net,
      op(0) => counter_op_net_x13
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x13,
      d0 => convert5_dout_net,
      d1 => convert9_dout_net,
      y => mux_y_net_x15
  );
end structural;


-- Generated from Simulink block "tek_meas/Power4"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power4_88674adcbc is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end power4_88674adcbc;

architecture structural of power4_88674adcbc is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal convert_dout_net_x6: std_logic;
  signal convert2_dout_net_x6: std_logic_vector(29 downto 0);
  signal counter_op_net_x12: std_logic;
  signal dsp48e1_p_net_x5: std_logic_vector(47 downto 0);
  signal inverter_op_net_x5: std_logic;
  signal mux_y_net_x14: std_logic_vector(19 downto 0);
  signal opmode_op_net_x5: std_logic_vector(19 downto 0);
  signal opmode1_op_net_x5: std_logic_vector(19 downto 0);
  signal register_q_net_x11: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net_x5: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net_x5: std_logic_vector(47 downto 0);
  signal convert3_dout_net_x3: std_logic_vector(31 downto 0);
  signal constant22_op_net: std_logic;
  signal convert9_dout_net: std_logic_vector(17 downto 0);
  signal convert5_dout_net: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x12: std_logic_vector(31 downto 0);
  signal mux_y_net_x15: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  constant22_op_net <= reset;
  convert9_dout_net <= in_q;
  convert5_dout_net <= in_i;
  power <= down_sample_q_net_x12;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net_x5,
      dout(0) => convert_dout_net_x6
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net_x5,
      dout => convert2_dout_net_x6
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant22_op_net,
      op(0) => counter_op_net_x12
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x6,
      b => reinterpret_output_port_net_x5,
      c => dsp48e1_p_net_x5,
      op => mux_y_net_x14,
      p => dsp48e1_p_net_x5
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 31,
      d_width => 32,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 31,
      q_width => 32)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert3_dout_net_x3,
      q => down_sample_q_net_x12
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      ip(0) => counter_op_net_x12,
      op(0) => inverter_op_net_x5
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x12,
      d0 => opmode_op_net_x5,
      d1 => opmode1_op_net_x5,
      y => mux_y_net_x14
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net_x5
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net_x5
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      rst => "0",
      d => reinterpret1_output_port_net_x5,
      en(0) => convert_dout_net_x6,
      q => register_q_net_x11
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x15,
      output_port => reinterpret_output_port_net_x5
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net_x5,
      output_port => reinterpret1_output_port_net_x5
  );

  convert3: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 31,
      dout_width => 32,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => register_q_net_x11,
      dout => convert3_dout_net_x3
  );

  tdm: entity work.tdm_c25f509df6
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      in1 => convert9_dout_net,
      in0 => convert5_dout_net,
      rst => constant22_op_net,
      out_x0 => mux_y_net_x15
    );
end structural;


-- Generated from Simulink block "tek_meas/Power5/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_5664be05e0 is
  port (
    clk_2: in std_logic;
    ce_2: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_5664be05e0;

architecture structural of tdm_5664be05e0 is
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal counter_op_net_x15: std_logic;
  signal convert8_dout_net: std_logic_vector(17 downto 0);
  signal convert11_dout_net: std_logic_vector(17 downto 0);
  signal constant19_op_net: std_logic;
  signal mux_y_net_x17: std_logic_vector(17 downto 0);

begin
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  convert8_dout_net <= in1;
  convert11_dout_net <= in0;
  constant19_op_net <= rst;
  out_x0 <= mux_y_net_x17;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant19_op_net,
      op(0) => counter_op_net_x15
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x15,
      d0 => convert11_dout_net,
      d1 => convert8_dout_net,
      y => mux_y_net_x17
  );
end structural;


-- Generated from Simulink block "tek_meas/Power5"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power5_d2cc9542b8 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end power5_d2cc9542b8;

architecture structural of power5_d2cc9542b8 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal convert_dout_net_x7: std_logic;
  signal convert2_dout_net_x7: std_logic_vector(29 downto 0);
  signal counter_op_net_x14: std_logic;
  signal dsp48e1_p_net_x6: std_logic_vector(47 downto 0);
  signal inverter_op_net_x6: std_logic;
  signal mux_y_net_x16: std_logic_vector(19 downto 0);
  signal opmode_op_net_x6: std_logic_vector(19 downto 0);
  signal opmode1_op_net_x6: std_logic_vector(19 downto 0);
  signal register_q_net_x12: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net_x6: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net_x6: std_logic_vector(47 downto 0);
  signal convert1_dout_net_x3: std_logic_vector(31 downto 0);
  signal constant19_op_net: std_logic;
  signal convert8_dout_net: std_logic_vector(17 downto 0);
  signal convert11_dout_net: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x13: std_logic_vector(31 downto 0);
  signal mux_y_net_x17: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  constant19_op_net <= reset;
  convert8_dout_net <= in_q;
  convert11_dout_net <= in_i;
  power <= down_sample_q_net_x13;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net_x6,
      dout(0) => convert_dout_net_x7
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net_x6,
      dout => convert2_dout_net_x7
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant19_op_net,
      op(0) => counter_op_net_x14
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x7,
      b => reinterpret_output_port_net_x6,
      c => dsp48e1_p_net_x6,
      op => mux_y_net_x16,
      p => dsp48e1_p_net_x6
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 31,
      d_width => 32,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 31,
      q_width => 32)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert1_dout_net_x3,
      q => down_sample_q_net_x13
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      ip(0) => counter_op_net_x14,
      op(0) => inverter_op_net_x6
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x14,
      d0 => opmode_op_net_x6,
      d1 => opmode1_op_net_x6,
      y => mux_y_net_x16
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net_x6
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net_x6
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      rst => "0",
      d => reinterpret1_output_port_net_x6,
      en(0) => convert_dout_net_x7,
      q => register_q_net_x12
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x17,
      output_port => reinterpret_output_port_net_x6
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net_x6,
      output_port => reinterpret1_output_port_net_x6
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 31,
      dout_width => 32,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => register_q_net_x12,
      dout => convert1_dout_net_x3
  );

  tdm: entity work.tdm_5664be05e0
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      in1 => convert8_dout_net,
      in0 => convert11_dout_net,
      rst => constant19_op_net,
      out_x0 => mux_y_net_x17
    );
end structural;


-- Generated from Simulink block "tek_meas/Power6/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_02f0a52256 is
  port (
    clk_2: in std_logic;
    ce_2: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_02f0a52256;

architecture structural of tdm_02f0a52256 is
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal counter_op_net_x17: std_logic;
  signal convert15_dout_net: std_logic_vector(17 downto 0);
  signal convert13_dout_net: std_logic_vector(17 downto 0);
  signal constant28_op_net: std_logic;
  signal mux_y_net_x19: std_logic_vector(17 downto 0);

begin
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  convert15_dout_net <= in1;
  convert13_dout_net <= in0;
  constant28_op_net <= rst;
  out_x0 <= mux_y_net_x19;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant28_op_net,
      op(0) => counter_op_net_x17
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x17,
      d0 => convert13_dout_net,
      d1 => convert15_dout_net,
      y => mux_y_net_x19
  );
end structural;


-- Generated from Simulink block "tek_meas/Power6"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power6_1a532d20bb is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end power6_1a532d20bb;

architecture structural of power6_1a532d20bb is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal convert_dout_net_x8: std_logic;
  signal convert2_dout_net_x8: std_logic_vector(29 downto 0);
  signal counter_op_net_x16: std_logic;
  signal dsp48e1_p_net_x7: std_logic_vector(47 downto 0);
  signal inverter_op_net_x7: std_logic;
  signal mux_y_net_x18: std_logic_vector(19 downto 0);
  signal opmode_op_net_x7: std_logic_vector(19 downto 0);
  signal opmode1_op_net_x7: std_logic_vector(19 downto 0);
  signal register_q_net_x13: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net_x7: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net_x7: std_logic_vector(47 downto 0);
  signal convert1_dout_net_x4: std_logic_vector(31 downto 0);
  signal constant28_op_net: std_logic;
  signal convert15_dout_net: std_logic_vector(17 downto 0);
  signal convert13_dout_net: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x14: std_logic_vector(31 downto 0);
  signal mux_y_net_x19: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  constant28_op_net <= reset;
  convert15_dout_net <= in_q;
  convert13_dout_net <= in_i;
  power <= down_sample_q_net_x14;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net_x7,
      dout(0) => convert_dout_net_x8
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net_x7,
      dout => convert2_dout_net_x8
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant28_op_net,
      op(0) => counter_op_net_x16
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x8,
      b => reinterpret_output_port_net_x7,
      c => dsp48e1_p_net_x7,
      op => mux_y_net_x18,
      p => dsp48e1_p_net_x7
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 31,
      d_width => 32,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 31,
      q_width => 32)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert1_dout_net_x4,
      q => down_sample_q_net_x14
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      ip(0) => counter_op_net_x16,
      op(0) => inverter_op_net_x7
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x16,
      d0 => opmode_op_net_x7,
      d1 => opmode1_op_net_x7,
      y => mux_y_net_x18
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net_x7
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net_x7
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      rst => "0",
      d => reinterpret1_output_port_net_x7,
      en(0) => convert_dout_net_x8,
      q => register_q_net_x13
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x19,
      output_port => reinterpret_output_port_net_x7
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net_x7,
      output_port => reinterpret1_output_port_net_x7
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 31,
      dout_width => 32,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => register_q_net_x13,
      dout => convert1_dout_net_x4
  );

  tdm: entity work.tdm_02f0a52256
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      in1 => convert15_dout_net,
      in0 => convert13_dout_net,
      rst => constant28_op_net,
      out_x0 => mux_y_net_x19
    );
end structural;


-- Generated from Simulink block "tek_meas/Power7/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_109f3d37cd is
  port (
    clk_2: in std_logic;
    ce_2: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_109f3d37cd;

architecture structural of tdm_109f3d37cd is
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal counter_op_net_x19: std_logic;
  signal convert14_dout_net: std_logic_vector(17 downto 0);
  signal convert12_dout_net: std_logic_vector(17 downto 0);
  signal constant25_op_net: std_logic;
  signal mux_y_net_x21: std_logic_vector(17 downto 0);

begin
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  convert14_dout_net <= in1;
  convert12_dout_net <= in0;
  constant25_op_net <= rst;
  out_x0 <= mux_y_net_x21;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant25_op_net,
      op(0) => counter_op_net_x19
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x19,
      d0 => convert12_dout_net,
      d1 => convert14_dout_net,
      y => mux_y_net_x21
  );
end structural;


-- Generated from Simulink block "tek_meas/Power7"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power7_7e8f9b6b23 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end power7_7e8f9b6b23;

architecture structural of power7_7e8f9b6b23 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal convert_dout_net_x9: std_logic;
  signal convert2_dout_net_x9: std_logic_vector(29 downto 0);
  signal counter_op_net_x18: std_logic;
  signal dsp48e1_p_net_x8: std_logic_vector(47 downto 0);
  signal inverter_op_net_x8: std_logic;
  signal mux_y_net_x20: std_logic_vector(19 downto 0);
  signal opmode_op_net_x8: std_logic_vector(19 downto 0);
  signal opmode1_op_net_x8: std_logic_vector(19 downto 0);
  signal register_q_net_x14: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net_x8: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net_x8: std_logic_vector(47 downto 0);
  signal convert3_dout_net_x4: std_logic_vector(31 downto 0);
  signal constant25_op_net: std_logic;
  signal convert14_dout_net: std_logic_vector(17 downto 0);
  signal convert12_dout_net: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x15: std_logic_vector(31 downto 0);
  signal mux_y_net_x21: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  constant25_op_net <= reset;
  convert14_dout_net <= in_q;
  convert12_dout_net <= in_i;
  power <= down_sample_q_net_x15;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net_x8,
      dout(0) => convert_dout_net_x9
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net_x8,
      dout => convert2_dout_net_x9
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant25_op_net,
      op(0) => counter_op_net_x18
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x9,
      b => reinterpret_output_port_net_x8,
      c => dsp48e1_p_net_x8,
      op => mux_y_net_x20,
      p => dsp48e1_p_net_x8
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 31,
      d_width => 32,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 31,
      q_width => 32)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert3_dout_net_x4,
      q => down_sample_q_net_x15
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      ip(0) => counter_op_net_x18,
      op(0) => inverter_op_net_x8
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x18,
      d0 => opmode_op_net_x8,
      d1 => opmode1_op_net_x8,
      y => mux_y_net_x20
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net_x8
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net_x8
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      rst => "0",
      d => reinterpret1_output_port_net_x8,
      en(0) => convert_dout_net_x9,
      q => register_q_net_x14
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x21,
      output_port => reinterpret_output_port_net_x8
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net_x8,
      output_port => reinterpret1_output_port_net_x8
  );

  convert3: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 31,
      dout_width => 32,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => register_q_net_x14,
      dout => convert3_dout_net_x4
  );

  tdm: entity work.tdm_109f3d37cd
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      in1 => convert14_dout_net,
      in0 => convert12_dout_net,
      rst => constant25_op_net,
      out_x0 => mux_y_net_x21
    );
end structural;


-- Generated from Simulink block "tek_meas/Power8/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_e8ecd9d68b is
  port (
    clk_2: in std_logic;
    ce_2: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_e8ecd9d68b;

architecture structural of tdm_e8ecd9d68b is
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal counter_op_net_x21: std_logic;
  signal convert19_dout_net: std_logic_vector(17 downto 0);
  signal convert17_dout_net: std_logic_vector(17 downto 0);
  signal constant34_op_net: std_logic;
  signal mux_y_net_x23: std_logic_vector(17 downto 0);

begin
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  convert19_dout_net <= in1;
  convert17_dout_net <= in0;
  constant34_op_net <= rst;
  out_x0 <= mux_y_net_x23;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant34_op_net,
      op(0) => counter_op_net_x21
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x21,
      d0 => convert17_dout_net,
      d1 => convert19_dout_net,
      y => mux_y_net_x23
  );
end structural;


-- Generated from Simulink block "tek_meas/Power8"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power8_1ee58e957c is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end power8_1ee58e957c;

architecture structural of power8_1ee58e957c is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal convert_dout_net_x10: std_logic;
  signal convert2_dout_net_x10: std_logic_vector(29 downto 0);
  signal counter_op_net_x20: std_logic;
  signal dsp48e1_p_net_x9: std_logic_vector(47 downto 0);
  signal inverter_op_net_x9: std_logic;
  signal mux_y_net_x22: std_logic_vector(19 downto 0);
  signal opmode_op_net_x9: std_logic_vector(19 downto 0);
  signal opmode1_op_net_x9: std_logic_vector(19 downto 0);
  signal register_q_net_x15: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net_x9: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net_x9: std_logic_vector(47 downto 0);
  signal convert3_dout_net_x5: std_logic_vector(31 downto 0);
  signal constant34_op_net: std_logic;
  signal convert19_dout_net: std_logic_vector(17 downto 0);
  signal convert17_dout_net: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x16: std_logic_vector(31 downto 0);
  signal mux_y_net_x23: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  constant34_op_net <= reset;
  convert19_dout_net <= in_q;
  convert17_dout_net <= in_i;
  power <= down_sample_q_net_x16;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net_x9,
      dout(0) => convert_dout_net_x10
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net_x9,
      dout => convert2_dout_net_x10
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant34_op_net,
      op(0) => counter_op_net_x20
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x10,
      b => reinterpret_output_port_net_x9,
      c => dsp48e1_p_net_x9,
      op => mux_y_net_x22,
      p => dsp48e1_p_net_x9
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 31,
      d_width => 32,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 31,
      q_width => 32)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert3_dout_net_x5,
      q => down_sample_q_net_x16
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      ip(0) => counter_op_net_x20,
      op(0) => inverter_op_net_x9
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x20,
      d0 => opmode_op_net_x9,
      d1 => opmode1_op_net_x9,
      y => mux_y_net_x22
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net_x9
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net_x9
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      rst => "0",
      d => reinterpret1_output_port_net_x9,
      en(0) => convert_dout_net_x10,
      q => register_q_net_x15
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x23,
      output_port => reinterpret_output_port_net_x9
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net_x9,
      output_port => reinterpret1_output_port_net_x9
  );

  convert3: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 31,
      dout_width => 32,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => register_q_net_x15,
      dout => convert3_dout_net_x5
  );

  tdm: entity work.tdm_e8ecd9d68b
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      in1 => convert19_dout_net,
      in0 => convert17_dout_net,
      rst => constant34_op_net,
      out_x0 => mux_y_net_x23
    );
end structural;


-- Generated from Simulink block "tek_meas/Power9/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_9adf81dd6f is
  port (
    clk_2: in std_logic;
    ce_2: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_9adf81dd6f;

architecture structural of tdm_9adf81dd6f is
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal counter_op_net_x23: std_logic;
  signal convert18_dout_net: std_logic_vector(17 downto 0);
  signal convert16_dout_net: std_logic_vector(17 downto 0);
  signal constant31_op_net: std_logic;
  signal mux_y_net_x25: std_logic_vector(17 downto 0);

begin
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  convert18_dout_net <= in1;
  convert16_dout_net <= in0;
  constant31_op_net <= rst;
  out_x0 <= mux_y_net_x25;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant31_op_net,
      op(0) => counter_op_net_x23
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x23,
      d0 => convert16_dout_net,
      d1 => convert18_dout_net,
      y => mux_y_net_x25
  );
end structural;


-- Generated from Simulink block "tek_meas/Power9"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power9_91a366d46a is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end power9_91a366d46a;

architecture structural of power9_91a366d46a is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal convert_dout_net_x11: std_logic;
  signal convert2_dout_net_x11: std_logic_vector(29 downto 0);
  signal counter_op_net_x22: std_logic;
  signal dsp48e1_p_net_x10: std_logic_vector(47 downto 0);
  signal inverter_op_net_x10: std_logic;
  signal mux_y_net_x24: std_logic_vector(19 downto 0);
  signal opmode_op_net_x10: std_logic_vector(19 downto 0);
  signal opmode1_op_net_x10: std_logic_vector(19 downto 0);
  signal register_q_net_x16: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net_x10: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net_x10: std_logic_vector(47 downto 0);
  signal convert3_dout_net_x6: std_logic_vector(31 downto 0);
  signal constant31_op_net: std_logic;
  signal convert18_dout_net: std_logic_vector(17 downto 0);
  signal convert16_dout_net: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x17: std_logic_vector(31 downto 0);
  signal mux_y_net_x25: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  constant31_op_net <= reset;
  convert18_dout_net <= in_q;
  convert16_dout_net <= in_i;
  power <= down_sample_q_net_x17;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net_x10,
      dout(0) => convert_dout_net_x11
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net_x10,
      dout => convert2_dout_net_x11
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant31_op_net,
      op(0) => counter_op_net_x22
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x11,
      b => reinterpret_output_port_net_x10,
      c => dsp48e1_p_net_x10,
      op => mux_y_net_x24,
      p => dsp48e1_p_net_x10
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 31,
      d_width => 32,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 31,
      q_width => 32)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert3_dout_net_x6,
      q => down_sample_q_net_x17
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      ip(0) => counter_op_net_x22,
      op(0) => inverter_op_net_x10
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x22,
      d0 => opmode_op_net_x10,
      d1 => opmode1_op_net_x10,
      y => mux_y_net_x24
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net_x10
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net_x10
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      rst => "0",
      d => reinterpret1_output_port_net_x10,
      en(0) => convert_dout_net_x11,
      q => register_q_net_x16
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x25,
      output_port => reinterpret_output_port_net_x10
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net_x10,
      output_port => reinterpret1_output_port_net_x10
  );

  convert3: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 31,
      dout_width => 32,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => register_q_net_x16,
      dout => convert3_dout_net_x6
  );

  tdm: entity work.tdm_9adf81dd6f
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      in1 => convert18_dout_net,
      in0 => convert16_dout_net,
      rst => constant31_op_net,
      out_x0 => mux_y_net_x25
    );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx0/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_63ab3c3ef0 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_63ab3c3ef0;

architecture structural of cic_63ab3c3ef0 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub_s_net_x0: std_logic_vector(41 downto 0);
  signal constant_op_net_x0: std_logic_vector(7 downto 0);
  signal counter_op_net_x24: std_logic_vector(7 downto 0);
  signal register_q_net_x18: std_logic_vector(41 downto 0);
  signal register1_q_net_x6: std_logic_vector(41 downto 0);
  signal register2_q_net_x6: std_logic_vector(41 downto 0);
  signal register3_q_net_x6: std_logic_vector(41 downto 0);
  signal relational_op_net_x0: std_logic;
  signal shift_op_net_x1: std_logic_vector(41 downto 0);
  signal constant2_op_net: std_logic;
  signal constant6_op_net: std_logic;
  signal down_sample_q_net_x6: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x0: std_logic_vector(31 downto 0);
  signal logical_y_net: std_logic;

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant2_op_net <= rst_2;
  constant6_op_net <= en;
  down_sample_q_net_x6 <= x;
  y <= addsub1_s_net_x0;
  en_cic <= logical_y_net;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register1_q_net_x6,
      b => shift_op_net_x1,
      s => addsub_s_net_x0
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register3_q_net_x6,
      b => register2_q_net_x6,
      en(0) => logical_y_net,
      s => addsub1_s_net_x0
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x0
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant2_op_net,
      en(0) => constant6_op_net,
      op => counter_op_net_x24
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant6_op_net,
      d1(0) => relational_op_net_x0,
      y(0) => logical_y_net
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register3_q_net_x6,
      en(0) => logical_y_net,
      q => register_q_net_x18
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x0,
      en(0) => constant6_op_net,
      q => register1_q_net_x6
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register_q_net_x18,
      en(0) => logical_y_net,
      q => register2_q_net_x6
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x0,
      en(0) => logical_y_net,
      q => register3_q_net_x6
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x24,
      b => constant_op_net_x0,
      op(0) => relational_op_net_x0
  );

  shift: entity work.sysgen_shift_7976f4fbac
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => down_sample_q_net_x6,
      op => shift_op_net_x1
  );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx0/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_49cd8b92b7 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_49cd8b92b7;

architecture structural of iir_49cd8b92b7 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub1_s_net_x1: std_logic_vector(31 downto 0);
  signal register_q_net_x19: std_logic_vector(31 downto 0);
  signal shift_op_net_x2: std_logic_vector(31 downto 0);
  signal shift1_op_net_x1: std_logic_vector(31 downto 0);
  signal logical_y_net: std_logic;
  signal addsub1_s_net_x0: std_logic_vector(31 downto 0);
  signal addsub_s_net_x1: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  logical_y_net <= en;
  addsub1_s_net_x0 <= x;
  y <= addsub_s_net_x1;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => shift_op_net_x2,
      b => register_q_net_x19,
      en(0) => logical_y_net,
      s => addsub_s_net_x1
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => addsub_s_net_x1,
      b => shift1_op_net_x1,
      s => addsub1_s_net_x1
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub1_s_net_x1,
      en(0) => logical_y_net,
      q => register_q_net_x19
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub1_s_net_x0,
      op => shift_op_net_x2
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub_s_net_x1,
      op => shift1_op_net_x1
  );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx0"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity spi_power_tx0_f76fa8269e is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(31 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end spi_power_tx0_f76fa8269e;

architecture structural of spi_power_tx0_f76fa8269e is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal constant2_op_net: std_logic;
  signal constant6_op_net: std_logic;
  signal down_sample_q_net_x6: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x11: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x0: std_logic_vector(31 downto 0);
  signal logical_y_net: std_logic;
  signal addsub_s_net_x1: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant2_op_net <= rst_4;
  constant6_op_net <= en;
  down_sample_q_net_x6 <= inst_power;
  power <= reinterpret_output_port_net_x11;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x1,
      output_port => reinterpret_output_port_net_x11
  );

  cic: entity work.cic_63ab3c3ef0
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_2 => constant2_op_net,
      en => constant6_op_net,
      x => down_sample_q_net_x6,
      y => addsub1_s_net_x0,
      en_cic => logical_y_net
    );

  iir: entity work.iir_49cd8b92b7
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      en => logical_y_net,
      x => addsub1_s_net_x0,
      y => addsub_s_net_x1
    );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx1/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_17ed7062d3 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_17ed7062d3;

architecture structural of cic_17ed7062d3 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub_s_net_x2: std_logic_vector(41 downto 0);
  signal constant_op_net_x1: std_logic_vector(7 downto 0);
  signal counter_op_net_x25: std_logic_vector(7 downto 0);
  signal register_q_net_x20: std_logic_vector(41 downto 0);
  signal register1_q_net_x7: std_logic_vector(41 downto 0);
  signal register2_q_net_x7: std_logic_vector(41 downto 0);
  signal register3_q_net_x7: std_logic_vector(41 downto 0);
  signal relational_op_net_x1: std_logic;
  signal shift_op_net_x3: std_logic_vector(41 downto 0);
  signal constant7_op_net: std_logic;
  signal constant11_op_net: std_logic;
  signal down_sample_q_net_x10: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x2: std_logic_vector(31 downto 0);
  signal logical_y_net_x0: std_logic;

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant7_op_net <= rst_2;
  constant11_op_net <= en;
  down_sample_q_net_x10 <= x;
  y <= addsub1_s_net_x2;
  en_cic <= logical_y_net_x0;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register1_q_net_x7,
      b => shift_op_net_x3,
      s => addsub_s_net_x2
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register3_q_net_x7,
      b => register2_q_net_x7,
      en(0) => logical_y_net_x0,
      s => addsub1_s_net_x2
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x1
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant7_op_net,
      en(0) => constant11_op_net,
      op => counter_op_net_x25
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant11_op_net,
      d1(0) => relational_op_net_x1,
      y(0) => logical_y_net_x0
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register3_q_net_x7,
      en(0) => logical_y_net_x0,
      q => register_q_net_x20
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x2,
      en(0) => constant11_op_net,
      q => register1_q_net_x7
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register_q_net_x20,
      en(0) => logical_y_net_x0,
      q => register2_q_net_x7
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x2,
      en(0) => logical_y_net_x0,
      q => register3_q_net_x7
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x25,
      b => constant_op_net_x1,
      op(0) => relational_op_net_x1
  );

  shift: entity work.sysgen_shift_7976f4fbac
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => down_sample_q_net_x10,
      op => shift_op_net_x3
  );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx1/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_ea45af369a is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_ea45af369a;

architecture structural of iir_ea45af369a is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub1_s_net_x3: std_logic_vector(31 downto 0);
  signal register_q_net_x21: std_logic_vector(31 downto 0);
  signal shift_op_net_x4: std_logic_vector(31 downto 0);
  signal shift1_op_net_x2: std_logic_vector(31 downto 0);
  signal logical_y_net_x0: std_logic;
  signal addsub1_s_net_x2: std_logic_vector(31 downto 0);
  signal addsub_s_net_x3: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  logical_y_net_x0 <= en;
  addsub1_s_net_x2 <= x;
  y <= addsub_s_net_x3;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => shift_op_net_x4,
      b => register_q_net_x21,
      en(0) => logical_y_net_x0,
      s => addsub_s_net_x3
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => addsub_s_net_x3,
      b => shift1_op_net_x2,
      s => addsub1_s_net_x3
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub1_s_net_x3,
      en(0) => logical_y_net_x0,
      q => register_q_net_x21
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub1_s_net_x2,
      op => shift_op_net_x4
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub_s_net_x3,
      op => shift1_op_net_x2
  );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx1"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity spi_power_tx1_d3aa9a5447 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(31 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end spi_power_tx1_d3aa9a5447;

architecture structural of spi_power_tx1_d3aa9a5447 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal constant7_op_net: std_logic;
  signal constant11_op_net: std_logic;
  signal down_sample_q_net_x10: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x12: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x2: std_logic_vector(31 downto 0);
  signal logical_y_net_x0: std_logic;
  signal addsub_s_net_x3: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant7_op_net <= rst_4;
  constant11_op_net <= en;
  down_sample_q_net_x10 <= inst_power;
  power <= reinterpret_output_port_net_x12;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x3,
      output_port => reinterpret_output_port_net_x12
  );

  cic: entity work.cic_17ed7062d3
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_2 => constant7_op_net,
      en => constant11_op_net,
      x => down_sample_q_net_x10,
      y => addsub1_s_net_x2,
      en_cic => logical_y_net_x0
    );

  iir: entity work.iir_ea45af369a
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      en => logical_y_net_x0,
      x => addsub1_s_net_x2,
      y => addsub_s_net_x3
    );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx2/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_e2dff327e4 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_e2dff327e4;

architecture structural of cic_e2dff327e4 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub_s_net_x4: std_logic_vector(41 downto 0);
  signal constant_op_net_x2: std_logic_vector(7 downto 0);
  signal counter_op_net_x26: std_logic_vector(7 downto 0);
  signal register_q_net_x22: std_logic_vector(41 downto 0);
  signal register1_q_net_x8: std_logic_vector(41 downto 0);
  signal register2_q_net_x8: std_logic_vector(41 downto 0);
  signal register3_q_net_x8: std_logic_vector(41 downto 0);
  signal relational_op_net_x2: std_logic;
  signal shift_op_net_x5: std_logic_vector(41 downto 0);
  signal constant13_op_net: std_logic;
  signal constant15_op_net: std_logic;
  signal down_sample_q_net_x7: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x4: std_logic_vector(31 downto 0);
  signal logical_y_net_x1: std_logic;

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant13_op_net <= rst_2;
  constant15_op_net <= en;
  down_sample_q_net_x7 <= x;
  y <= addsub1_s_net_x4;
  en_cic <= logical_y_net_x1;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register1_q_net_x8,
      b => shift_op_net_x5,
      s => addsub_s_net_x4
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register3_q_net_x8,
      b => register2_q_net_x8,
      en(0) => logical_y_net_x1,
      s => addsub1_s_net_x4
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x2
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant13_op_net,
      en(0) => constant15_op_net,
      op => counter_op_net_x26
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant15_op_net,
      d1(0) => relational_op_net_x2,
      y(0) => logical_y_net_x1
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register3_q_net_x8,
      en(0) => logical_y_net_x1,
      q => register_q_net_x22
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x4,
      en(0) => constant15_op_net,
      q => register1_q_net_x8
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register_q_net_x22,
      en(0) => logical_y_net_x1,
      q => register2_q_net_x8
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x4,
      en(0) => logical_y_net_x1,
      q => register3_q_net_x8
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x26,
      b => constant_op_net_x2,
      op(0) => relational_op_net_x2
  );

  shift: entity work.sysgen_shift_7976f4fbac
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => down_sample_q_net_x7,
      op => shift_op_net_x5
  );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx2/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_f316145de9 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_f316145de9;

architecture structural of iir_f316145de9 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub1_s_net_x5: std_logic_vector(31 downto 0);
  signal register_q_net_x23: std_logic_vector(31 downto 0);
  signal shift_op_net_x6: std_logic_vector(31 downto 0);
  signal shift1_op_net_x3: std_logic_vector(31 downto 0);
  signal logical_y_net_x1: std_logic;
  signal addsub1_s_net_x4: std_logic_vector(31 downto 0);
  signal addsub_s_net_x5: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  logical_y_net_x1 <= en;
  addsub1_s_net_x4 <= x;
  y <= addsub_s_net_x5;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => shift_op_net_x6,
      b => register_q_net_x23,
      en(0) => logical_y_net_x1,
      s => addsub_s_net_x5
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => addsub_s_net_x5,
      b => shift1_op_net_x3,
      s => addsub1_s_net_x5
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub1_s_net_x5,
      en(0) => logical_y_net_x1,
      q => register_q_net_x23
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub1_s_net_x4,
      op => shift_op_net_x6
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub_s_net_x5,
      op => shift1_op_net_x3
  );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx2"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity spi_power_tx2_0f72b8793b is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(31 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end spi_power_tx2_0f72b8793b;

architecture structural of spi_power_tx2_0f72b8793b is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal constant13_op_net: std_logic;
  signal constant15_op_net: std_logic;
  signal down_sample_q_net_x7: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x13: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x4: std_logic_vector(31 downto 0);
  signal logical_y_net_x1: std_logic;
  signal addsub_s_net_x5: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant13_op_net <= rst_4;
  constant15_op_net <= en;
  down_sample_q_net_x7 <= inst_power;
  power <= reinterpret_output_port_net_x13;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x5,
      output_port => reinterpret_output_port_net_x13
  );

  cic: entity work.cic_e2dff327e4
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_2 => constant13_op_net,
      en => constant15_op_net,
      x => down_sample_q_net_x7,
      y => addsub1_s_net_x4,
      en_cic => logical_y_net_x1
    );

  iir: entity work.iir_f316145de9
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      en => logical_y_net_x1,
      x => addsub1_s_net_x4,
      y => addsub_s_net_x5
    );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx3/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_c5e5144054 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_c5e5144054;

architecture structural of cic_c5e5144054 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub_s_net_x6: std_logic_vector(41 downto 0);
  signal constant_op_net_x3: std_logic_vector(7 downto 0);
  signal counter_op_net_x27: std_logic_vector(7 downto 0);
  signal register_q_net_x24: std_logic_vector(41 downto 0);
  signal register1_q_net_x9: std_logic_vector(41 downto 0);
  signal register2_q_net_x9: std_logic_vector(41 downto 0);
  signal register3_q_net_x9: std_logic_vector(41 downto 0);
  signal relational_op_net_x3: std_logic;
  signal shift_op_net_x7: std_logic_vector(41 downto 0);
  signal constant16_op_net: std_logic;
  signal constant12_op_net: std_logic;
  signal down_sample_q_net_x11: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x6: std_logic_vector(31 downto 0);
  signal logical_y_net_x2: std_logic;

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant16_op_net <= rst_2;
  constant12_op_net <= en;
  down_sample_q_net_x11 <= x;
  y <= addsub1_s_net_x6;
  en_cic <= logical_y_net_x2;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register1_q_net_x9,
      b => shift_op_net_x7,
      s => addsub_s_net_x6
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register3_q_net_x9,
      b => register2_q_net_x9,
      en(0) => logical_y_net_x2,
      s => addsub1_s_net_x6
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x3
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant16_op_net,
      en(0) => constant12_op_net,
      op => counter_op_net_x27
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant12_op_net,
      d1(0) => relational_op_net_x3,
      y(0) => logical_y_net_x2
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register3_q_net_x9,
      en(0) => logical_y_net_x2,
      q => register_q_net_x24
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x6,
      en(0) => constant12_op_net,
      q => register1_q_net_x9
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register_q_net_x24,
      en(0) => logical_y_net_x2,
      q => register2_q_net_x9
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x6,
      en(0) => logical_y_net_x2,
      q => register3_q_net_x9
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x27,
      b => constant_op_net_x3,
      op(0) => relational_op_net_x3
  );

  shift: entity work.sysgen_shift_7976f4fbac
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => down_sample_q_net_x11,
      op => shift_op_net_x7
  );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx3/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_11eea90fff is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_11eea90fff;

architecture structural of iir_11eea90fff is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub1_s_net_x7: std_logic_vector(31 downto 0);
  signal register_q_net_x25: std_logic_vector(31 downto 0);
  signal shift_op_net_x8: std_logic_vector(31 downto 0);
  signal shift1_op_net_x4: std_logic_vector(31 downto 0);
  signal logical_y_net_x2: std_logic;
  signal addsub1_s_net_x6: std_logic_vector(31 downto 0);
  signal addsub_s_net_x7: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  logical_y_net_x2 <= en;
  addsub1_s_net_x6 <= x;
  y <= addsub_s_net_x7;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => shift_op_net_x8,
      b => register_q_net_x25,
      en(0) => logical_y_net_x2,
      s => addsub_s_net_x7
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => addsub_s_net_x7,
      b => shift1_op_net_x4,
      s => addsub1_s_net_x7
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub1_s_net_x7,
      en(0) => logical_y_net_x2,
      q => register_q_net_x25
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub1_s_net_x6,
      op => shift_op_net_x8
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub_s_net_x7,
      op => shift1_op_net_x4
  );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx3"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity spi_power_tx3_0e662c0d6c is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(31 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end spi_power_tx3_0e662c0d6c;

architecture structural of spi_power_tx3_0e662c0d6c is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal constant16_op_net: std_logic;
  signal constant12_op_net: std_logic;
  signal down_sample_q_net_x11: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x14: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x6: std_logic_vector(31 downto 0);
  signal logical_y_net_x2: std_logic;
  signal addsub_s_net_x7: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant16_op_net <= rst_4;
  constant12_op_net <= en;
  down_sample_q_net_x11 <= inst_power;
  power <= reinterpret_output_port_net_x14;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x7,
      output_port => reinterpret_output_port_net_x14
  );

  cic: entity work.cic_c5e5144054
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_2 => constant16_op_net,
      en => constant12_op_net,
      x => down_sample_q_net_x11,
      y => addsub1_s_net_x6,
      en_cic => logical_y_net_x2
    );

  iir: entity work.iir_11eea90fff
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      en => logical_y_net_x2,
      x => addsub1_s_net_x6,
      y => addsub_s_net_x7
    );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx4/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_72fa780e16 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_72fa780e16;

architecture structural of cic_72fa780e16 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub_s_net_x8: std_logic_vector(41 downto 0);
  signal constant_op_net_x4: std_logic_vector(7 downto 0);
  signal counter_op_net_x28: std_logic_vector(7 downto 0);
  signal register_q_net_x26: std_logic_vector(41 downto 0);
  signal register1_q_net_x10: std_logic_vector(41 downto 0);
  signal register2_q_net_x10: std_logic_vector(41 downto 0);
  signal register3_q_net_x10: std_logic_vector(41 downto 0);
  signal relational_op_net_x4: std_logic;
  signal shift_op_net_x9: std_logic_vector(41 downto 0);
  signal constant18_op_net: std_logic;
  signal constant20_op_net: std_logic;
  signal down_sample_q_net_x12: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x8: std_logic_vector(31 downto 0);
  signal logical_y_net_x3: std_logic;

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant18_op_net <= rst_2;
  constant20_op_net <= en;
  down_sample_q_net_x12 <= x;
  y <= addsub1_s_net_x8;
  en_cic <= logical_y_net_x3;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register1_q_net_x10,
      b => shift_op_net_x9,
      s => addsub_s_net_x8
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register3_q_net_x10,
      b => register2_q_net_x10,
      en(0) => logical_y_net_x3,
      s => addsub1_s_net_x8
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x4
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant18_op_net,
      en(0) => constant20_op_net,
      op => counter_op_net_x28
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant20_op_net,
      d1(0) => relational_op_net_x4,
      y(0) => logical_y_net_x3
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register3_q_net_x10,
      en(0) => logical_y_net_x3,
      q => register_q_net_x26
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x8,
      en(0) => constant20_op_net,
      q => register1_q_net_x10
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register_q_net_x26,
      en(0) => logical_y_net_x3,
      q => register2_q_net_x10
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x8,
      en(0) => logical_y_net_x3,
      q => register3_q_net_x10
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x28,
      b => constant_op_net_x4,
      op(0) => relational_op_net_x4
  );

  shift: entity work.sysgen_shift_7976f4fbac
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => down_sample_q_net_x12,
      op => shift_op_net_x9
  );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx4/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_3a514b629b is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_3a514b629b;

architecture structural of iir_3a514b629b is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub1_s_net_x9: std_logic_vector(31 downto 0);
  signal register_q_net_x27: std_logic_vector(31 downto 0);
  signal shift_op_net_x10: std_logic_vector(31 downto 0);
  signal shift1_op_net_x5: std_logic_vector(31 downto 0);
  signal logical_y_net_x3: std_logic;
  signal addsub1_s_net_x8: std_logic_vector(31 downto 0);
  signal addsub_s_net_x9: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  logical_y_net_x3 <= en;
  addsub1_s_net_x8 <= x;
  y <= addsub_s_net_x9;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => shift_op_net_x10,
      b => register_q_net_x27,
      en(0) => logical_y_net_x3,
      s => addsub_s_net_x9
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => addsub_s_net_x9,
      b => shift1_op_net_x5,
      s => addsub1_s_net_x9
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub1_s_net_x9,
      en(0) => logical_y_net_x3,
      q => register_q_net_x27
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub1_s_net_x8,
      op => shift_op_net_x10
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub_s_net_x9,
      op => shift1_op_net_x5
  );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx4"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity spi_power_tx4_0314fcbd5e is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(31 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end spi_power_tx4_0314fcbd5e;

architecture structural of spi_power_tx4_0314fcbd5e is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal constant18_op_net: std_logic;
  signal constant20_op_net: std_logic;
  signal down_sample_q_net_x12: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x15: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x8: std_logic_vector(31 downto 0);
  signal logical_y_net_x3: std_logic;
  signal addsub_s_net_x9: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant18_op_net <= rst_4;
  constant20_op_net <= en;
  down_sample_q_net_x12 <= inst_power;
  power <= reinterpret_output_port_net_x15;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x9,
      output_port => reinterpret_output_port_net_x15
  );

  cic: entity work.cic_72fa780e16
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_2 => constant18_op_net,
      en => constant20_op_net,
      x => down_sample_q_net_x12,
      y => addsub1_s_net_x8,
      en_cic => logical_y_net_x3
    );

  iir: entity work.iir_3a514b629b
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      en => logical_y_net_x3,
      x => addsub1_s_net_x8,
      y => addsub_s_net_x9
    );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx5/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_36fab8a6c2 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_36fab8a6c2;

architecture structural of cic_36fab8a6c2 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub_s_net_x10: std_logic_vector(41 downto 0);
  signal constant_op_net_x5: std_logic_vector(7 downto 0);
  signal counter_op_net_x29: std_logic_vector(7 downto 0);
  signal register_q_net_x28: std_logic_vector(41 downto 0);
  signal register1_q_net_x11: std_logic_vector(41 downto 0);
  signal register2_q_net_x11: std_logic_vector(41 downto 0);
  signal register3_q_net_x11: std_logic_vector(41 downto 0);
  signal relational_op_net_x5: std_logic;
  signal shift_op_net_x11: std_logic_vector(41 downto 0);
  signal constant21_op_net: std_logic;
  signal constant17_op_net: std_logic;
  signal down_sample_q_net_x13: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x10: std_logic_vector(31 downto 0);
  signal logical_y_net_x4: std_logic;

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant21_op_net <= rst_2;
  constant17_op_net <= en;
  down_sample_q_net_x13 <= x;
  y <= addsub1_s_net_x10;
  en_cic <= logical_y_net_x4;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register1_q_net_x11,
      b => shift_op_net_x11,
      s => addsub_s_net_x10
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register3_q_net_x11,
      b => register2_q_net_x11,
      en(0) => logical_y_net_x4,
      s => addsub1_s_net_x10
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x5
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant21_op_net,
      en(0) => constant17_op_net,
      op => counter_op_net_x29
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant17_op_net,
      d1(0) => relational_op_net_x5,
      y(0) => logical_y_net_x4
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register3_q_net_x11,
      en(0) => logical_y_net_x4,
      q => register_q_net_x28
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x10,
      en(0) => constant17_op_net,
      q => register1_q_net_x11
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register_q_net_x28,
      en(0) => logical_y_net_x4,
      q => register2_q_net_x11
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x10,
      en(0) => logical_y_net_x4,
      q => register3_q_net_x11
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x29,
      b => constant_op_net_x5,
      op(0) => relational_op_net_x5
  );

  shift: entity work.sysgen_shift_7976f4fbac
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => down_sample_q_net_x13,
      op => shift_op_net_x11
  );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx5/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_80afc4ff81 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_80afc4ff81;

architecture structural of iir_80afc4ff81 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub1_s_net_x11: std_logic_vector(31 downto 0);
  signal register_q_net_x29: std_logic_vector(31 downto 0);
  signal shift_op_net_x12: std_logic_vector(31 downto 0);
  signal shift1_op_net_x6: std_logic_vector(31 downto 0);
  signal logical_y_net_x4: std_logic;
  signal addsub1_s_net_x10: std_logic_vector(31 downto 0);
  signal addsub_s_net_x11: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  logical_y_net_x4 <= en;
  addsub1_s_net_x10 <= x;
  y <= addsub_s_net_x11;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => shift_op_net_x12,
      b => register_q_net_x29,
      en(0) => logical_y_net_x4,
      s => addsub_s_net_x11
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => addsub_s_net_x11,
      b => shift1_op_net_x6,
      s => addsub1_s_net_x11
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub1_s_net_x11,
      en(0) => logical_y_net_x4,
      q => register_q_net_x29
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub1_s_net_x10,
      op => shift_op_net_x12
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub_s_net_x11,
      op => shift1_op_net_x6
  );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx5"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity spi_power_tx5_2e64d37d02 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(31 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end spi_power_tx5_2e64d37d02;

architecture structural of spi_power_tx5_2e64d37d02 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal constant21_op_net: std_logic;
  signal constant17_op_net: std_logic;
  signal down_sample_q_net_x13: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x16: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x10: std_logic_vector(31 downto 0);
  signal logical_y_net_x4: std_logic;
  signal addsub_s_net_x11: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant21_op_net <= rst_4;
  constant17_op_net <= en;
  down_sample_q_net_x13 <= inst_power;
  power <= reinterpret_output_port_net_x16;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x11,
      output_port => reinterpret_output_port_net_x16
  );

  cic: entity work.cic_36fab8a6c2
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_2 => constant21_op_net,
      en => constant17_op_net,
      x => down_sample_q_net_x13,
      y => addsub1_s_net_x10,
      en_cic => logical_y_net_x4
    );

  iir: entity work.iir_80afc4ff81
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      en => logical_y_net_x4,
      x => addsub1_s_net_x10,
      y => addsub_s_net_x11
    );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx6/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_1ad2e2790a is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_1ad2e2790a;

architecture structural of cic_1ad2e2790a is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub_s_net_x12: std_logic_vector(41 downto 0);
  signal constant_op_net_x6: std_logic_vector(7 downto 0);
  signal counter_op_net_x30: std_logic_vector(7 downto 0);
  signal register_q_net_x30: std_logic_vector(41 downto 0);
  signal register1_q_net_x12: std_logic_vector(41 downto 0);
  signal register2_q_net_x12: std_logic_vector(41 downto 0);
  signal register3_q_net_x12: std_logic_vector(41 downto 0);
  signal relational_op_net_x6: std_logic;
  signal shift_op_net_x13: std_logic_vector(41 downto 0);
  signal constant24_op_net: std_logic;
  signal constant26_op_net: std_logic;
  signal down_sample_q_net_x14: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x12: std_logic_vector(31 downto 0);
  signal logical_y_net_x5: std_logic;

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant24_op_net <= rst_2;
  constant26_op_net <= en;
  down_sample_q_net_x14 <= x;
  y <= addsub1_s_net_x12;
  en_cic <= logical_y_net_x5;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register1_q_net_x12,
      b => shift_op_net_x13,
      s => addsub_s_net_x12
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register3_q_net_x12,
      b => register2_q_net_x12,
      en(0) => logical_y_net_x5,
      s => addsub1_s_net_x12
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x6
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant24_op_net,
      en(0) => constant26_op_net,
      op => counter_op_net_x30
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant26_op_net,
      d1(0) => relational_op_net_x6,
      y(0) => logical_y_net_x5
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register3_q_net_x12,
      en(0) => logical_y_net_x5,
      q => register_q_net_x30
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x12,
      en(0) => constant26_op_net,
      q => register1_q_net_x12
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register_q_net_x30,
      en(0) => logical_y_net_x5,
      q => register2_q_net_x12
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x12,
      en(0) => logical_y_net_x5,
      q => register3_q_net_x12
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x30,
      b => constant_op_net_x6,
      op(0) => relational_op_net_x6
  );

  shift: entity work.sysgen_shift_7976f4fbac
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => down_sample_q_net_x14,
      op => shift_op_net_x13
  );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx6/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_4590d2f1cf is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_4590d2f1cf;

architecture structural of iir_4590d2f1cf is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub1_s_net_x13: std_logic_vector(31 downto 0);
  signal register_q_net_x31: std_logic_vector(31 downto 0);
  signal shift_op_net_x14: std_logic_vector(31 downto 0);
  signal shift1_op_net_x7: std_logic_vector(31 downto 0);
  signal logical_y_net_x5: std_logic;
  signal addsub1_s_net_x12: std_logic_vector(31 downto 0);
  signal addsub_s_net_x13: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  logical_y_net_x5 <= en;
  addsub1_s_net_x12 <= x;
  y <= addsub_s_net_x13;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => shift_op_net_x14,
      b => register_q_net_x31,
      en(0) => logical_y_net_x5,
      s => addsub_s_net_x13
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => addsub_s_net_x13,
      b => shift1_op_net_x7,
      s => addsub1_s_net_x13
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub1_s_net_x13,
      en(0) => logical_y_net_x5,
      q => register_q_net_x31
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub1_s_net_x12,
      op => shift_op_net_x14
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub_s_net_x13,
      op => shift1_op_net_x7
  );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx6"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity spi_power_tx6_efe02e947b is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(31 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end spi_power_tx6_efe02e947b;

architecture structural of spi_power_tx6_efe02e947b is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal constant24_op_net: std_logic;
  signal constant26_op_net: std_logic;
  signal down_sample_q_net_x14: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x17: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x12: std_logic_vector(31 downto 0);
  signal logical_y_net_x5: std_logic;
  signal addsub_s_net_x13: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant24_op_net <= rst_4;
  constant26_op_net <= en;
  down_sample_q_net_x14 <= inst_power;
  power <= reinterpret_output_port_net_x17;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x13,
      output_port => reinterpret_output_port_net_x17
  );

  cic: entity work.cic_1ad2e2790a
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_2 => constant24_op_net,
      en => constant26_op_net,
      x => down_sample_q_net_x14,
      y => addsub1_s_net_x12,
      en_cic => logical_y_net_x5
    );

  iir: entity work.iir_4590d2f1cf
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      en => logical_y_net_x5,
      x => addsub1_s_net_x12,
      y => addsub_s_net_x13
    );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx7/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_0e8a7c7eda is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_0e8a7c7eda;

architecture structural of cic_0e8a7c7eda is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub_s_net_x14: std_logic_vector(41 downto 0);
  signal constant_op_net_x7: std_logic_vector(7 downto 0);
  signal counter_op_net_x31: std_logic_vector(7 downto 0);
  signal register_q_net_x32: std_logic_vector(41 downto 0);
  signal register1_q_net_x13: std_logic_vector(41 downto 0);
  signal register2_q_net_x13: std_logic_vector(41 downto 0);
  signal register3_q_net_x13: std_logic_vector(41 downto 0);
  signal relational_op_net_x7: std_logic;
  signal shift_op_net_x15: std_logic_vector(41 downto 0);
  signal constant27_op_net: std_logic;
  signal constant23_op_net: std_logic;
  signal down_sample_q_net_x15: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x14: std_logic_vector(31 downto 0);
  signal logical_y_net_x6: std_logic;

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant27_op_net <= rst_2;
  constant23_op_net <= en;
  down_sample_q_net_x15 <= x;
  y <= addsub1_s_net_x14;
  en_cic <= logical_y_net_x6;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register1_q_net_x13,
      b => shift_op_net_x15,
      s => addsub_s_net_x14
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register3_q_net_x13,
      b => register2_q_net_x13,
      en(0) => logical_y_net_x6,
      s => addsub1_s_net_x14
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x7
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant27_op_net,
      en(0) => constant23_op_net,
      op => counter_op_net_x31
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant23_op_net,
      d1(0) => relational_op_net_x7,
      y(0) => logical_y_net_x6
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register3_q_net_x13,
      en(0) => logical_y_net_x6,
      q => register_q_net_x32
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x14,
      en(0) => constant23_op_net,
      q => register1_q_net_x13
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register_q_net_x32,
      en(0) => logical_y_net_x6,
      q => register2_q_net_x13
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x14,
      en(0) => logical_y_net_x6,
      q => register3_q_net_x13
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x31,
      b => constant_op_net_x7,
      op(0) => relational_op_net_x7
  );

  shift: entity work.sysgen_shift_7976f4fbac
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => down_sample_q_net_x15,
      op => shift_op_net_x15
  );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx7/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_ba0e102a5b is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_ba0e102a5b;

architecture structural of iir_ba0e102a5b is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub1_s_net_x15: std_logic_vector(31 downto 0);
  signal register_q_net_x33: std_logic_vector(31 downto 0);
  signal shift_op_net_x16: std_logic_vector(31 downto 0);
  signal shift1_op_net_x8: std_logic_vector(31 downto 0);
  signal logical_y_net_x6: std_logic;
  signal addsub1_s_net_x14: std_logic_vector(31 downto 0);
  signal addsub_s_net_x15: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  logical_y_net_x6 <= en;
  addsub1_s_net_x14 <= x;
  y <= addsub_s_net_x15;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => shift_op_net_x16,
      b => register_q_net_x33,
      en(0) => logical_y_net_x6,
      s => addsub_s_net_x15
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => addsub_s_net_x15,
      b => shift1_op_net_x8,
      s => addsub1_s_net_x15
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub1_s_net_x15,
      en(0) => logical_y_net_x6,
      q => register_q_net_x33
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub1_s_net_x14,
      op => shift_op_net_x16
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub_s_net_x15,
      op => shift1_op_net_x8
  );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx7"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity spi_power_tx7_8865419107 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(31 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end spi_power_tx7_8865419107;

architecture structural of spi_power_tx7_8865419107 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal constant27_op_net: std_logic;
  signal constant23_op_net: std_logic;
  signal down_sample_q_net_x15: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x18: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x14: std_logic_vector(31 downto 0);
  signal logical_y_net_x6: std_logic;
  signal addsub_s_net_x15: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant27_op_net <= rst_4;
  constant23_op_net <= en;
  down_sample_q_net_x15 <= inst_power;
  power <= reinterpret_output_port_net_x18;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x15,
      output_port => reinterpret_output_port_net_x18
  );

  cic: entity work.cic_0e8a7c7eda
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_2 => constant27_op_net,
      en => constant23_op_net,
      x => down_sample_q_net_x15,
      y => addsub1_s_net_x14,
      en_cic => logical_y_net_x6
    );

  iir: entity work.iir_ba0e102a5b
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      en => logical_y_net_x6,
      x => addsub1_s_net_x14,
      y => addsub_s_net_x15
    );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx8/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_9bc6ac02eb is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_9bc6ac02eb;

architecture structural of cic_9bc6ac02eb is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub_s_net_x16: std_logic_vector(41 downto 0);
  signal constant_op_net_x8: std_logic_vector(7 downto 0);
  signal counter_op_net_x32: std_logic_vector(7 downto 0);
  signal register_q_net_x34: std_logic_vector(41 downto 0);
  signal register1_q_net_x14: std_logic_vector(41 downto 0);
  signal register2_q_net_x14: std_logic_vector(41 downto 0);
  signal register3_q_net_x14: std_logic_vector(41 downto 0);
  signal relational_op_net_x8: std_logic;
  signal shift_op_net_x17: std_logic_vector(41 downto 0);
  signal constant30_op_net: std_logic;
  signal constant32_op_net: std_logic;
  signal down_sample_q_net_x16: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x16: std_logic_vector(31 downto 0);
  signal logical_y_net_x7: std_logic;

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant30_op_net <= rst_2;
  constant32_op_net <= en;
  down_sample_q_net_x16 <= x;
  y <= addsub1_s_net_x16;
  en_cic <= logical_y_net_x7;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register1_q_net_x14,
      b => shift_op_net_x17,
      s => addsub_s_net_x16
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register3_q_net_x14,
      b => register2_q_net_x14,
      en(0) => logical_y_net_x7,
      s => addsub1_s_net_x16
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x8
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant30_op_net,
      en(0) => constant32_op_net,
      op => counter_op_net_x32
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant32_op_net,
      d1(0) => relational_op_net_x8,
      y(0) => logical_y_net_x7
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register3_q_net_x14,
      en(0) => logical_y_net_x7,
      q => register_q_net_x34
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x16,
      en(0) => constant32_op_net,
      q => register1_q_net_x14
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register_q_net_x34,
      en(0) => logical_y_net_x7,
      q => register2_q_net_x14
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x16,
      en(0) => logical_y_net_x7,
      q => register3_q_net_x14
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x32,
      b => constant_op_net_x8,
      op(0) => relational_op_net_x8
  );

  shift: entity work.sysgen_shift_7976f4fbac
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => down_sample_q_net_x16,
      op => shift_op_net_x17
  );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx8/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_8eb17f8c9e is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_8eb17f8c9e;

architecture structural of iir_8eb17f8c9e is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub1_s_net_x17: std_logic_vector(31 downto 0);
  signal register_q_net_x35: std_logic_vector(31 downto 0);
  signal shift_op_net_x18: std_logic_vector(31 downto 0);
  signal shift1_op_net_x9: std_logic_vector(31 downto 0);
  signal logical_y_net_x7: std_logic;
  signal addsub1_s_net_x16: std_logic_vector(31 downto 0);
  signal addsub_s_net_x17: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  logical_y_net_x7 <= en;
  addsub1_s_net_x16 <= x;
  y <= addsub_s_net_x17;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => shift_op_net_x18,
      b => register_q_net_x35,
      en(0) => logical_y_net_x7,
      s => addsub_s_net_x17
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => addsub_s_net_x17,
      b => shift1_op_net_x9,
      s => addsub1_s_net_x17
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub1_s_net_x17,
      en(0) => logical_y_net_x7,
      q => register_q_net_x35
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub1_s_net_x16,
      op => shift_op_net_x18
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub_s_net_x17,
      op => shift1_op_net_x9
  );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx8"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity spi_power_tx8_73603e4ed1 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(31 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end spi_power_tx8_73603e4ed1;

architecture structural of spi_power_tx8_73603e4ed1 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal constant30_op_net: std_logic;
  signal constant32_op_net: std_logic;
  signal down_sample_q_net_x16: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x19: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x16: std_logic_vector(31 downto 0);
  signal logical_y_net_x7: std_logic;
  signal addsub_s_net_x17: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant30_op_net <= rst_4;
  constant32_op_net <= en;
  down_sample_q_net_x16 <= inst_power;
  power <= reinterpret_output_port_net_x19;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x17,
      output_port => reinterpret_output_port_net_x19
  );

  cic: entity work.cic_9bc6ac02eb
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_2 => constant30_op_net,
      en => constant32_op_net,
      x => down_sample_q_net_x16,
      y => addsub1_s_net_x16,
      en_cic => logical_y_net_x7
    );

  iir: entity work.iir_8eb17f8c9e
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      en => logical_y_net_x7,
      x => addsub1_s_net_x16,
      y => addsub_s_net_x17
    );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx9/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_710efbcfa3 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_710efbcfa3;

architecture structural of cic_710efbcfa3 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub_s_net_x18: std_logic_vector(41 downto 0);
  signal constant_op_net_x9: std_logic_vector(7 downto 0);
  signal counter_op_net_x33: std_logic_vector(7 downto 0);
  signal register_q_net_x36: std_logic_vector(41 downto 0);
  signal register1_q_net_x15: std_logic_vector(41 downto 0);
  signal register2_q_net_x15: std_logic_vector(41 downto 0);
  signal register3_q_net_x15: std_logic_vector(41 downto 0);
  signal relational_op_net_x9: std_logic;
  signal shift_op_net_x19: std_logic_vector(41 downto 0);
  signal constant33_op_net: std_logic;
  signal constant29_op_net: std_logic;
  signal down_sample_q_net_x17: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x18: std_logic_vector(31 downto 0);
  signal logical_y_net_x8: std_logic;

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant33_op_net <= rst_2;
  constant29_op_net <= en;
  down_sample_q_net_x17 <= x;
  y <= addsub1_s_net_x18;
  en_cic <= logical_y_net_x8;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register1_q_net_x15,
      b => shift_op_net_x19,
      s => addsub_s_net_x18
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register3_q_net_x15,
      b => register2_q_net_x15,
      en(0) => logical_y_net_x8,
      s => addsub1_s_net_x18
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x9
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant33_op_net,
      en(0) => constant29_op_net,
      op => counter_op_net_x33
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant29_op_net,
      d1(0) => relational_op_net_x9,
      y(0) => logical_y_net_x8
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register3_q_net_x15,
      en(0) => logical_y_net_x8,
      q => register_q_net_x36
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x18,
      en(0) => constant29_op_net,
      q => register1_q_net_x15
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register_q_net_x36,
      en(0) => logical_y_net_x8,
      q => register2_q_net_x15
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x18,
      en(0) => logical_y_net_x8,
      q => register3_q_net_x15
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x33,
      b => constant_op_net_x9,
      op(0) => relational_op_net_x9
  );

  shift: entity work.sysgen_shift_7976f4fbac
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => down_sample_q_net_x17,
      op => shift_op_net_x19
  );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx9/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_4d9ce8d881 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_4d9ce8d881;

architecture structural of iir_4d9ce8d881 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub1_s_net_x19: std_logic_vector(31 downto 0);
  signal register_q_net_x37: std_logic_vector(31 downto 0);
  signal shift_op_net_x20: std_logic_vector(31 downto 0);
  signal shift1_op_net_x10: std_logic_vector(31 downto 0);
  signal logical_y_net_x8: std_logic;
  signal addsub1_s_net_x18: std_logic_vector(31 downto 0);
  signal addsub_s_net_x19: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  logical_y_net_x8 <= en;
  addsub1_s_net_x18 <= x;
  y <= addsub_s_net_x19;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => shift_op_net_x20,
      b => register_q_net_x37,
      en(0) => logical_y_net_x8,
      s => addsub_s_net_x19
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => addsub_s_net_x19,
      b => shift1_op_net_x10,
      s => addsub1_s_net_x19
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub1_s_net_x19,
      en(0) => logical_y_net_x8,
      q => register_q_net_x37
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub1_s_net_x18,
      op => shift_op_net_x20
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub_s_net_x19,
      op => shift1_op_net_x10
  );
end structural;


-- Generated from Simulink block "tek_meas/SPI_power_Tx9"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity spi_power_tx9_64e4b2aee3 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(31 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end spi_power_tx9_64e4b2aee3;

architecture structural of spi_power_tx9_64e4b2aee3 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal constant33_op_net: std_logic;
  signal constant29_op_net: std_logic;
  signal down_sample_q_net_x17: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x20: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x18: std_logic_vector(31 downto 0);
  signal logical_y_net_x8: std_logic;
  signal addsub_s_net_x19: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant33_op_net <= rst_4;
  constant29_op_net <= en;
  down_sample_q_net_x17 <= inst_power;
  power <= reinterpret_output_port_net_x20;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x19,
      output_port => reinterpret_output_port_net_x20
  );

  cic: entity work.cic_710efbcfa3
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_2 => constant33_op_net,
      en => constant29_op_net,
      x => down_sample_q_net_x17,
      y => addsub1_s_net_x18,
      en_cic => logical_y_net_x8
    );

  iir: entity work.iir_4d9ce8d881
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      en => logical_y_net_x8,
      x => addsub1_s_net_x18,
      y => addsub_s_net_x19
    );
end structural;


-- Generated from Simulink block "tek_meas/Subsystem/pulse_stretch"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity pulse_stretch_8234d69a25 is
  port (
    clk_1: in std_logic;
    ce_1: in std_logic;
    in_x0: in std_logic;
    out_x0: out std_logic
  );
end pulse_stretch_8234d69a25;

architecture structural of pulse_stretch_8234d69a25 is
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal delay_q_net_x5: std_logic;
  signal address_ready_q_net: std_logic;
  signal logical14_y_net_x0: std_logic;

begin
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  address_ready_q_net <= in_x0;
  out_x0 <= logical14_y_net_x0;

  delay: entity work.xldelay_tek_meas
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
      d(0) => address_ready_q_net,
      q(0) => delay_q_net_x5
  );

  logical14: entity work.sysgen_logical_7bbc549429
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => delay_q_net_x5,
      d1(0) => address_ready_q_net,
      y(0) => logical14_y_net_x0
  );
end structural;


-- Generated from Simulink block "tek_meas/Subsystem/pulse_stretch1"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity pulse_stretch1_312b369020 is
  port (
    clk_1: in std_logic;
    ce_1: in std_logic;
    in_x0: in std_logic;
    out_x0: out std_logic
  );
end pulse_stretch1_312b369020;

architecture structural of pulse_stretch1_312b369020 is
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal delay_q_net_x6: std_logic;
  signal write_data_ready_q_net: std_logic;
  signal logical14_y_net_x1: std_logic;

begin
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  write_data_ready_q_net <= in_x0;
  out_x0 <= logical14_y_net_x1;

  delay: entity work.xldelay_tek_meas
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
      d(0) => write_data_ready_q_net,
      q(0) => delay_q_net_x6
  );

  logical14: entity work.sysgen_logical_7bbc549429
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => delay_q_net_x6,
      d1(0) => write_data_ready_q_net,
      y(0) => logical14_y_net_x1
  );
end structural;


-- Generated from Simulink block "tek_meas/Subsystem/pulse_stretch2"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity pulse_stretch2_14b051332a is
  port (
    clk_1: in std_logic;
    ce_1: in std_logic;
    in_x0: in std_logic;
    out_x0: out std_logic
  );
end pulse_stretch2_14b051332a;

architecture structural of pulse_stretch2_14b051332a is
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal delay_q_net_x7: std_logic;
  signal write_resp_valid_q_net: std_logic;
  signal logical14_y_net_x2: std_logic;

begin
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  write_resp_valid_q_net <= in_x0;
  out_x0 <= logical14_y_net_x2;

  delay: entity work.xldelay_tek_meas
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
      d(0) => write_resp_valid_q_net,
      q(0) => delay_q_net_x7
  );

  logical14: entity work.sysgen_logical_7bbc549429
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => delay_q_net_x7,
      d1(0) => write_resp_valid_q_net,
      y(0) => logical14_y_net_x2
  );
end structural;


-- Generated from Simulink block "tek_meas/Subsystem/pulse_stretch3"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity pulse_stretch3_67aba527ed is
  port (
    clk_1: in std_logic;
    ce_1: in std_logic;
    in_x0: in std_logic;
    out_x0: out std_logic
  );
end pulse_stretch3_67aba527ed;

architecture structural of pulse_stretch3_67aba527ed is
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal delay_q_net_x8: std_logic;
  signal read_channel_valid_q_net: std_logic;
  signal logical14_y_net_x3: std_logic;

begin
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  read_channel_valid_q_net <= in_x0;
  out_x0 <= logical14_y_net_x3;

  delay: entity work.xldelay_tek_meas
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
      d(0) => read_channel_valid_q_net,
      q(0) => delay_q_net_x8
  );

  logical14: entity work.sysgen_logical_7bbc549429
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => delay_q_net_x8,
      d1(0) => read_channel_valid_q_net,
      y(0) => logical14_y_net_x3
  );
end structural;


-- Generated from Simulink block "tek_meas/Subsystem"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity subsystem_c656ce2b33 is
  port (
    clk_1: in std_logic;
    ce_1: in std_logic;
    tx_pow_11: in std_logic_vector(31 downto 0);
    tx_pow_10: in std_logic_vector(31 downto 0);
    rx_pow_11: in std_logic_vector(31 downto 0);
    rx_pow_10: in std_logic_vector(31 downto 0);
    rx_pow_9: in std_logic_vector(31 downto 0);
    rx_pow_8: in std_logic_vector(31 downto 0);
    rx_pow_7: in std_logic_vector(31 downto 0);
    rx_pow_6: in std_logic_vector(31 downto 0);
    rx_pow_5: in std_logic_vector(31 downto 0);
    rx_pow_4: in std_logic_vector(31 downto 0);
    rx_pow_3: in std_logic_vector(31 downto 0);
    rx_pow_2: in std_logic_vector(31 downto 0);
    rx_pow_1: in std_logic_vector(31 downto 0);
    rx_pow_0: in std_logic_vector(31 downto 0);
    tx_pow_9: in std_logic_vector(31 downto 0);
    tx_pow_8: in std_logic_vector(31 downto 0);
    tx_pow_7: in std_logic_vector(31 downto 0);
    tx_pow_6: in std_logic_vector(31 downto 0);
    tx_pow_5: in std_logic_vector(31 downto 0);
    tx_pow_4: in std_logic_vector(31 downto 0);
    tx_pow_3: in std_logic_vector(31 downto 0);
    tx_pow_2: in std_logic_vector(31 downto 0);
    tx_pow_1: in std_logic_vector(31 downto 0);
    tx_pow_0: in std_logic_vector(31 downto 0);
    aresetn: in std_logic;
    rready: in std_logic;
    araddr: in std_logic_vector(7 downto 0);
    arvalid: in std_logic;
    bready: in std_logic;
    wdata: in std_logic_vector(31 downto 0);
    wvalid: in std_logic;
    awaddr: in std_logic_vector(7 downto 0);
    awvalid: in std_logic;
    reg0: out std_logic_vector(31 downto 0);
    awready: out std_logic;
    wready: out std_logic;
    bvalid: out std_logic;
    bresp: out std_logic_vector(1 downto 0);
    rvalid: out std_logic;
    rdata: out std_logic_vector(31 downto 0);
    reg64: out std_logic_vector(31 downto 0)
  );
end subsystem_c656ce2b33;

architecture structural of subsystem_c656ce2b33 is
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal constant_op_net_x10: std_logic_vector(7 downto 0);
  signal constant1_op_net_x0: std_logic_vector(31 downto 0);
  signal constant2_op_net_x0: std_logic_vector(7 downto 0);
  signal constant35_op_net_x0: std_logic;
  signal constant36_op_net_x0: std_logic;
  signal constant37_op_net_x0: std_logic;
  signal constant38_op_net_x0: std_logic;
  signal inverter_op_net_x11: std_logic;
  signal inverter1_op_net: std_logic;
  signal inverter2_op_net: std_logic;
  signal inverter3_op_net: std_logic;
  signal inverter4_op_net: std_logic;
  signal inverter5_op_net: std_logic;
  signal inverter6_op_net: std_logic;
  signal logical_y_net_x9: std_logic;
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
  signal relational_op_net_x10: std_logic;
  signal relational1_op_net: std_logic;
  signal slice_y_net_x0: std_logic_vector(4 downto 0);
  signal address_ready_q_net: std_logic;
  signal read_channel_valid_q_net: std_logic;
  signal write_data_ready_q_net: std_logic;
  signal write_resp_valid_q_net: std_logic;
  signal up_sample3_q_net_x5: std_logic_vector(31 downto 0);
  signal up_sample2_q_net_x5: std_logic_vector(31 downto 0);
  signal up_sample16_q_net: std_logic_vector(31 downto 0);
  signal up_sample_q_net: std_logic_vector(31 downto 0);
  signal up_sample12_q_net: std_logic_vector(31 downto 0);
  signal up_sample14_q_net: std_logic_vector(31 downto 0);
  signal up_sample10_q_net: std_logic_vector(31 downto 0);
  signal up_sample9_q_net: std_logic_vector(31 downto 0);
  signal up_sample7_q_net: std_logic_vector(31 downto 0);
  signal up_sample6_q_net: std_logic_vector(31 downto 0);
  signal up_sample4_q_net: std_logic_vector(31 downto 0);
  signal up_sample3_q_net: std_logic_vector(31 downto 0);
  signal up_sample15_q_net: std_logic_vector(31 downto 0);
  signal up_sample1_q_net: std_logic_vector(31 downto 0);
  signal up_sample3_q_net_x4: std_logic_vector(31 downto 0);
  signal up_sample2_q_net_x4: std_logic_vector(31 downto 0);
  signal up_sample3_q_net_x3: std_logic_vector(31 downto 0);
  signal up_sample2_q_net_x3: std_logic_vector(31 downto 0);
  signal up_sample3_q_net_x2: std_logic_vector(31 downto 0);
  signal up_sample2_q_net_x2: std_logic_vector(31 downto 0);
  signal up_sample3_q_net_x1: std_logic_vector(31 downto 0);
  signal up_sample2_q_net_x1: std_logic_vector(31 downto 0);
  signal up_sample3_q_net_x0: std_logic_vector(31 downto 0);
  signal up_sample2_q_net_x0: std_logic_vector(31 downto 0);
  signal s_axi_lite_aresetn_net: std_logic;
  signal s_axi_lite_rready_net: std_logic;
  signal s_axi_lite_araddr_net: std_logic_vector(7 downto 0);
  signal s_axi_lite_arvalid_net: std_logic;
  signal s_axi_lite_bready_net: std_logic;
  signal s_axi_lite_wdata_net: std_logic_vector(31 downto 0);
  signal s_axi_lite_wvalid_net: std_logic;
  signal s_axi_lite_awaddr_net: std_logic_vector(7 downto 0);
  signal s_axi_lite_awvalid_net: std_logic;
  signal register_q_net_x38: std_logic_vector(31 downto 0);
  signal logical14_y_net_x0: std_logic;
  signal logical14_y_net_x1: std_logic;
  signal logical14_y_net_x2: std_logic;
  signal constant39_op_net_x0: std_logic_vector(1 downto 0);
  signal logical14_y_net_x3: std_logic;
  signal mux_y_net_x26: std_logic_vector(31 downto 0);
  signal register1_q_net_x16: std_logic_vector(31 downto 0);

begin
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  up_sample3_q_net_x5 <= tx_pow_11;
  up_sample2_q_net_x5 <= tx_pow_10;
  up_sample16_q_net <= rx_pow_11;
  up_sample_q_net <= rx_pow_10;
  up_sample12_q_net <= rx_pow_9;
  up_sample14_q_net <= rx_pow_8;
  up_sample10_q_net <= rx_pow_7;
  up_sample9_q_net <= rx_pow_6;
  up_sample7_q_net <= rx_pow_5;
  up_sample6_q_net <= rx_pow_4;
  up_sample4_q_net <= rx_pow_3;
  up_sample3_q_net <= rx_pow_2;
  up_sample15_q_net <= rx_pow_1;
  up_sample1_q_net <= rx_pow_0;
  up_sample3_q_net_x4 <= tx_pow_9;
  up_sample2_q_net_x4 <= tx_pow_8;
  up_sample3_q_net_x3 <= tx_pow_7;
  up_sample2_q_net_x3 <= tx_pow_6;
  up_sample3_q_net_x2 <= tx_pow_5;
  up_sample2_q_net_x2 <= tx_pow_4;
  up_sample3_q_net_x1 <= tx_pow_3;
  up_sample2_q_net_x1 <= tx_pow_2;
  up_sample3_q_net_x0 <= tx_pow_1;
  up_sample2_q_net_x0 <= tx_pow_0;
  s_axi_lite_aresetn_net <= aresetn;
  s_axi_lite_rready_net <= rready;
  s_axi_lite_araddr_net <= araddr;
  s_axi_lite_arvalid_net <= arvalid;
  s_axi_lite_bready_net <= bready;
  s_axi_lite_wdata_net <= wdata;
  s_axi_lite_wvalid_net <= wvalid;
  s_axi_lite_awaddr_net <= awaddr;
  s_axi_lite_awvalid_net <= awvalid;
  reg0 <= register_q_net_x38;
  awready <= logical14_y_net_x0;
  wready <= logical14_y_net_x1;
  bvalid <= logical14_y_net_x2;
  bresp <= constant39_op_net_x0;
  rvalid <= logical14_y_net_x3;
  rdata <= mux_y_net_x26;
  reg64 <= register1_q_net_x16;

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x10
  );

  constant1: entity work.sysgen_constant_c210523b68
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant1_op_net_x0
  );

  constant2: entity work.sysgen_constant_9163327623
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant2_op_net_x0
  );

  constant35: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant35_op_net_x0
  );

  constant36: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant36_op_net_x0
  );

  constant37: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant37_op_net_x0
  );

  constant38: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant38_op_net_x0
  );

  constant39: entity work.sysgen_constant_3f6518aaa0
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant39_op_net_x0
  );

  inverter: entity work.sysgen_inverter_26676c834a
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip(0) => s_axi_lite_awvalid_net,
      op(0) => inverter_op_net_x11
  );

  inverter1: entity work.sysgen_inverter_26676c834a
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip(0) => s_axi_lite_aresetn_net,
      op(0) => inverter1_op_net
  );

  inverter2: entity work.sysgen_inverter_26676c834a
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip(0) => s_axi_lite_arvalid_net,
      op(0) => inverter2_op_net
  );

  inverter3: entity work.sysgen_inverter_26676c834a
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip(0) => s_axi_lite_awvalid_net,
      op(0) => inverter3_op_net
  );

  inverter4: entity work.sysgen_inverter_26676c834a
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip(0) => s_axi_lite_wvalid_net,
      op(0) => inverter4_op_net
  );

  inverter5: entity work.sysgen_inverter_26676c834a
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip(0) => s_axi_lite_bready_net,
      op(0) => inverter5_op_net
  );

  inverter6: entity work.sysgen_inverter_26676c834a
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip(0) => s_axi_lite_rready_net,
      op(0) => inverter6_op_net
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => address_ready_q_net,
      d1(0) => s_axi_lite_awvalid_net,
      y(0) => logical_y_net_x9
  );

  logical1: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => write_data_ready_q_net,
      d1(0) => s_axi_lite_wvalid_net,
      y(0) => logical1_y_net
  );

  logical10: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => inverter5_op_net,
      d1(0) => write_resp_valid_q_net,
      y(0) => logical10_y_net
  );

  logical11: entity work.sysgen_logical_7bbc549429
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => logical4_y_net,
      d1(0) => logical12_y_net,
      y(0) => logical11_y_net
  );

  logical12: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => inverter6_op_net,
      d1(0) => read_channel_valid_q_net,
      y(0) => logical12_y_net
  );

  logical13: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => relational_op_net_x10,
      d1(0) => write_resp_valid_q_net,
      y(0) => logical13_y_net
  );

  logical14: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => relational1_op_net,
      d1(0) => write_resp_valid_q_net,
      y(0) => logical14_y_net
  );

  logical2: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => write_resp_valid_q_net,
      d1(0) => s_axi_lite_bready_net,
      y(0) => logical2_y_net
  );

  logical3: entity work.sysgen_logical_4146567fd4
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => logical2_y_net,
      d1(0) => logical5_y_net,
      d2(0) => logical6_y_net,
      y(0) => logical3_y_net
  );

  logical4: entity work.sysgen_logical_496cf9678d
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => address_ready_q_net,
      d1(0) => s_axi_lite_arvalid_net,
      d2(0) => inverter_op_net_x11,
      y(0) => logical4_y_net
  );

  logical5: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => s_axi_lite_rready_net,
      d1(0) => read_channel_valid_q_net,
      y(0) => logical5_y_net
  );

  logical6: entity work.sysgen_logical_496cf9678d
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => inverter3_op_net,
      d1(0) => inverter2_op_net,
      d2(0) => address_ready_q_net,
      y(0) => logical6_y_net
  );

  logical7: entity work.sysgen_logical_7bbc549429
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => logical_y_net_x9,
      d1(0) => logical8_y_net,
      y(0) => logical7_y_net
  );

  logical8: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => inverter4_op_net,
      d1(0) => write_data_ready_q_net,
      y(0) => logical8_y_net
  );

  logical9: entity work.sysgen_logical_7bbc549429
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => logical1_y_net,
      d1(0) => logical10_y_net,
      y(0) => logical9_y_net
  );

  mux: entity work.sysgen_mux_9a7366b0b4
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel => slice_y_net_x0,
      d0 => register_q_net_x38,
      d1 => up_sample2_q_net_x0,
      d2 => up_sample3_q_net_x0,
      d3 => up_sample2_q_net_x1,
      d4 => up_sample3_q_net_x1,
      d5 => up_sample2_q_net_x2,
      d6 => up_sample3_q_net_x2,
      d7 => up_sample2_q_net_x3,
      d8 => up_sample3_q_net_x3,
      d9 => up_sample2_q_net_x4,
      d10 => up_sample3_q_net_x4,
      d11 => up_sample1_q_net,
      d12 => up_sample15_q_net,
      d13 => up_sample3_q_net,
      d14 => up_sample4_q_net,
      d15 => up_sample6_q_net,
      d16 => up_sample7_q_net,
      d17 => up_sample9_q_net,
      d18 => up_sample10_q_net,
      d19 => up_sample14_q_net,
      d20 => up_sample12_q_net,
      d21 => up_sample2_q_net_x5,
      d22 => up_sample3_q_net_x5,
      d23 => up_sample_q_net,
      d24 => up_sample16_q_net,
      d25 => register1_q_net_x16,
      d26 => constant1_op_net_x0,
      d27 => constant1_op_net_x0,
      d28 => constant1_op_net_x0,
      d29 => constant1_op_net_x0,
      d30 => constant1_op_net_x0,
      d31 => constant1_op_net_x0,
      y => mux_y_net_x26
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => s_axi_lite_wdata_net,
      en(0) => logical13_y_net,
      q => register_q_net_x38
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => s_axi_lite_wdata_net,
      en(0) => logical14_y_net,
      q => register1_q_net_x16
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => s_axi_lite_awaddr_net,
      b => constant_op_net_x10,
      op(0) => relational_op_net_x10
  );

  relational1: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => s_axi_lite_awaddr_net,
      b => constant2_op_net_x0,
      op(0) => relational1_op_net
  );

  slice: entity work.xlslice_tek_meas
    generic map (
      new_lsb => 2,
      new_msb => 6,
      x_width => 8,
      y_width => 5)
    port map (
      x => s_axi_lite_araddr_net,
      y => slice_y_net_x0
  );

  address_ready: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"1")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      d(0) => logical3_y_net,
      rst(0) => inverter1_op_net,
      en(0) => constant35_op_net_x0,
      q(0) => address_ready_q_net
  );

  read_channel_valid: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      d(0) => logical11_y_net,
      rst(0) => inverter1_op_net,
      en(0) => constant38_op_net_x0,
      q(0) => read_channel_valid_q_net
  );

  write_data_ready: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      d(0) => logical7_y_net,
      rst(0) => inverter1_op_net,
      en(0) => constant36_op_net_x0,
      q(0) => write_data_ready_q_net
  );

  write_resp_valid: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      d(0) => logical9_y_net,
      rst(0) => inverter1_op_net,
      en(0) => constant37_op_net_x0,
      q(0) => write_resp_valid_q_net
  );

  pulse_stretch: entity work.pulse_stretch_8234d69a25
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      in_x0 => address_ready_q_net,
      out_x0 => logical14_y_net_x0
    );

  pulse_stretch1: entity work.pulse_stretch1_312b369020
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      in_x0 => write_data_ready_q_net,
      out_x0 => logical14_y_net_x1
    );

  pulse_stretch2: entity work.pulse_stretch2_14b051332a
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      in_x0 => write_resp_valid_q_net,
      out_x0 => logical14_y_net_x2
    );

  pulse_stretch3: entity work.pulse_stretch3_67aba527ed
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      in_x0 => read_channel_valid_q_net,
      out_x0 => logical14_y_net_x3
    );
end structural;


-- Generated from Simulink block "tek_meas/power1/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_a348af1238 is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_a348af1238;

architecture structural of cic_a348af1238 is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal addsub_s_net_x20: std_logic_vector(41 downto 0);
  signal constant_op_net_x11: std_logic_vector(7 downto 0);
  signal counter_op_net_x34: std_logic_vector(7 downto 0);
  signal register_q_net_x39: std_logic_vector(41 downto 0);
  signal register1_q_net_x17: std_logic_vector(41 downto 0);
  signal register2_q_net_x16: std_logic_vector(41 downto 0);
  signal register3_q_net_x16: std_logic_vector(41 downto 0);
  signal relational_op_net_x11: std_logic;
  signal shift_op_net_x21: std_logic_vector(41 downto 0);
  signal constant37_op_net: std_logic;
  signal constant39_op_net: std_logic;
  signal down_sample_q_net_x8: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x20: std_logic_vector(31 downto 0);
  signal logical_y_net_x10: std_logic;

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  constant37_op_net <= rst_2;
  constant39_op_net <= en;
  down_sample_q_net_x8 <= x;
  y <= addsub1_s_net_x20;
  en_cic <= logical_y_net_x10;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      a => register1_q_net_x17,
      b => shift_op_net_x21,
      s => addsub_s_net_x20
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      a => register3_q_net_x16,
      b => register2_q_net_x16,
      en(0) => logical_y_net_x10,
      s => addsub1_s_net_x20
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x11
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      rst(0) => constant37_op_net,
      en(0) => constant39_op_net,
      op => counter_op_net_x34
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant39_op_net,
      d1(0) => relational_op_net_x11,
      y(0) => logical_y_net_x10
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      rst => "0",
      d => register3_q_net_x16,
      en(0) => logical_y_net_x10,
      q => register_q_net_x39
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      rst => "0",
      d => addsub_s_net_x20,
      en(0) => constant39_op_net,
      q => register1_q_net_x17
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      rst => "0",
      d => register_q_net_x39,
      en(0) => logical_y_net_x10,
      q => register2_q_net_x16
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      rst => "0",
      d => addsub_s_net_x20,
      en(0) => logical_y_net_x10,
      q => register3_q_net_x16
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x34,
      b => constant_op_net_x11,
      op(0) => relational_op_net_x11
  );

  shift: entity work.sysgen_shift_7976f4fbac
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      ip => down_sample_q_net_x8,
      op => shift_op_net_x21
  );
end structural;


-- Generated from Simulink block "tek_meas/power1/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_57573426fa is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_57573426fa;

architecture structural of iir_57573426fa is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal addsub1_s_net_x21: std_logic_vector(31 downto 0);
  signal register_q_net_x40: std_logic_vector(31 downto 0);
  signal shift_op_net_x22: std_logic_vector(31 downto 0);
  signal shift1_op_net_x12: std_logic_vector(31 downto 0);
  signal logical_y_net_x10: std_logic;
  signal addsub1_s_net_x20: std_logic_vector(31 downto 0);
  signal addsub_s_net_x21: std_logic_vector(31 downto 0);

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  logical_y_net_x10 <= en;
  addsub1_s_net_x20 <= x;
  y <= addsub_s_net_x21;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      a => shift_op_net_x22,
      b => register_q_net_x40,
      en(0) => logical_y_net_x10,
      s => addsub_s_net_x21
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      a => addsub_s_net_x21,
      b => shift1_op_net_x12,
      s => addsub1_s_net_x21
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      rst => "0",
      d => addsub1_s_net_x21,
      en(0) => logical_y_net_x10,
      q => register_q_net_x40
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      ip => addsub1_s_net_x20,
      op => shift_op_net_x22
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      ip => addsub_s_net_x21,
      op => shift1_op_net_x12
  );
end structural;


-- Generated from Simulink block "tek_meas/power1"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power1_x0_62e27e34bb is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(31 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end power1_x0_62e27e34bb;

architecture structural of power1_x0_62e27e34bb is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal constant37_op_net: std_logic;
  signal constant39_op_net: std_logic;
  signal down_sample_q_net_x8: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x21: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x20: std_logic_vector(31 downto 0);
  signal logical_y_net_x10: std_logic;
  signal addsub_s_net_x21: std_logic_vector(31 downto 0);

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  constant37_op_net <= rst_4;
  constant39_op_net <= en;
  down_sample_q_net_x8 <= inst_power;
  power <= reinterpret_output_port_net_x21;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x21,
      output_port => reinterpret_output_port_net_x21
  );

  cic: entity work.cic_a348af1238
    port map (
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      rst_2 => constant37_op_net,
      en => constant39_op_net,
      x => down_sample_q_net_x8,
      y => addsub1_s_net_x20,
      en_cic => logical_y_net_x10
    );

  iir: entity work.iir_57573426fa
    port map (
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      en => logical_y_net_x10,
      x => addsub1_s_net_x20,
      y => addsub_s_net_x21
    );
end structural;


-- Generated from Simulink block "tek_meas/power2/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_fc69a15ceb is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_fc69a15ceb;

architecture structural of cic_fc69a15ceb is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal addsub_s_net_x22: std_logic_vector(41 downto 0);
  signal constant_op_net_x12: std_logic_vector(7 downto 0);
  signal counter_op_net_x35: std_logic_vector(7 downto 0);
  signal register_q_net_x41: std_logic_vector(41 downto 0);
  signal register1_q_net_x18: std_logic_vector(41 downto 0);
  signal register2_q_net_x17: std_logic_vector(41 downto 0);
  signal register3_q_net_x17: std_logic_vector(41 downto 0);
  signal relational_op_net_x12: std_logic;
  signal shift_op_net_x23: std_logic_vector(41 downto 0);
  signal constant38_op_net: std_logic;
  signal constant40_op_net: std_logic;
  signal down_sample_q_net_x9: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x22: std_logic_vector(31 downto 0);
  signal logical_y_net_x11: std_logic;

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  constant38_op_net <= rst_2;
  constant40_op_net <= en;
  down_sample_q_net_x9 <= x;
  y <= addsub1_s_net_x22;
  en_cic <= logical_y_net_x11;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      a => register1_q_net_x18,
      b => shift_op_net_x23,
      s => addsub_s_net_x22
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      a => register3_q_net_x17,
      b => register2_q_net_x17,
      en(0) => logical_y_net_x11,
      s => addsub1_s_net_x22
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x12
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      rst(0) => constant38_op_net,
      en(0) => constant40_op_net,
      op => counter_op_net_x35
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant40_op_net,
      d1(0) => relational_op_net_x12,
      y(0) => logical_y_net_x11
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      rst => "0",
      d => register3_q_net_x17,
      en(0) => logical_y_net_x11,
      q => register_q_net_x41
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      rst => "0",
      d => addsub_s_net_x22,
      en(0) => constant40_op_net,
      q => register1_q_net_x18
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      rst => "0",
      d => register_q_net_x41,
      en(0) => logical_y_net_x11,
      q => register2_q_net_x17
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      rst => "0",
      d => addsub_s_net_x22,
      en(0) => logical_y_net_x11,
      q => register3_q_net_x17
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x35,
      b => constant_op_net_x12,
      op(0) => relational_op_net_x12
  );

  shift: entity work.sysgen_shift_7976f4fbac
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      ip => down_sample_q_net_x9,
      op => shift_op_net_x23
  );
end structural;


-- Generated from Simulink block "tek_meas/power2/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_7e94aee82a is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_7e94aee82a;

architecture structural of iir_7e94aee82a is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal addsub1_s_net_x23: std_logic_vector(31 downto 0);
  signal register_q_net_x42: std_logic_vector(31 downto 0);
  signal shift_op_net_x24: std_logic_vector(31 downto 0);
  signal shift1_op_net_x13: std_logic_vector(31 downto 0);
  signal logical_y_net_x11: std_logic;
  signal addsub1_s_net_x22: std_logic_vector(31 downto 0);
  signal addsub_s_net_x23: std_logic_vector(31 downto 0);

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  logical_y_net_x11 <= en;
  addsub1_s_net_x22 <= x;
  y <= addsub_s_net_x23;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      a => shift_op_net_x24,
      b => register_q_net_x42,
      en(0) => logical_y_net_x11,
      s => addsub_s_net_x23
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      a => addsub_s_net_x23,
      b => shift1_op_net_x13,
      s => addsub1_s_net_x23
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      rst => "0",
      d => addsub1_s_net_x23,
      en(0) => logical_y_net_x11,
      q => register_q_net_x42
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      ip => addsub1_s_net_x22,
      op => shift_op_net_x24
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      ip => addsub_s_net_x23,
      op => shift1_op_net_x13
  );
end structural;


-- Generated from Simulink block "tek_meas/power2"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power2_x0_0f6f060990 is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(31 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end power2_x0_0f6f060990;

architecture structural of power2_x0_0f6f060990 is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal constant38_op_net: std_logic;
  signal constant40_op_net: std_logic;
  signal down_sample_q_net_x9: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x22: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x22: std_logic_vector(31 downto 0);
  signal logical_y_net_x11: std_logic;
  signal addsub_s_net_x23: std_logic_vector(31 downto 0);

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  constant38_op_net <= rst_4;
  constant40_op_net <= en;
  down_sample_q_net_x9 <= inst_power;
  power <= reinterpret_output_port_net_x22;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x23,
      output_port => reinterpret_output_port_net_x22
  );

  cic: entity work.cic_fc69a15ceb
    port map (
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      rst_2 => constant38_op_net,
      en => constant40_op_net,
      x => down_sample_q_net_x9,
      y => addsub1_s_net_x22,
      en_cic => logical_y_net_x11
    );

  iir: entity work.iir_7e94aee82a
    port map (
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      en => logical_y_net_x11,
      x => addsub1_s_net_x22,
      y => addsub_s_net_x23
    );
end structural;


-- Generated from Simulink block "tek_meas/tx0/AXIS_to_parallel"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity axis_to_parallel_a2d93d47fe is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_1: in std_logic;
    ce_1: in std_logic;
    tdata: in std_logic_vector(15 downto 0);
    tvalid: in std_logic;
    tlast: in std_logic;
    i0: out std_logic_vector(15 downto 0);
    q0: out std_logic_vector(15 downto 0);
    i1: out std_logic_vector(15 downto 0);
    q1: out std_logic_vector(15 downto 0)
  );
end axis_to_parallel_a2d93d47fe;

architecture structural of axis_to_parallel_a2d93d47fe is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal delay_q_net_x9: std_logic;
  signal register_q_net_x43: std_logic_vector(15 downto 0);
  signal register1_q_net_x19: std_logic_vector(15 downto 0);
  signal register2_q_net_x18: std_logic_vector(15 downto 0);
  signal register3_q_net_x18: std_logic_vector(15 downto 0);
  signal register4_q_net_x6: std_logic_vector(15 downto 0);
  signal register5_q_net_x6: std_logic_vector(15 downto 0);
  signal register6_q_net_x6: std_logic_vector(15 downto 0);
  signal register7_q_net_x6: std_logic_vector(15 downto 0);
  signal register2_q_net_x19: std_logic_vector(15 downto 0);
  signal register1_q_net_x20: std_logic;
  signal register3_q_net_x19: std_logic;
  signal down_sample3_q_net_x5: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x5: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x5: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x18: std_logic_vector(15 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  register2_q_net_x19 <= tdata;
  register1_q_net_x20 <= tvalid;
  register3_q_net_x19 <= tlast;
  i0 <= down_sample3_q_net_x5;
  q0 <= down_sample2_q_net_x5;
  i1 <= down_sample1_q_net_x5;
  q1 <= down_sample_q_net_x18;

  delay: entity work.xldelay_tek_meas
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
      d(0) => register3_q_net_x19,
      q(0) => delay_q_net_x9
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register4_q_net_x6,
      q => down_sample_q_net_x18
  );

  down_sample1: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register5_q_net_x6,
      q => down_sample1_q_net_x5
  );

  down_sample2: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register6_q_net_x6,
      q => down_sample2_q_net_x5
  );

  down_sample3: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register7_q_net_x6,
      q => down_sample3_q_net_x5
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x19,
      en(0) => register1_q_net_x20,
      q => register_q_net_x43
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net_x43,
      en(0) => register1_q_net_x20,
      q => register1_q_net_x19
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net_x19,
      en(0) => register1_q_net_x20,
      q => register2_q_net_x18
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x18,
      en(0) => register1_q_net_x20,
      q => register3_q_net_x18
  );

  register4: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net_x43,
      en(0) => delay_q_net_x9,
      q => register4_q_net_x6
  );

  register5: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net_x19,
      en(0) => delay_q_net_x9,
      q => register5_q_net_x6
  );

  register6: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x18,
      en(0) => delay_q_net_x9,
      q => register6_q_net_x6
  );

  register7: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register3_q_net_x18,
      en(0) => delay_q_net_x9,
      q => register7_q_net_x6
  );
end structural;


-- Generated from Simulink block "tek_meas/tx0/Power/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_d0c0c66493 is
  port (
    clk_2: in std_logic;
    ce_2: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_d0c0c66493;

architecture structural of tdm_d0c0c66493 is
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal counter_op_net_x37: std_logic;
  signal convert1_dout_net_x5: std_logic_vector(17 downto 0);
  signal convert_dout_net_x12: std_logic_vector(17 downto 0);
  signal constant12_op_net_x0: std_logic;
  signal mux_y_net_x29: std_logic_vector(17 downto 0);

begin
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  convert1_dout_net_x5 <= in1;
  convert_dout_net_x12 <= in0;
  constant12_op_net_x0 <= rst;
  out_x0 <= mux_y_net_x29;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant12_op_net_x0,
      op(0) => counter_op_net_x37
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x37,
      d0 => convert_dout_net_x12,
      d1 => convert1_dout_net_x5,
      y => mux_y_net_x29
  );
end structural;


-- Generated from Simulink block "tek_meas/tx0/Power"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power_98a37cf14b is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(15 downto 0)
  );
end power_98a37cf14b;

architecture structural of power_98a37cf14b is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal convert_dout_net_x13: std_logic;
  signal convert1_dout_net_x6: std_logic_vector(15 downto 0);
  signal convert2_dout_net_x13: std_logic_vector(29 downto 0);
  signal counter_op_net_x36: std_logic;
  signal dsp48e1_p_net_x11: std_logic_vector(47 downto 0);
  signal inverter_op_net_x12: std_logic;
  signal mux_y_net_x28: std_logic_vector(19 downto 0);
  signal opmode_op_net_x11: std_logic_vector(19 downto 0);
  signal opmode1_op_net_x11: std_logic_vector(19 downto 0);
  signal register_q_net_x44: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net_x23: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net_x11: std_logic_vector(47 downto 0);
  signal constant12_op_net_x0: std_logic;
  signal convert1_dout_net_x5: std_logic_vector(17 downto 0);
  signal convert_dout_net_x12: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x19: std_logic_vector(15 downto 0);
  signal mux_y_net_x29: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  constant12_op_net_x0 <= reset;
  convert1_dout_net_x5 <= in_q;
  convert_dout_net_x12 <= in_i;
  power <= down_sample_q_net_x19;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net_x12,
      dout(0) => convert_dout_net_x13
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 15,
      dout_width => 16,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => register_q_net_x44,
      dout => convert1_dout_net_x6
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net_x23,
      dout => convert2_dout_net_x13
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant12_op_net_x0,
      op(0) => counter_op_net_x36
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x13,
      b => reinterpret_output_port_net_x23,
      c => dsp48e1_p_net_x11,
      op => mux_y_net_x28,
      p => dsp48e1_p_net_x11
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert1_dout_net_x6,
      q => down_sample_q_net_x19
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      ip(0) => counter_op_net_x36,
      op(0) => inverter_op_net_x12
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x36,
      d0 => opmode_op_net_x11,
      d1 => opmode1_op_net_x11,
      y => mux_y_net_x28
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net_x11
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net_x11
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      rst => "0",
      d => reinterpret1_output_port_net_x11,
      en(0) => convert_dout_net_x13,
      q => register_q_net_x44
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x29,
      output_port => reinterpret_output_port_net_x23
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net_x11,
      output_port => reinterpret1_output_port_net_x11
  );

  tdm: entity work.tdm_d0c0c66493
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      in1 => convert1_dout_net_x5,
      in0 => convert_dout_net_x12,
      rst => constant12_op_net_x0,
      out_x0 => mux_y_net_x29
    );
end structural;


-- Generated from Simulink block "tek_meas/tx0/Power1/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_63249e4c53 is
  port (
    clk_2: in std_logic;
    ce_2: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_63249e4c53;

architecture structural of tdm_63249e4c53 is
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal counter_op_net_x39: std_logic;
  signal convert3_dout_net_x7: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x12: std_logic_vector(17 downto 0);
  signal constant3_op_net_x0: std_logic;
  signal mux_y_net_x31: std_logic_vector(17 downto 0);

begin
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  convert3_dout_net_x7 <= in1;
  convert2_dout_net_x12 <= in0;
  constant3_op_net_x0 <= rst;
  out_x0 <= mux_y_net_x31;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant3_op_net_x0,
      op(0) => counter_op_net_x39
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x39,
      d0 => convert2_dout_net_x12,
      d1 => convert3_dout_net_x7,
      y => mux_y_net_x31
  );
end structural;


-- Generated from Simulink block "tek_meas/tx0/Power1"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power1_x0_0f36999c34 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(15 downto 0)
  );
end power1_x0_0f36999c34;

architecture structural of power1_x0_0f36999c34 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal convert_dout_net_x14: std_logic;
  signal convert1_dout_net_x7: std_logic_vector(15 downto 0);
  signal convert2_dout_net_x14: std_logic_vector(29 downto 0);
  signal counter_op_net_x38: std_logic;
  signal dsp48e1_p_net_x12: std_logic_vector(47 downto 0);
  signal inverter_op_net_x13: std_logic;
  signal mux_y_net_x30: std_logic_vector(19 downto 0);
  signal opmode_op_net_x12: std_logic_vector(19 downto 0);
  signal opmode1_op_net_x12: std_logic_vector(19 downto 0);
  signal register_q_net_x45: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net_x24: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net_x12: std_logic_vector(47 downto 0);
  signal constant3_op_net_x0: std_logic;
  signal convert3_dout_net_x7: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x12: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x20: std_logic_vector(15 downto 0);
  signal mux_y_net_x31: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  constant3_op_net_x0 <= reset;
  convert3_dout_net_x7 <= in_q;
  convert2_dout_net_x12 <= in_i;
  power <= down_sample_q_net_x20;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net_x13,
      dout(0) => convert_dout_net_x14
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 15,
      dout_width => 16,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => register_q_net_x45,
      dout => convert1_dout_net_x7
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net_x24,
      dout => convert2_dout_net_x14
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant3_op_net_x0,
      op(0) => counter_op_net_x38
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x14,
      b => reinterpret_output_port_net_x24,
      c => dsp48e1_p_net_x12,
      op => mux_y_net_x30,
      p => dsp48e1_p_net_x12
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert1_dout_net_x7,
      q => down_sample_q_net_x20
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      ip(0) => counter_op_net_x38,
      op(0) => inverter_op_net_x13
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x38,
      d0 => opmode_op_net_x12,
      d1 => opmode1_op_net_x12,
      y => mux_y_net_x30
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net_x12
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net_x12
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      rst => "0",
      d => reinterpret1_output_port_net_x12,
      en(0) => convert_dout_net_x14,
      q => register_q_net_x45
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x31,
      output_port => reinterpret_output_port_net_x24
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net_x12,
      output_port => reinterpret1_output_port_net_x12
  );

  tdm: entity work.tdm_63249e4c53
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      in1 => convert3_dout_net_x7,
      in0 => convert2_dout_net_x12,
      rst => constant3_op_net_x0,
      out_x0 => mux_y_net_x31
    );
end structural;


-- Generated from Simulink block "tek_meas/tx0/SPI_power_Tx0/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_585872a1d5 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(15 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_585872a1d5;

architecture structural of cic_585872a1d5 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub_s_net_x24: std_logic_vector(41 downto 0);
  signal constant_op_net_x13: std_logic_vector(7 downto 0);
  signal counter_op_net_x40: std_logic_vector(7 downto 0);
  signal register_q_net_x46: std_logic_vector(41 downto 0);
  signal register1_q_net_x21: std_logic_vector(41 downto 0);
  signal register2_q_net_x20: std_logic_vector(41 downto 0);
  signal register3_q_net_x20: std_logic_vector(41 downto 0);
  signal relational_op_net_x13: std_logic;
  signal shift_op_net_x25: std_logic_vector(41 downto 0);
  signal constant13_op_net_x0: std_logic;
  signal constant14_op_net_x1: std_logic;
  signal down_sample_q_net_x19: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x24: std_logic_vector(31 downto 0);
  signal logical_y_net_x12: std_logic;

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant13_op_net_x0 <= rst_2;
  constant14_op_net_x1 <= en;
  down_sample_q_net_x19 <= x;
  y <= addsub1_s_net_x24;
  en_cic <= logical_y_net_x12;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register1_q_net_x21,
      b => shift_op_net_x25,
      s => addsub_s_net_x24
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register3_q_net_x20,
      b => register2_q_net_x20,
      en(0) => logical_y_net_x12,
      s => addsub1_s_net_x24
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x13
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant13_op_net_x0,
      en(0) => constant14_op_net_x1,
      op => counter_op_net_x40
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant14_op_net_x1,
      d1(0) => relational_op_net_x13,
      y(0) => logical_y_net_x12
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register3_q_net_x20,
      en(0) => logical_y_net_x12,
      q => register_q_net_x46
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x24,
      en(0) => constant14_op_net_x1,
      q => register1_q_net_x21
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register_q_net_x46,
      en(0) => logical_y_net_x12,
      q => register2_q_net_x20
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x24,
      en(0) => logical_y_net_x12,
      q => register3_q_net_x20
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x40,
      b => constant_op_net_x13,
      op(0) => relational_op_net_x13
  );

  shift: entity work.sysgen_shift_9e1e4534b0
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => down_sample_q_net_x19,
      op => shift_op_net_x25
  );
end structural;


-- Generated from Simulink block "tek_meas/tx0/SPI_power_Tx0/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_7bb00fbaf7 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_7bb00fbaf7;

architecture structural of iir_7bb00fbaf7 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub1_s_net_x25: std_logic_vector(31 downto 0);
  signal register_q_net_x47: std_logic_vector(31 downto 0);
  signal shift_op_net_x26: std_logic_vector(31 downto 0);
  signal shift1_op_net_x14: std_logic_vector(31 downto 0);
  signal logical_y_net_x12: std_logic;
  signal addsub1_s_net_x24: std_logic_vector(31 downto 0);
  signal addsub_s_net_x25: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  logical_y_net_x12 <= en;
  addsub1_s_net_x24 <= x;
  y <= addsub_s_net_x25;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => shift_op_net_x26,
      b => register_q_net_x47,
      en(0) => logical_y_net_x12,
      s => addsub_s_net_x25
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => addsub_s_net_x25,
      b => shift1_op_net_x14,
      s => addsub1_s_net_x25
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub1_s_net_x25,
      en(0) => logical_y_net_x12,
      q => register_q_net_x47
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub1_s_net_x24,
      op => shift_op_net_x26
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub_s_net_x25,
      op => shift1_op_net_x14
  );
end structural;


-- Generated from Simulink block "tek_meas/tx0/SPI_power_Tx0"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity spi_power_tx0_80868561b0 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(15 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end spi_power_tx0_80868561b0;

architecture structural of spi_power_tx0_80868561b0 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal constant13_op_net_x0: std_logic;
  signal constant14_op_net_x1: std_logic;
  signal down_sample_q_net_x19: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x25: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x24: std_logic_vector(31 downto 0);
  signal logical_y_net_x12: std_logic;
  signal addsub_s_net_x25: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant13_op_net_x0 <= rst_4;
  constant14_op_net_x1 <= en;
  down_sample_q_net_x19 <= inst_power;
  power <= reinterpret_output_port_net_x25;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x25,
      output_port => reinterpret_output_port_net_x25
  );

  cic: entity work.cic_585872a1d5
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_2 => constant13_op_net_x0,
      en => constant14_op_net_x1,
      x => down_sample_q_net_x19,
      y => addsub1_s_net_x24,
      en_cic => logical_y_net_x12
    );

  iir: entity work.iir_7bb00fbaf7
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      en => logical_y_net_x12,
      x => addsub1_s_net_x24,
      y => addsub_s_net_x25
    );
end structural;


-- Generated from Simulink block "tek_meas/tx0/SPI_power_Tx1/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_8bd76bb508 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(15 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_8bd76bb508;

architecture structural of cic_8bd76bb508 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub_s_net_x26: std_logic_vector(41 downto 0);
  signal constant_op_net_x14: std_logic_vector(7 downto 0);
  signal counter_op_net_x41: std_logic_vector(7 downto 0);
  signal register_q_net_x48: std_logic_vector(41 downto 0);
  signal register1_q_net_x22: std_logic_vector(41 downto 0);
  signal register2_q_net_x21: std_logic_vector(41 downto 0);
  signal register3_q_net_x21: std_logic_vector(41 downto 0);
  signal relational_op_net_x14: std_logic;
  signal shift_op_net_x27: std_logic_vector(41 downto 0);
  signal constant16_op_net_x0: std_logic;
  signal constant17_op_net_x0: std_logic;
  signal down_sample_q_net_x20: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x26: std_logic_vector(31 downto 0);
  signal logical_y_net_x13: std_logic;

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant16_op_net_x0 <= rst_2;
  constant17_op_net_x0 <= en;
  down_sample_q_net_x20 <= x;
  y <= addsub1_s_net_x26;
  en_cic <= logical_y_net_x13;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register1_q_net_x22,
      b => shift_op_net_x27,
      s => addsub_s_net_x26
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register3_q_net_x21,
      b => register2_q_net_x21,
      en(0) => logical_y_net_x13,
      s => addsub1_s_net_x26
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x14
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant16_op_net_x0,
      en(0) => constant17_op_net_x0,
      op => counter_op_net_x41
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant17_op_net_x0,
      d1(0) => relational_op_net_x14,
      y(0) => logical_y_net_x13
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register3_q_net_x21,
      en(0) => logical_y_net_x13,
      q => register_q_net_x48
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x26,
      en(0) => constant17_op_net_x0,
      q => register1_q_net_x22
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register_q_net_x48,
      en(0) => logical_y_net_x13,
      q => register2_q_net_x21
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x26,
      en(0) => logical_y_net_x13,
      q => register3_q_net_x21
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x41,
      b => constant_op_net_x14,
      op(0) => relational_op_net_x14
  );

  shift: entity work.sysgen_shift_9e1e4534b0
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => down_sample_q_net_x20,
      op => shift_op_net_x27
  );
end structural;


-- Generated from Simulink block "tek_meas/tx0/SPI_power_Tx1/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_c14630ebf4 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_c14630ebf4;

architecture structural of iir_c14630ebf4 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub1_s_net_x27: std_logic_vector(31 downto 0);
  signal register_q_net_x49: std_logic_vector(31 downto 0);
  signal shift_op_net_x28: std_logic_vector(31 downto 0);
  signal shift1_op_net_x15: std_logic_vector(31 downto 0);
  signal logical_y_net_x13: std_logic;
  signal addsub1_s_net_x26: std_logic_vector(31 downto 0);
  signal addsub_s_net_x27: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  logical_y_net_x13 <= en;
  addsub1_s_net_x26 <= x;
  y <= addsub_s_net_x27;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => shift_op_net_x28,
      b => register_q_net_x49,
      en(0) => logical_y_net_x13,
      s => addsub_s_net_x27
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => addsub_s_net_x27,
      b => shift1_op_net_x15,
      s => addsub1_s_net_x27
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub1_s_net_x27,
      en(0) => logical_y_net_x13,
      q => register_q_net_x49
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub1_s_net_x26,
      op => shift_op_net_x28
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub_s_net_x27,
      op => shift1_op_net_x15
  );
end structural;


-- Generated from Simulink block "tek_meas/tx0/SPI_power_Tx1"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity spi_power_tx1_d8c576e2bf is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(15 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end spi_power_tx1_d8c576e2bf;

architecture structural of spi_power_tx1_d8c576e2bf is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal constant16_op_net_x0: std_logic;
  signal constant17_op_net_x0: std_logic;
  signal down_sample_q_net_x20: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x26: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x26: std_logic_vector(31 downto 0);
  signal logical_y_net_x13: std_logic;
  signal addsub_s_net_x27: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant16_op_net_x0 <= rst_4;
  constant17_op_net_x0 <= en;
  down_sample_q_net_x20 <= inst_power;
  power <= reinterpret_output_port_net_x26;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x27,
      output_port => reinterpret_output_port_net_x26
  );

  cic: entity work.cic_8bd76bb508
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_2 => constant16_op_net_x0,
      en => constant17_op_net_x0,
      x => down_sample_q_net_x20,
      y => addsub1_s_net_x26,
      en_cic => logical_y_net_x13
    );

  iir: entity work.iir_c14630ebf4
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      en => logical_y_net_x13,
      x => addsub1_s_net_x26,
      y => addsub_s_net_x27
    );
end structural;


-- Generated from Simulink block "tek_meas/tx0"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tx0_df98dd96a0 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    clk_1: in std_logic;
    ce_1: in std_logic;
    tvalid: in std_logic;
    tlast: in std_logic;
    tdata: in std_logic_vector(15 downto 0);
    tvalid_rx: in std_logic;
    tlast_rx: in std_logic;
    tdata_rx: in std_logic_vector(15 downto 0);
    loopback: in std_logic_vector(1 downto 0);
    dds_tdata_x0: in std_logic_vector(15 downto 0);
    dds_tlast_x0: in std_logic;
    dds_tvalid_x0: in std_logic;
    tdata_out: out std_logic_vector(15 downto 0);
    tlast_out: out std_logic;
    tvalid_out: out std_logic;
    power0: out std_logic_vector(31 downto 0);
    power1: out std_logic_vector(31 downto 0)
  );
end tx0_df98dd96a0;

architecture structural of tx0_df98dd96a0 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal constant12_op_net_x0: std_logic;
  signal constant13_op_net_x0: std_logic;
  signal constant14_op_net_x1: std_logic;
  signal constant16_op_net_x0: std_logic;
  signal constant17_op_net_x0: std_logic;
  signal constant3_op_net_x0: std_logic;
  signal convert_dout_net_x12: std_logic_vector(17 downto 0);
  signal convert1_dout_net_x5: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x12: std_logic_vector(17 downto 0);
  signal convert3_dout_net_x7: std_logic_vector(17 downto 0);
  signal register1_q_net_x20: std_logic;
  signal register2_q_net_x19: std_logic_vector(15 downto 0);
  signal register3_q_net_x19: std_logic;
  signal tx0_in_tvalid_net: std_logic;
  signal tx0_in_tlast_net: std_logic;
  signal tx0_in_tdata_net: std_logic_vector(15 downto 0);
  signal register10_q_net: std_logic;
  signal register9_q_net: std_logic;
  signal shift1_op_net_x11: std_logic_vector(15 downto 0);
  signal up_sample2_q_net: std_logic_vector(1 downto 0);
  signal register_q_net_x17: std_logic_vector(15 downto 0);
  signal relational_op_net: std_logic;
  signal register19_q_net: std_logic;
  signal mux_y_net_x27: std_logic_vector(15 downto 0);
  signal mux1_y_net: std_logic;
  signal mux2_y_net: std_logic;
  signal up_sample2_q_net_x0: std_logic_vector(31 downto 0);
  signal up_sample3_q_net_x0: std_logic_vector(31 downto 0);
  signal down_sample3_q_net_x5: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x5: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x5: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x18: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x19: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x20: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x25: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x26: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  tx0_in_tvalid_net <= tvalid;
  tx0_in_tlast_net <= tlast;
  tx0_in_tdata_net <= tdata;
  register10_q_net <= tvalid_rx;
  register9_q_net <= tlast_rx;
  shift1_op_net_x11 <= tdata_rx;
  up_sample2_q_net <= loopback;
  register_q_net_x17 <= dds_tdata_x0;
  relational_op_net <= dds_tlast_x0;
  register19_q_net <= dds_tvalid_x0;
  tdata_out <= mux_y_net_x27;
  tlast_out <= mux1_y_net;
  tvalid_out <= mux2_y_net;
  power0 <= up_sample2_q_net_x0;
  power1 <= up_sample3_q_net_x0;

  constant12: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant12_op_net_x0
  );

  constant13: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant13_op_net_x0
  );

  constant14: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant14_op_net_x1
  );

  constant16: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant16_op_net_x0
  );

  constant17: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant17_op_net_x0
  );

  constant3: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant3_op_net_x0
  );

  convert: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample3_q_net_x5,
      dout => convert_dout_net_x12
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample2_q_net_x5,
      dout => convert1_dout_net_x5
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample1_q_net_x5,
      dout => convert2_dout_net_x12
  );

  convert3: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample_q_net_x18,
      dout => convert3_dout_net_x7
  );

  mux: entity work.sysgen_mux_84e54da74c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel => up_sample2_q_net,
      d0 => register2_q_net_x19,
      d1 => shift1_op_net_x11,
      d2 => register_q_net_x17,
      y => mux_y_net_x27
  );

  mux1: entity work.sysgen_mux_fe7927c6ad
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel => up_sample2_q_net,
      d0(0) => register3_q_net_x19,
      d1(0) => register9_q_net,
      d2(0) => relational_op_net,
      y(0) => mux1_y_net
  );

  mux2: entity work.sysgen_mux_fe7927c6ad
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel => up_sample2_q_net,
      d0(0) => register1_q_net_x20,
      d1(0) => register10_q_net,
      d2(0) => register19_q_net,
      y(0) => mux2_y_net
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => tx0_in_tvalid_net,
      q(0) => register1_q_net_x20
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d => tx0_in_tdata_net,
      q => register2_q_net_x19
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => tx0_in_tlast_net,
      q(0) => register3_q_net_x19
  );

  up_sample2: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x25,
      q => up_sample2_q_net_x0
  );

  up_sample3: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x26,
      q => up_sample3_q_net_x0
  );

  axis_to_parallel: entity work.axis_to_parallel_a2d93d47fe
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      tdata => register2_q_net_x19,
      tvalid => register1_q_net_x20,
      tlast => register3_q_net_x19,
      i0 => down_sample3_q_net_x5,
      q0 => down_sample2_q_net_x5,
      i1 => down_sample1_q_net_x5,
      q1 => down_sample_q_net_x18
    );

  power: entity work.power_98a37cf14b
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      reset => constant12_op_net_x0,
      in_q => convert1_dout_net_x5,
      in_i => convert_dout_net_x12,
      power => down_sample_q_net_x19
    );

  power1_x0: entity work.power1_x0_0f36999c34
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      reset => constant3_op_net_x0,
      in_q => convert3_dout_net_x7,
      in_i => convert2_dout_net_x12,
      power => down_sample_q_net_x20
    );

  spi_power_tx0: entity work.spi_power_tx0_80868561b0
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_4 => constant13_op_net_x0,
      en => constant14_op_net_x1,
      inst_power => down_sample_q_net_x19,
      power => reinterpret_output_port_net_x25
    );

  spi_power_tx1: entity work.spi_power_tx1_d8c576e2bf
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_4 => constant16_op_net_x0,
      en => constant17_op_net_x0,
      inst_power => down_sample_q_net_x20,
      power => reinterpret_output_port_net_x26
    );
end structural;


-- Generated from Simulink block "tek_meas/tx1/AXIS_to_parallel"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity axis_to_parallel_142cbab0ad is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_1: in std_logic;
    ce_1: in std_logic;
    tdata: in std_logic_vector(15 downto 0);
    tvalid: in std_logic;
    tlast: in std_logic;
    i0: out std_logic_vector(15 downto 0);
    q0: out std_logic_vector(15 downto 0);
    i1: out std_logic_vector(15 downto 0);
    q1: out std_logic_vector(15 downto 0)
  );
end axis_to_parallel_142cbab0ad;

architecture structural of axis_to_parallel_142cbab0ad is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal delay_q_net_x10: std_logic;
  signal register_q_net_x50: std_logic_vector(15 downto 0);
  signal register1_q_net_x23: std_logic_vector(15 downto 0);
  signal register2_q_net_x22: std_logic_vector(15 downto 0);
  signal register3_q_net_x22: std_logic_vector(15 downto 0);
  signal register4_q_net_x7: std_logic_vector(15 downto 0);
  signal register5_q_net_x7: std_logic_vector(15 downto 0);
  signal register6_q_net_x7: std_logic_vector(15 downto 0);
  signal register7_q_net_x7: std_logic_vector(15 downto 0);
  signal register2_q_net_x23: std_logic_vector(15 downto 0);
  signal register1_q_net_x24: std_logic;
  signal register3_q_net_x23: std_logic;
  signal down_sample3_q_net_x6: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x6: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x6: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x21: std_logic_vector(15 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  register2_q_net_x23 <= tdata;
  register1_q_net_x24 <= tvalid;
  register3_q_net_x23 <= tlast;
  i0 <= down_sample3_q_net_x6;
  q0 <= down_sample2_q_net_x6;
  i1 <= down_sample1_q_net_x6;
  q1 <= down_sample_q_net_x21;

  delay: entity work.xldelay_tek_meas
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
      d(0) => register3_q_net_x23,
      q(0) => delay_q_net_x10
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register4_q_net_x7,
      q => down_sample_q_net_x21
  );

  down_sample1: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register5_q_net_x7,
      q => down_sample1_q_net_x6
  );

  down_sample2: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register6_q_net_x7,
      q => down_sample2_q_net_x6
  );

  down_sample3: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register7_q_net_x7,
      q => down_sample3_q_net_x6
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x23,
      en(0) => register1_q_net_x24,
      q => register_q_net_x50
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net_x50,
      en(0) => register1_q_net_x24,
      q => register1_q_net_x23
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net_x23,
      en(0) => register1_q_net_x24,
      q => register2_q_net_x22
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x22,
      en(0) => register1_q_net_x24,
      q => register3_q_net_x22
  );

  register4: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net_x50,
      en(0) => delay_q_net_x10,
      q => register4_q_net_x7
  );

  register5: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net_x23,
      en(0) => delay_q_net_x10,
      q => register5_q_net_x7
  );

  register6: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x22,
      en(0) => delay_q_net_x10,
      q => register6_q_net_x7
  );

  register7: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register3_q_net_x22,
      en(0) => delay_q_net_x10,
      q => register7_q_net_x7
  );
end structural;


-- Generated from Simulink block "tek_meas/tx1/Power/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_e63d855f75 is
  port (
    clk_2: in std_logic;
    ce_2: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_e63d855f75;

architecture structural of tdm_e63d855f75 is
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal counter_op_net_x43: std_logic;
  signal convert1_dout_net_x8: std_logic_vector(17 downto 0);
  signal convert_dout_net_x15: std_logic_vector(17 downto 0);
  signal constant12_op_net_x1: std_logic;
  signal mux_y_net_x34: std_logic_vector(17 downto 0);

begin
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  convert1_dout_net_x8 <= in1;
  convert_dout_net_x15 <= in0;
  constant12_op_net_x1 <= rst;
  out_x0 <= mux_y_net_x34;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant12_op_net_x1,
      op(0) => counter_op_net_x43
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x43,
      d0 => convert_dout_net_x15,
      d1 => convert1_dout_net_x8,
      y => mux_y_net_x34
  );
end structural;


-- Generated from Simulink block "tek_meas/tx1/Power"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power_e4e827b35b is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(15 downto 0)
  );
end power_e4e827b35b;

architecture structural of power_e4e827b35b is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal convert_dout_net_x16: std_logic;
  signal convert1_dout_net_x9: std_logic_vector(15 downto 0);
  signal convert2_dout_net_x16: std_logic_vector(29 downto 0);
  signal counter_op_net_x42: std_logic;
  signal dsp48e1_p_net_x13: std_logic_vector(47 downto 0);
  signal inverter_op_net_x14: std_logic;
  signal mux_y_net_x33: std_logic_vector(19 downto 0);
  signal opmode_op_net_x13: std_logic_vector(19 downto 0);
  signal opmode1_op_net_x13: std_logic_vector(19 downto 0);
  signal register_q_net_x51: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net_x27: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net_x13: std_logic_vector(47 downto 0);
  signal constant12_op_net_x1: std_logic;
  signal convert1_dout_net_x8: std_logic_vector(17 downto 0);
  signal convert_dout_net_x15: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x22: std_logic_vector(15 downto 0);
  signal mux_y_net_x34: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  constant12_op_net_x1 <= reset;
  convert1_dout_net_x8 <= in_q;
  convert_dout_net_x15 <= in_i;
  power <= down_sample_q_net_x22;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net_x14,
      dout(0) => convert_dout_net_x16
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 15,
      dout_width => 16,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => register_q_net_x51,
      dout => convert1_dout_net_x9
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net_x27,
      dout => convert2_dout_net_x16
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant12_op_net_x1,
      op(0) => counter_op_net_x42
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x16,
      b => reinterpret_output_port_net_x27,
      c => dsp48e1_p_net_x13,
      op => mux_y_net_x33,
      p => dsp48e1_p_net_x13
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert1_dout_net_x9,
      q => down_sample_q_net_x22
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      ip(0) => counter_op_net_x42,
      op(0) => inverter_op_net_x14
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x42,
      d0 => opmode_op_net_x13,
      d1 => opmode1_op_net_x13,
      y => mux_y_net_x33
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net_x13
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net_x13
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      rst => "0",
      d => reinterpret1_output_port_net_x13,
      en(0) => convert_dout_net_x16,
      q => register_q_net_x51
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x34,
      output_port => reinterpret_output_port_net_x27
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net_x13,
      output_port => reinterpret1_output_port_net_x13
  );

  tdm: entity work.tdm_e63d855f75
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      in1 => convert1_dout_net_x8,
      in0 => convert_dout_net_x15,
      rst => constant12_op_net_x1,
      out_x0 => mux_y_net_x34
    );
end structural;


-- Generated from Simulink block "tek_meas/tx1/Power1/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_b226a61179 is
  port (
    clk_2: in std_logic;
    ce_2: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_b226a61179;

architecture structural of tdm_b226a61179 is
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal counter_op_net_x45: std_logic;
  signal convert3_dout_net_x8: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x15: std_logic_vector(17 downto 0);
  signal constant3_op_net_x1: std_logic;
  signal mux_y_net_x36: std_logic_vector(17 downto 0);

begin
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  convert3_dout_net_x8 <= in1;
  convert2_dout_net_x15 <= in0;
  constant3_op_net_x1 <= rst;
  out_x0 <= mux_y_net_x36;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant3_op_net_x1,
      op(0) => counter_op_net_x45
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x45,
      d0 => convert2_dout_net_x15,
      d1 => convert3_dout_net_x8,
      y => mux_y_net_x36
  );
end structural;


-- Generated from Simulink block "tek_meas/tx1/Power1"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power1_x0_dc7145d46d is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(15 downto 0)
  );
end power1_x0_dc7145d46d;

architecture structural of power1_x0_dc7145d46d is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal convert_dout_net_x17: std_logic;
  signal convert1_dout_net_x10: std_logic_vector(15 downto 0);
  signal convert2_dout_net_x17: std_logic_vector(29 downto 0);
  signal counter_op_net_x44: std_logic;
  signal dsp48e1_p_net_x14: std_logic_vector(47 downto 0);
  signal inverter_op_net_x15: std_logic;
  signal mux_y_net_x35: std_logic_vector(19 downto 0);
  signal opmode_op_net_x14: std_logic_vector(19 downto 0);
  signal opmode1_op_net_x14: std_logic_vector(19 downto 0);
  signal register_q_net_x52: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net_x28: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net_x14: std_logic_vector(47 downto 0);
  signal constant3_op_net_x1: std_logic;
  signal convert3_dout_net_x8: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x15: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x23: std_logic_vector(15 downto 0);
  signal mux_y_net_x36: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  constant3_op_net_x1 <= reset;
  convert3_dout_net_x8 <= in_q;
  convert2_dout_net_x15 <= in_i;
  power <= down_sample_q_net_x23;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net_x15,
      dout(0) => convert_dout_net_x17
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 15,
      dout_width => 16,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => register_q_net_x52,
      dout => convert1_dout_net_x10
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net_x28,
      dout => convert2_dout_net_x17
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant3_op_net_x1,
      op(0) => counter_op_net_x44
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x17,
      b => reinterpret_output_port_net_x28,
      c => dsp48e1_p_net_x14,
      op => mux_y_net_x35,
      p => dsp48e1_p_net_x14
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert1_dout_net_x10,
      q => down_sample_q_net_x23
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      ip(0) => counter_op_net_x44,
      op(0) => inverter_op_net_x15
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x44,
      d0 => opmode_op_net_x14,
      d1 => opmode1_op_net_x14,
      y => mux_y_net_x35
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net_x14
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net_x14
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      rst => "0",
      d => reinterpret1_output_port_net_x14,
      en(0) => convert_dout_net_x17,
      q => register_q_net_x52
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x36,
      output_port => reinterpret_output_port_net_x28
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net_x14,
      output_port => reinterpret1_output_port_net_x14
  );

  tdm: entity work.tdm_b226a61179
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      in1 => convert3_dout_net_x8,
      in0 => convert2_dout_net_x15,
      rst => constant3_op_net_x1,
      out_x0 => mux_y_net_x36
    );
end structural;


-- Generated from Simulink block "tek_meas/tx1/SPI_power_Tx0/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_f058bc7b5d is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(15 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_f058bc7b5d;

architecture structural of cic_f058bc7b5d is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub_s_net_x28: std_logic_vector(41 downto 0);
  signal constant_op_net_x15: std_logic_vector(7 downto 0);
  signal counter_op_net_x46: std_logic_vector(7 downto 0);
  signal register_q_net_x53: std_logic_vector(41 downto 0);
  signal register1_q_net_x25: std_logic_vector(41 downto 0);
  signal register2_q_net_x24: std_logic_vector(41 downto 0);
  signal register3_q_net_x24: std_logic_vector(41 downto 0);
  signal relational_op_net_x15: std_logic;
  signal shift_op_net_x29: std_logic_vector(41 downto 0);
  signal constant13_op_net_x1: std_logic;
  signal constant14_op_net_x2: std_logic;
  signal down_sample_q_net_x22: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x28: std_logic_vector(31 downto 0);
  signal logical_y_net_x14: std_logic;

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant13_op_net_x1 <= rst_2;
  constant14_op_net_x2 <= en;
  down_sample_q_net_x22 <= x;
  y <= addsub1_s_net_x28;
  en_cic <= logical_y_net_x14;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register1_q_net_x25,
      b => shift_op_net_x29,
      s => addsub_s_net_x28
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register3_q_net_x24,
      b => register2_q_net_x24,
      en(0) => logical_y_net_x14,
      s => addsub1_s_net_x28
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x15
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant13_op_net_x1,
      en(0) => constant14_op_net_x2,
      op => counter_op_net_x46
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant14_op_net_x2,
      d1(0) => relational_op_net_x15,
      y(0) => logical_y_net_x14
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register3_q_net_x24,
      en(0) => logical_y_net_x14,
      q => register_q_net_x53
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x28,
      en(0) => constant14_op_net_x2,
      q => register1_q_net_x25
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register_q_net_x53,
      en(0) => logical_y_net_x14,
      q => register2_q_net_x24
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x28,
      en(0) => logical_y_net_x14,
      q => register3_q_net_x24
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x46,
      b => constant_op_net_x15,
      op(0) => relational_op_net_x15
  );

  shift: entity work.sysgen_shift_9e1e4534b0
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => down_sample_q_net_x22,
      op => shift_op_net_x29
  );
end structural;


-- Generated from Simulink block "tek_meas/tx1/SPI_power_Tx0/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_8b1aff37f8 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_8b1aff37f8;

architecture structural of iir_8b1aff37f8 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub1_s_net_x29: std_logic_vector(31 downto 0);
  signal register_q_net_x54: std_logic_vector(31 downto 0);
  signal shift_op_net_x30: std_logic_vector(31 downto 0);
  signal shift1_op_net_x16: std_logic_vector(31 downto 0);
  signal logical_y_net_x14: std_logic;
  signal addsub1_s_net_x28: std_logic_vector(31 downto 0);
  signal addsub_s_net_x29: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  logical_y_net_x14 <= en;
  addsub1_s_net_x28 <= x;
  y <= addsub_s_net_x29;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => shift_op_net_x30,
      b => register_q_net_x54,
      en(0) => logical_y_net_x14,
      s => addsub_s_net_x29
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => addsub_s_net_x29,
      b => shift1_op_net_x16,
      s => addsub1_s_net_x29
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub1_s_net_x29,
      en(0) => logical_y_net_x14,
      q => register_q_net_x54
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub1_s_net_x28,
      op => shift_op_net_x30
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub_s_net_x29,
      op => shift1_op_net_x16
  );
end structural;


-- Generated from Simulink block "tek_meas/tx1/SPI_power_Tx0"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity spi_power_tx0_16edc06931 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(15 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end spi_power_tx0_16edc06931;

architecture structural of spi_power_tx0_16edc06931 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal constant13_op_net_x1: std_logic;
  signal constant14_op_net_x2: std_logic;
  signal down_sample_q_net_x22: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x29: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x28: std_logic_vector(31 downto 0);
  signal logical_y_net_x14: std_logic;
  signal addsub_s_net_x29: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant13_op_net_x1 <= rst_4;
  constant14_op_net_x2 <= en;
  down_sample_q_net_x22 <= inst_power;
  power <= reinterpret_output_port_net_x29;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x29,
      output_port => reinterpret_output_port_net_x29
  );

  cic: entity work.cic_f058bc7b5d
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_2 => constant13_op_net_x1,
      en => constant14_op_net_x2,
      x => down_sample_q_net_x22,
      y => addsub1_s_net_x28,
      en_cic => logical_y_net_x14
    );

  iir: entity work.iir_8b1aff37f8
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      en => logical_y_net_x14,
      x => addsub1_s_net_x28,
      y => addsub_s_net_x29
    );
end structural;


-- Generated from Simulink block "tek_meas/tx1/SPI_power_Tx1/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_e54315408a is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(15 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_e54315408a;

architecture structural of cic_e54315408a is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub_s_net_x30: std_logic_vector(41 downto 0);
  signal constant_op_net_x16: std_logic_vector(7 downto 0);
  signal counter_op_net_x47: std_logic_vector(7 downto 0);
  signal register_q_net_x55: std_logic_vector(41 downto 0);
  signal register1_q_net_x26: std_logic_vector(41 downto 0);
  signal register2_q_net_x25: std_logic_vector(41 downto 0);
  signal register3_q_net_x25: std_logic_vector(41 downto 0);
  signal relational_op_net_x16: std_logic;
  signal shift_op_net_x31: std_logic_vector(41 downto 0);
  signal constant16_op_net_x1: std_logic;
  signal constant17_op_net_x1: std_logic;
  signal down_sample_q_net_x23: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x30: std_logic_vector(31 downto 0);
  signal logical_y_net_x15: std_logic;

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant16_op_net_x1 <= rst_2;
  constant17_op_net_x1 <= en;
  down_sample_q_net_x23 <= x;
  y <= addsub1_s_net_x30;
  en_cic <= logical_y_net_x15;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register1_q_net_x26,
      b => shift_op_net_x31,
      s => addsub_s_net_x30
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register3_q_net_x25,
      b => register2_q_net_x25,
      en(0) => logical_y_net_x15,
      s => addsub1_s_net_x30
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x16
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant16_op_net_x1,
      en(0) => constant17_op_net_x1,
      op => counter_op_net_x47
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant17_op_net_x1,
      d1(0) => relational_op_net_x16,
      y(0) => logical_y_net_x15
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register3_q_net_x25,
      en(0) => logical_y_net_x15,
      q => register_q_net_x55
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x30,
      en(0) => constant17_op_net_x1,
      q => register1_q_net_x26
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register_q_net_x55,
      en(0) => logical_y_net_x15,
      q => register2_q_net_x25
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x30,
      en(0) => logical_y_net_x15,
      q => register3_q_net_x25
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x47,
      b => constant_op_net_x16,
      op(0) => relational_op_net_x16
  );

  shift: entity work.sysgen_shift_9e1e4534b0
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => down_sample_q_net_x23,
      op => shift_op_net_x31
  );
end structural;


-- Generated from Simulink block "tek_meas/tx1/SPI_power_Tx1/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_fc15c1e5e9 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_fc15c1e5e9;

architecture structural of iir_fc15c1e5e9 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub1_s_net_x31: std_logic_vector(31 downto 0);
  signal register_q_net_x56: std_logic_vector(31 downto 0);
  signal shift_op_net_x32: std_logic_vector(31 downto 0);
  signal shift1_op_net_x17: std_logic_vector(31 downto 0);
  signal logical_y_net_x15: std_logic;
  signal addsub1_s_net_x30: std_logic_vector(31 downto 0);
  signal addsub_s_net_x31: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  logical_y_net_x15 <= en;
  addsub1_s_net_x30 <= x;
  y <= addsub_s_net_x31;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => shift_op_net_x32,
      b => register_q_net_x56,
      en(0) => logical_y_net_x15,
      s => addsub_s_net_x31
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => addsub_s_net_x31,
      b => shift1_op_net_x17,
      s => addsub1_s_net_x31
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub1_s_net_x31,
      en(0) => logical_y_net_x15,
      q => register_q_net_x56
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub1_s_net_x30,
      op => shift_op_net_x32
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub_s_net_x31,
      op => shift1_op_net_x17
  );
end structural;


-- Generated from Simulink block "tek_meas/tx1/SPI_power_Tx1"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity spi_power_tx1_b009a8d8d6 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(15 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end spi_power_tx1_b009a8d8d6;

architecture structural of spi_power_tx1_b009a8d8d6 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal constant16_op_net_x1: std_logic;
  signal constant17_op_net_x1: std_logic;
  signal down_sample_q_net_x23: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x30: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x30: std_logic_vector(31 downto 0);
  signal logical_y_net_x15: std_logic;
  signal addsub_s_net_x31: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant16_op_net_x1 <= rst_4;
  constant17_op_net_x1 <= en;
  down_sample_q_net_x23 <= inst_power;
  power <= reinterpret_output_port_net_x30;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x31,
      output_port => reinterpret_output_port_net_x30
  );

  cic: entity work.cic_e54315408a
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_2 => constant16_op_net_x1,
      en => constant17_op_net_x1,
      x => down_sample_q_net_x23,
      y => addsub1_s_net_x30,
      en_cic => logical_y_net_x15
    );

  iir: entity work.iir_fc15c1e5e9
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      en => logical_y_net_x15,
      x => addsub1_s_net_x30,
      y => addsub_s_net_x31
    );
end structural;


-- Generated from Simulink block "tek_meas/tx1"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tx1_d8b2b1cb8b is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    clk_1: in std_logic;
    ce_1: in std_logic;
    tvalid: in std_logic;
    tlast: in std_logic;
    tdata: in std_logic_vector(15 downto 0);
    tvalid_rx: in std_logic;
    tlast_rx: in std_logic;
    tdata_rx: in std_logic_vector(15 downto 0);
    loopback: in std_logic_vector(1 downto 0);
    dds_tdata_x1: in std_logic_vector(15 downto 0);
    dds_tlast_x1: in std_logic;
    dds_tvalid_x1: in std_logic;
    tdata_out: out std_logic_vector(15 downto 0);
    tlast_out: out std_logic;
    tvalid_out: out std_logic;
    power0: out std_logic_vector(31 downto 0);
    power1: out std_logic_vector(31 downto 0)
  );
end tx1_d8b2b1cb8b;

architecture structural of tx1_d8b2b1cb8b is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal constant12_op_net_x1: std_logic;
  signal constant13_op_net_x1: std_logic;
  signal constant14_op_net_x2: std_logic;
  signal constant16_op_net_x1: std_logic;
  signal constant17_op_net_x1: std_logic;
  signal constant3_op_net_x1: std_logic;
  signal convert_dout_net_x15: std_logic_vector(17 downto 0);
  signal convert1_dout_net_x8: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x15: std_logic_vector(17 downto 0);
  signal convert3_dout_net_x8: std_logic_vector(17 downto 0);
  signal register1_q_net_x24: std_logic;
  signal register2_q_net_x23: std_logic_vector(15 downto 0);
  signal register3_q_net_x23: std_logic;
  signal tx1_in_tvalid_net: std_logic;
  signal tx1_in_tlast_net: std_logic;
  signal tx1_in_tdata_net: std_logic_vector(15 downto 0);
  signal register1_q_net_x5: std_logic;
  signal register3_q_net_x5: std_logic;
  signal shift2_op_net_x1: std_logic_vector(15 downto 0);
  signal up_sample5_q_net: std_logic_vector(1 downto 0);
  signal register_q_net_x17: std_logic_vector(15 downto 0);
  signal relational_op_net: std_logic;
  signal register19_q_net: std_logic;
  signal mux_y_net_x32: std_logic_vector(15 downto 0);
  signal mux1_y_net_x0: std_logic;
  signal mux2_y_net_x0: std_logic;
  signal up_sample2_q_net_x1: std_logic_vector(31 downto 0);
  signal up_sample3_q_net_x1: std_logic_vector(31 downto 0);
  signal down_sample3_q_net_x6: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x6: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x6: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x21: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x22: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x23: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x29: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x30: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  tx1_in_tvalid_net <= tvalid;
  tx1_in_tlast_net <= tlast;
  tx1_in_tdata_net <= tdata;
  register1_q_net_x5 <= tvalid_rx;
  register3_q_net_x5 <= tlast_rx;
  shift2_op_net_x1 <= tdata_rx;
  up_sample5_q_net <= loopback;
  register_q_net_x17 <= dds_tdata_x1;
  relational_op_net <= dds_tlast_x1;
  register19_q_net <= dds_tvalid_x1;
  tdata_out <= mux_y_net_x32;
  tlast_out <= mux1_y_net_x0;
  tvalid_out <= mux2_y_net_x0;
  power0 <= up_sample2_q_net_x1;
  power1 <= up_sample3_q_net_x1;

  constant12: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant12_op_net_x1
  );

  constant13: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant13_op_net_x1
  );

  constant14: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant14_op_net_x2
  );

  constant16: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant16_op_net_x1
  );

  constant17: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant17_op_net_x1
  );

  constant3: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant3_op_net_x1
  );

  convert: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample3_q_net_x6,
      dout => convert_dout_net_x15
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample2_q_net_x6,
      dout => convert1_dout_net_x8
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample1_q_net_x6,
      dout => convert2_dout_net_x15
  );

  convert3: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample_q_net_x21,
      dout => convert3_dout_net_x8
  );

  mux: entity work.sysgen_mux_84e54da74c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel => up_sample5_q_net,
      d0 => register2_q_net_x23,
      d1 => shift2_op_net_x1,
      d2 => register_q_net_x17,
      y => mux_y_net_x32
  );

  mux1: entity work.sysgen_mux_fe7927c6ad
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel => up_sample5_q_net,
      d0(0) => register3_q_net_x23,
      d1(0) => register3_q_net_x5,
      d2(0) => relational_op_net,
      y(0) => mux1_y_net_x0
  );

  mux2: entity work.sysgen_mux_fe7927c6ad
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel => up_sample5_q_net,
      d0(0) => register1_q_net_x24,
      d1(0) => register1_q_net_x5,
      d2(0) => register19_q_net,
      y(0) => mux2_y_net_x0
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => tx1_in_tvalid_net,
      q(0) => register1_q_net_x24
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d => tx1_in_tdata_net,
      q => register2_q_net_x23
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => tx1_in_tlast_net,
      q(0) => register3_q_net_x23
  );

  up_sample2: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x29,
      q => up_sample2_q_net_x1
  );

  up_sample3: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x30,
      q => up_sample3_q_net_x1
  );

  axis_to_parallel: entity work.axis_to_parallel_142cbab0ad
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      tdata => register2_q_net_x23,
      tvalid => register1_q_net_x24,
      tlast => register3_q_net_x23,
      i0 => down_sample3_q_net_x6,
      q0 => down_sample2_q_net_x6,
      i1 => down_sample1_q_net_x6,
      q1 => down_sample_q_net_x21
    );

  power: entity work.power_e4e827b35b
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      reset => constant12_op_net_x1,
      in_q => convert1_dout_net_x8,
      in_i => convert_dout_net_x15,
      power => down_sample_q_net_x22
    );

  power1_x0: entity work.power1_x0_dc7145d46d
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      reset => constant3_op_net_x1,
      in_q => convert3_dout_net_x8,
      in_i => convert2_dout_net_x15,
      power => down_sample_q_net_x23
    );

  spi_power_tx0: entity work.spi_power_tx0_16edc06931
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_4 => constant13_op_net_x1,
      en => constant14_op_net_x2,
      inst_power => down_sample_q_net_x22,
      power => reinterpret_output_port_net_x29
    );

  spi_power_tx1: entity work.spi_power_tx1_b009a8d8d6
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_4 => constant16_op_net_x1,
      en => constant17_op_net_x1,
      inst_power => down_sample_q_net_x23,
      power => reinterpret_output_port_net_x30
    );
end structural;


-- Generated from Simulink block "tek_meas/tx2/AXIS_to_parallel"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity axis_to_parallel_ae87b1d1f5 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_1: in std_logic;
    ce_1: in std_logic;
    tdata: in std_logic_vector(15 downto 0);
    tvalid: in std_logic;
    tlast: in std_logic;
    i0: out std_logic_vector(15 downto 0);
    q0: out std_logic_vector(15 downto 0);
    i1: out std_logic_vector(15 downto 0);
    q1: out std_logic_vector(15 downto 0)
  );
end axis_to_parallel_ae87b1d1f5;

architecture structural of axis_to_parallel_ae87b1d1f5 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal delay_q_net_x11: std_logic;
  signal register_q_net_x57: std_logic_vector(15 downto 0);
  signal register1_q_net_x27: std_logic_vector(15 downto 0);
  signal register2_q_net_x26: std_logic_vector(15 downto 0);
  signal register3_q_net_x26: std_logic_vector(15 downto 0);
  signal register4_q_net_x8: std_logic_vector(15 downto 0);
  signal register5_q_net_x8: std_logic_vector(15 downto 0);
  signal register6_q_net_x8: std_logic_vector(15 downto 0);
  signal register7_q_net_x8: std_logic_vector(15 downto 0);
  signal register2_q_net_x27: std_logic_vector(15 downto 0);
  signal register1_q_net_x28: std_logic;
  signal register3_q_net_x27: std_logic;
  signal down_sample3_q_net_x7: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x7: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x7: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x24: std_logic_vector(15 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  register2_q_net_x27 <= tdata;
  register1_q_net_x28 <= tvalid;
  register3_q_net_x27 <= tlast;
  i0 <= down_sample3_q_net_x7;
  q0 <= down_sample2_q_net_x7;
  i1 <= down_sample1_q_net_x7;
  q1 <= down_sample_q_net_x24;

  delay: entity work.xldelay_tek_meas
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
      d(0) => register3_q_net_x27,
      q(0) => delay_q_net_x11
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register4_q_net_x8,
      q => down_sample_q_net_x24
  );

  down_sample1: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register5_q_net_x8,
      q => down_sample1_q_net_x7
  );

  down_sample2: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register6_q_net_x8,
      q => down_sample2_q_net_x7
  );

  down_sample3: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register7_q_net_x8,
      q => down_sample3_q_net_x7
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x27,
      en(0) => register1_q_net_x28,
      q => register_q_net_x57
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net_x57,
      en(0) => register1_q_net_x28,
      q => register1_q_net_x27
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net_x27,
      en(0) => register1_q_net_x28,
      q => register2_q_net_x26
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x26,
      en(0) => register1_q_net_x28,
      q => register3_q_net_x26
  );

  register4: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net_x57,
      en(0) => delay_q_net_x11,
      q => register4_q_net_x8
  );

  register5: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net_x27,
      en(0) => delay_q_net_x11,
      q => register5_q_net_x8
  );

  register6: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x26,
      en(0) => delay_q_net_x11,
      q => register6_q_net_x8
  );

  register7: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register3_q_net_x26,
      en(0) => delay_q_net_x11,
      q => register7_q_net_x8
  );
end structural;


-- Generated from Simulink block "tek_meas/tx2/Power/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_0c8ba9eef1 is
  port (
    clk_2: in std_logic;
    ce_2: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_0c8ba9eef1;

architecture structural of tdm_0c8ba9eef1 is
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal counter_op_net_x49: std_logic;
  signal convert1_dout_net_x11: std_logic_vector(17 downto 0);
  signal convert_dout_net_x18: std_logic_vector(17 downto 0);
  signal constant12_op_net_x2: std_logic;
  signal mux_y_net_x39: std_logic_vector(17 downto 0);

begin
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  convert1_dout_net_x11 <= in1;
  convert_dout_net_x18 <= in0;
  constant12_op_net_x2 <= rst;
  out_x0 <= mux_y_net_x39;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant12_op_net_x2,
      op(0) => counter_op_net_x49
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x49,
      d0 => convert_dout_net_x18,
      d1 => convert1_dout_net_x11,
      y => mux_y_net_x39
  );
end structural;


-- Generated from Simulink block "tek_meas/tx2/Power"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power_c3640e262d is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(15 downto 0)
  );
end power_c3640e262d;

architecture structural of power_c3640e262d is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal convert_dout_net_x19: std_logic;
  signal convert1_dout_net_x12: std_logic_vector(15 downto 0);
  signal convert2_dout_net_x19: std_logic_vector(29 downto 0);
  signal counter_op_net_x48: std_logic;
  signal dsp48e1_p_net_x15: std_logic_vector(47 downto 0);
  signal inverter_op_net_x16: std_logic;
  signal mux_y_net_x38: std_logic_vector(19 downto 0);
  signal opmode_op_net_x15: std_logic_vector(19 downto 0);
  signal opmode1_op_net_x15: std_logic_vector(19 downto 0);
  signal register_q_net_x58: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net_x31: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net_x15: std_logic_vector(47 downto 0);
  signal constant12_op_net_x2: std_logic;
  signal convert1_dout_net_x11: std_logic_vector(17 downto 0);
  signal convert_dout_net_x18: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x25: std_logic_vector(15 downto 0);
  signal mux_y_net_x39: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  constant12_op_net_x2 <= reset;
  convert1_dout_net_x11 <= in_q;
  convert_dout_net_x18 <= in_i;
  power <= down_sample_q_net_x25;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net_x16,
      dout(0) => convert_dout_net_x19
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 15,
      dout_width => 16,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => register_q_net_x58,
      dout => convert1_dout_net_x12
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net_x31,
      dout => convert2_dout_net_x19
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant12_op_net_x2,
      op(0) => counter_op_net_x48
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x19,
      b => reinterpret_output_port_net_x31,
      c => dsp48e1_p_net_x15,
      op => mux_y_net_x38,
      p => dsp48e1_p_net_x15
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert1_dout_net_x12,
      q => down_sample_q_net_x25
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      ip(0) => counter_op_net_x48,
      op(0) => inverter_op_net_x16
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x48,
      d0 => opmode_op_net_x15,
      d1 => opmode1_op_net_x15,
      y => mux_y_net_x38
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net_x15
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net_x15
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      rst => "0",
      d => reinterpret1_output_port_net_x15,
      en(0) => convert_dout_net_x19,
      q => register_q_net_x58
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x39,
      output_port => reinterpret_output_port_net_x31
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net_x15,
      output_port => reinterpret1_output_port_net_x15
  );

  tdm: entity work.tdm_0c8ba9eef1
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      in1 => convert1_dout_net_x11,
      in0 => convert_dout_net_x18,
      rst => constant12_op_net_x2,
      out_x0 => mux_y_net_x39
    );
end structural;


-- Generated from Simulink block "tek_meas/tx2/Power1/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_9fddf7cb12 is
  port (
    clk_2: in std_logic;
    ce_2: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_9fddf7cb12;

architecture structural of tdm_9fddf7cb12 is
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal counter_op_net_x51: std_logic;
  signal convert3_dout_net_x9: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x18: std_logic_vector(17 downto 0);
  signal constant3_op_net_x2: std_logic;
  signal mux_y_net_x41: std_logic_vector(17 downto 0);

begin
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  convert3_dout_net_x9 <= in1;
  convert2_dout_net_x18 <= in0;
  constant3_op_net_x2 <= rst;
  out_x0 <= mux_y_net_x41;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant3_op_net_x2,
      op(0) => counter_op_net_x51
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x51,
      d0 => convert2_dout_net_x18,
      d1 => convert3_dout_net_x9,
      y => mux_y_net_x41
  );
end structural;


-- Generated from Simulink block "tek_meas/tx2/Power1"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power1_x0_6b2543a665 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(15 downto 0)
  );
end power1_x0_6b2543a665;

architecture structural of power1_x0_6b2543a665 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal convert_dout_net_x20: std_logic;
  signal convert1_dout_net_x13: std_logic_vector(15 downto 0);
  signal convert2_dout_net_x20: std_logic_vector(29 downto 0);
  signal counter_op_net_x50: std_logic;
  signal dsp48e1_p_net_x16: std_logic_vector(47 downto 0);
  signal inverter_op_net_x17: std_logic;
  signal mux_y_net_x40: std_logic_vector(19 downto 0);
  signal opmode_op_net_x16: std_logic_vector(19 downto 0);
  signal opmode1_op_net_x16: std_logic_vector(19 downto 0);
  signal register_q_net_x59: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net_x32: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net_x16: std_logic_vector(47 downto 0);
  signal constant3_op_net_x2: std_logic;
  signal convert3_dout_net_x9: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x18: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x26: std_logic_vector(15 downto 0);
  signal mux_y_net_x41: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  constant3_op_net_x2 <= reset;
  convert3_dout_net_x9 <= in_q;
  convert2_dout_net_x18 <= in_i;
  power <= down_sample_q_net_x26;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net_x17,
      dout(0) => convert_dout_net_x20
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 15,
      dout_width => 16,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => register_q_net_x59,
      dout => convert1_dout_net_x13
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net_x32,
      dout => convert2_dout_net_x20
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant3_op_net_x2,
      op(0) => counter_op_net_x50
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x20,
      b => reinterpret_output_port_net_x32,
      c => dsp48e1_p_net_x16,
      op => mux_y_net_x40,
      p => dsp48e1_p_net_x16
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert1_dout_net_x13,
      q => down_sample_q_net_x26
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      ip(0) => counter_op_net_x50,
      op(0) => inverter_op_net_x17
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x50,
      d0 => opmode_op_net_x16,
      d1 => opmode1_op_net_x16,
      y => mux_y_net_x40
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net_x16
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net_x16
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      rst => "0",
      d => reinterpret1_output_port_net_x16,
      en(0) => convert_dout_net_x20,
      q => register_q_net_x59
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x41,
      output_port => reinterpret_output_port_net_x32
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net_x16,
      output_port => reinterpret1_output_port_net_x16
  );

  tdm: entity work.tdm_9fddf7cb12
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      in1 => convert3_dout_net_x9,
      in0 => convert2_dout_net_x18,
      rst => constant3_op_net_x2,
      out_x0 => mux_y_net_x41
    );
end structural;


-- Generated from Simulink block "tek_meas/tx2/SPI_power_Tx0/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_3efcc4667c is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(15 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_3efcc4667c;

architecture structural of cic_3efcc4667c is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub_s_net_x32: std_logic_vector(41 downto 0);
  signal constant_op_net_x17: std_logic_vector(7 downto 0);
  signal counter_op_net_x52: std_logic_vector(7 downto 0);
  signal register_q_net_x60: std_logic_vector(41 downto 0);
  signal register1_q_net_x29: std_logic_vector(41 downto 0);
  signal register2_q_net_x28: std_logic_vector(41 downto 0);
  signal register3_q_net_x28: std_logic_vector(41 downto 0);
  signal relational_op_net_x17: std_logic;
  signal shift_op_net_x33: std_logic_vector(41 downto 0);
  signal constant13_op_net_x2: std_logic;
  signal constant14_op_net_x3: std_logic;
  signal down_sample_q_net_x25: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x32: std_logic_vector(31 downto 0);
  signal logical_y_net_x16: std_logic;

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant13_op_net_x2 <= rst_2;
  constant14_op_net_x3 <= en;
  down_sample_q_net_x25 <= x;
  y <= addsub1_s_net_x32;
  en_cic <= logical_y_net_x16;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register1_q_net_x29,
      b => shift_op_net_x33,
      s => addsub_s_net_x32
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register3_q_net_x28,
      b => register2_q_net_x28,
      en(0) => logical_y_net_x16,
      s => addsub1_s_net_x32
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x17
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant13_op_net_x2,
      en(0) => constant14_op_net_x3,
      op => counter_op_net_x52
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant14_op_net_x3,
      d1(0) => relational_op_net_x17,
      y(0) => logical_y_net_x16
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register3_q_net_x28,
      en(0) => logical_y_net_x16,
      q => register_q_net_x60
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x32,
      en(0) => constant14_op_net_x3,
      q => register1_q_net_x29
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register_q_net_x60,
      en(0) => logical_y_net_x16,
      q => register2_q_net_x28
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x32,
      en(0) => logical_y_net_x16,
      q => register3_q_net_x28
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x52,
      b => constant_op_net_x17,
      op(0) => relational_op_net_x17
  );

  shift: entity work.sysgen_shift_9e1e4534b0
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => down_sample_q_net_x25,
      op => shift_op_net_x33
  );
end structural;


-- Generated from Simulink block "tek_meas/tx2/SPI_power_Tx0/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_a70d1c1fad is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_a70d1c1fad;

architecture structural of iir_a70d1c1fad is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub1_s_net_x33: std_logic_vector(31 downto 0);
  signal register_q_net_x61: std_logic_vector(31 downto 0);
  signal shift_op_net_x34: std_logic_vector(31 downto 0);
  signal shift1_op_net_x18: std_logic_vector(31 downto 0);
  signal logical_y_net_x16: std_logic;
  signal addsub1_s_net_x32: std_logic_vector(31 downto 0);
  signal addsub_s_net_x33: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  logical_y_net_x16 <= en;
  addsub1_s_net_x32 <= x;
  y <= addsub_s_net_x33;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => shift_op_net_x34,
      b => register_q_net_x61,
      en(0) => logical_y_net_x16,
      s => addsub_s_net_x33
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => addsub_s_net_x33,
      b => shift1_op_net_x18,
      s => addsub1_s_net_x33
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub1_s_net_x33,
      en(0) => logical_y_net_x16,
      q => register_q_net_x61
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub1_s_net_x32,
      op => shift_op_net_x34
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub_s_net_x33,
      op => shift1_op_net_x18
  );
end structural;


-- Generated from Simulink block "tek_meas/tx2/SPI_power_Tx0"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity spi_power_tx0_4b2e201204 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(15 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end spi_power_tx0_4b2e201204;

architecture structural of spi_power_tx0_4b2e201204 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal constant13_op_net_x2: std_logic;
  signal constant14_op_net_x3: std_logic;
  signal down_sample_q_net_x25: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x33: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x32: std_logic_vector(31 downto 0);
  signal logical_y_net_x16: std_logic;
  signal addsub_s_net_x33: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant13_op_net_x2 <= rst_4;
  constant14_op_net_x3 <= en;
  down_sample_q_net_x25 <= inst_power;
  power <= reinterpret_output_port_net_x33;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x33,
      output_port => reinterpret_output_port_net_x33
  );

  cic: entity work.cic_3efcc4667c
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_2 => constant13_op_net_x2,
      en => constant14_op_net_x3,
      x => down_sample_q_net_x25,
      y => addsub1_s_net_x32,
      en_cic => logical_y_net_x16
    );

  iir: entity work.iir_a70d1c1fad
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      en => logical_y_net_x16,
      x => addsub1_s_net_x32,
      y => addsub_s_net_x33
    );
end structural;


-- Generated from Simulink block "tek_meas/tx2/SPI_power_Tx1/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_e3e0bdcb22 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(15 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_e3e0bdcb22;

architecture structural of cic_e3e0bdcb22 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub_s_net_x34: std_logic_vector(41 downto 0);
  signal constant_op_net_x18: std_logic_vector(7 downto 0);
  signal counter_op_net_x53: std_logic_vector(7 downto 0);
  signal register_q_net_x62: std_logic_vector(41 downto 0);
  signal register1_q_net_x30: std_logic_vector(41 downto 0);
  signal register2_q_net_x29: std_logic_vector(41 downto 0);
  signal register3_q_net_x29: std_logic_vector(41 downto 0);
  signal relational_op_net_x18: std_logic;
  signal shift_op_net_x35: std_logic_vector(41 downto 0);
  signal constant16_op_net_x2: std_logic;
  signal constant17_op_net_x2: std_logic;
  signal down_sample_q_net_x26: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x34: std_logic_vector(31 downto 0);
  signal logical_y_net_x17: std_logic;

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant16_op_net_x2 <= rst_2;
  constant17_op_net_x2 <= en;
  down_sample_q_net_x26 <= x;
  y <= addsub1_s_net_x34;
  en_cic <= logical_y_net_x17;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register1_q_net_x30,
      b => shift_op_net_x35,
      s => addsub_s_net_x34
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register3_q_net_x29,
      b => register2_q_net_x29,
      en(0) => logical_y_net_x17,
      s => addsub1_s_net_x34
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x18
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant16_op_net_x2,
      en(0) => constant17_op_net_x2,
      op => counter_op_net_x53
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant17_op_net_x2,
      d1(0) => relational_op_net_x18,
      y(0) => logical_y_net_x17
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register3_q_net_x29,
      en(0) => logical_y_net_x17,
      q => register_q_net_x62
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x34,
      en(0) => constant17_op_net_x2,
      q => register1_q_net_x30
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register_q_net_x62,
      en(0) => logical_y_net_x17,
      q => register2_q_net_x29
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x34,
      en(0) => logical_y_net_x17,
      q => register3_q_net_x29
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x53,
      b => constant_op_net_x18,
      op(0) => relational_op_net_x18
  );

  shift: entity work.sysgen_shift_9e1e4534b0
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => down_sample_q_net_x26,
      op => shift_op_net_x35
  );
end structural;


-- Generated from Simulink block "tek_meas/tx2/SPI_power_Tx1/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_a13605d8bb is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_a13605d8bb;

architecture structural of iir_a13605d8bb is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub1_s_net_x35: std_logic_vector(31 downto 0);
  signal register_q_net_x63: std_logic_vector(31 downto 0);
  signal shift_op_net_x36: std_logic_vector(31 downto 0);
  signal shift1_op_net_x19: std_logic_vector(31 downto 0);
  signal logical_y_net_x17: std_logic;
  signal addsub1_s_net_x34: std_logic_vector(31 downto 0);
  signal addsub_s_net_x35: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  logical_y_net_x17 <= en;
  addsub1_s_net_x34 <= x;
  y <= addsub_s_net_x35;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => shift_op_net_x36,
      b => register_q_net_x63,
      en(0) => logical_y_net_x17,
      s => addsub_s_net_x35
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => addsub_s_net_x35,
      b => shift1_op_net_x19,
      s => addsub1_s_net_x35
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub1_s_net_x35,
      en(0) => logical_y_net_x17,
      q => register_q_net_x63
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub1_s_net_x34,
      op => shift_op_net_x36
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub_s_net_x35,
      op => shift1_op_net_x19
  );
end structural;


-- Generated from Simulink block "tek_meas/tx2/SPI_power_Tx1"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity spi_power_tx1_1140f89311 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(15 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end spi_power_tx1_1140f89311;

architecture structural of spi_power_tx1_1140f89311 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal constant16_op_net_x2: std_logic;
  signal constant17_op_net_x2: std_logic;
  signal down_sample_q_net_x26: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x34: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x34: std_logic_vector(31 downto 0);
  signal logical_y_net_x17: std_logic;
  signal addsub_s_net_x35: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant16_op_net_x2 <= rst_4;
  constant17_op_net_x2 <= en;
  down_sample_q_net_x26 <= inst_power;
  power <= reinterpret_output_port_net_x34;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x35,
      output_port => reinterpret_output_port_net_x34
  );

  cic: entity work.cic_e3e0bdcb22
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_2 => constant16_op_net_x2,
      en => constant17_op_net_x2,
      x => down_sample_q_net_x26,
      y => addsub1_s_net_x34,
      en_cic => logical_y_net_x17
    );

  iir: entity work.iir_a13605d8bb
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      en => logical_y_net_x17,
      x => addsub1_s_net_x34,
      y => addsub_s_net_x35
    );
end structural;


-- Generated from Simulink block "tek_meas/tx2"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tx2_e519d8025f is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    clk_1: in std_logic;
    ce_1: in std_logic;
    tvalid: in std_logic;
    tlast: in std_logic;
    tdata: in std_logic_vector(15 downto 0);
    tvalid_rx: in std_logic;
    tlast_rx: in std_logic;
    tdata_rx: in std_logic_vector(15 downto 0);
    loopback: in std_logic_vector(1 downto 0);
    dds_tdata_x2: in std_logic_vector(15 downto 0);
    dds_tlast_x2: in std_logic;
    dds_tvalid_x2: in std_logic;
    tdata_out: out std_logic_vector(15 downto 0);
    tlast_out: out std_logic;
    tvalid_out: out std_logic;
    power0: out std_logic_vector(31 downto 0);
    power1: out std_logic_vector(31 downto 0)
  );
end tx2_e519d8025f;

architecture structural of tx2_e519d8025f is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal constant12_op_net_x2: std_logic;
  signal constant13_op_net_x2: std_logic;
  signal constant14_op_net_x3: std_logic;
  signal constant16_op_net_x2: std_logic;
  signal constant17_op_net_x2: std_logic;
  signal constant3_op_net_x2: std_logic;
  signal convert_dout_net_x18: std_logic_vector(17 downto 0);
  signal convert1_dout_net_x11: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x18: std_logic_vector(17 downto 0);
  signal convert3_dout_net_x9: std_logic_vector(17 downto 0);
  signal register1_q_net_x28: std_logic;
  signal register2_q_net_x27: std_logic_vector(15 downto 0);
  signal register3_q_net_x27: std_logic;
  signal tx2_in_tvalid_net: std_logic;
  signal tx2_in_tlast_net: std_logic;
  signal tx2_in_tdata_net: std_logic_vector(15 downto 0);
  signal register4_q_net_x5: std_logic;
  signal register6_q_net_x5: std_logic;
  signal shift3_op_net: std_logic_vector(15 downto 0);
  signal up_sample8_q_net: std_logic_vector(1 downto 0);
  signal register_q_net_x17: std_logic_vector(15 downto 0);
  signal relational_op_net: std_logic;
  signal register19_q_net: std_logic;
  signal mux_y_net_x37: std_logic_vector(15 downto 0);
  signal mux1_y_net_x1: std_logic;
  signal mux2_y_net_x1: std_logic;
  signal up_sample2_q_net_x2: std_logic_vector(31 downto 0);
  signal up_sample3_q_net_x2: std_logic_vector(31 downto 0);
  signal down_sample3_q_net_x7: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x7: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x7: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x24: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x25: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x26: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x33: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x34: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  tx2_in_tvalid_net <= tvalid;
  tx2_in_tlast_net <= tlast;
  tx2_in_tdata_net <= tdata;
  register4_q_net_x5 <= tvalid_rx;
  register6_q_net_x5 <= tlast_rx;
  shift3_op_net <= tdata_rx;
  up_sample8_q_net <= loopback;
  register_q_net_x17 <= dds_tdata_x2;
  relational_op_net <= dds_tlast_x2;
  register19_q_net <= dds_tvalid_x2;
  tdata_out <= mux_y_net_x37;
  tlast_out <= mux1_y_net_x1;
  tvalid_out <= mux2_y_net_x1;
  power0 <= up_sample2_q_net_x2;
  power1 <= up_sample3_q_net_x2;

  constant12: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant12_op_net_x2
  );

  constant13: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant13_op_net_x2
  );

  constant14: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant14_op_net_x3
  );

  constant16: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant16_op_net_x2
  );

  constant17: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant17_op_net_x2
  );

  constant3: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant3_op_net_x2
  );

  convert: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample3_q_net_x7,
      dout => convert_dout_net_x18
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample2_q_net_x7,
      dout => convert1_dout_net_x11
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample1_q_net_x7,
      dout => convert2_dout_net_x18
  );

  convert3: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample_q_net_x24,
      dout => convert3_dout_net_x9
  );

  mux: entity work.sysgen_mux_84e54da74c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel => up_sample8_q_net,
      d0 => register2_q_net_x27,
      d1 => shift3_op_net,
      d2 => register_q_net_x17,
      y => mux_y_net_x37
  );

  mux1: entity work.sysgen_mux_fe7927c6ad
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel => up_sample8_q_net,
      d0(0) => register3_q_net_x27,
      d1(0) => register6_q_net_x5,
      d2(0) => relational_op_net,
      y(0) => mux1_y_net_x1
  );

  mux2: entity work.sysgen_mux_fe7927c6ad
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel => up_sample8_q_net,
      d0(0) => register1_q_net_x28,
      d1(0) => register4_q_net_x5,
      d2(0) => register19_q_net,
      y(0) => mux2_y_net_x1
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => tx2_in_tvalid_net,
      q(0) => register1_q_net_x28
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d => tx2_in_tdata_net,
      q => register2_q_net_x27
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => tx2_in_tlast_net,
      q(0) => register3_q_net_x27
  );

  up_sample2: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x33,
      q => up_sample2_q_net_x2
  );

  up_sample3: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x34,
      q => up_sample3_q_net_x2
  );

  axis_to_parallel: entity work.axis_to_parallel_ae87b1d1f5
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      tdata => register2_q_net_x27,
      tvalid => register1_q_net_x28,
      tlast => register3_q_net_x27,
      i0 => down_sample3_q_net_x7,
      q0 => down_sample2_q_net_x7,
      i1 => down_sample1_q_net_x7,
      q1 => down_sample_q_net_x24
    );

  power: entity work.power_c3640e262d
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      reset => constant12_op_net_x2,
      in_q => convert1_dout_net_x11,
      in_i => convert_dout_net_x18,
      power => down_sample_q_net_x25
    );

  power1_x0: entity work.power1_x0_6b2543a665
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      reset => constant3_op_net_x2,
      in_q => convert3_dout_net_x9,
      in_i => convert2_dout_net_x18,
      power => down_sample_q_net_x26
    );

  spi_power_tx0: entity work.spi_power_tx0_4b2e201204
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_4 => constant13_op_net_x2,
      en => constant14_op_net_x3,
      inst_power => down_sample_q_net_x25,
      power => reinterpret_output_port_net_x33
    );

  spi_power_tx1: entity work.spi_power_tx1_1140f89311
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_4 => constant16_op_net_x2,
      en => constant17_op_net_x2,
      inst_power => down_sample_q_net_x26,
      power => reinterpret_output_port_net_x34
    );
end structural;


-- Generated from Simulink block "tek_meas/tx3/AXIS_to_parallel"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity axis_to_parallel_70d4ceaeb5 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_1: in std_logic;
    ce_1: in std_logic;
    tdata: in std_logic_vector(15 downto 0);
    tvalid: in std_logic;
    tlast: in std_logic;
    i0: out std_logic_vector(15 downto 0);
    q0: out std_logic_vector(15 downto 0);
    i1: out std_logic_vector(15 downto 0);
    q1: out std_logic_vector(15 downto 0)
  );
end axis_to_parallel_70d4ceaeb5;

architecture structural of axis_to_parallel_70d4ceaeb5 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal delay_q_net_x12: std_logic;
  signal register_q_net_x64: std_logic_vector(15 downto 0);
  signal register1_q_net_x31: std_logic_vector(15 downto 0);
  signal register2_q_net_x30: std_logic_vector(15 downto 0);
  signal register3_q_net_x30: std_logic_vector(15 downto 0);
  signal register4_q_net_x9: std_logic_vector(15 downto 0);
  signal register5_q_net_x9: std_logic_vector(15 downto 0);
  signal register6_q_net_x9: std_logic_vector(15 downto 0);
  signal register7_q_net_x9: std_logic_vector(15 downto 0);
  signal register2_q_net_x31: std_logic_vector(15 downto 0);
  signal register1_q_net_x32: std_logic;
  signal register3_q_net_x31: std_logic;
  signal down_sample3_q_net_x8: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x8: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x8: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x27: std_logic_vector(15 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  register2_q_net_x31 <= tdata;
  register1_q_net_x32 <= tvalid;
  register3_q_net_x31 <= tlast;
  i0 <= down_sample3_q_net_x8;
  q0 <= down_sample2_q_net_x8;
  i1 <= down_sample1_q_net_x8;
  q1 <= down_sample_q_net_x27;

  delay: entity work.xldelay_tek_meas
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
      d(0) => register3_q_net_x31,
      q(0) => delay_q_net_x12
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register4_q_net_x9,
      q => down_sample_q_net_x27
  );

  down_sample1: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register5_q_net_x9,
      q => down_sample1_q_net_x8
  );

  down_sample2: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register6_q_net_x9,
      q => down_sample2_q_net_x8
  );

  down_sample3: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register7_q_net_x9,
      q => down_sample3_q_net_x8
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x31,
      en(0) => register1_q_net_x32,
      q => register_q_net_x64
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net_x64,
      en(0) => register1_q_net_x32,
      q => register1_q_net_x31
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net_x31,
      en(0) => register1_q_net_x32,
      q => register2_q_net_x30
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x30,
      en(0) => register1_q_net_x32,
      q => register3_q_net_x30
  );

  register4: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net_x64,
      en(0) => delay_q_net_x12,
      q => register4_q_net_x9
  );

  register5: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net_x31,
      en(0) => delay_q_net_x12,
      q => register5_q_net_x9
  );

  register6: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x30,
      en(0) => delay_q_net_x12,
      q => register6_q_net_x9
  );

  register7: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register3_q_net_x30,
      en(0) => delay_q_net_x12,
      q => register7_q_net_x9
  );
end structural;


-- Generated from Simulink block "tek_meas/tx3/Power/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_489b559919 is
  port (
    clk_2: in std_logic;
    ce_2: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_489b559919;

architecture structural of tdm_489b559919 is
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal counter_op_net_x55: std_logic;
  signal convert1_dout_net_x14: std_logic_vector(17 downto 0);
  signal convert_dout_net_x21: std_logic_vector(17 downto 0);
  signal constant12_op_net_x3: std_logic;
  signal mux_y_net_x44: std_logic_vector(17 downto 0);

begin
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  convert1_dout_net_x14 <= in1;
  convert_dout_net_x21 <= in0;
  constant12_op_net_x3 <= rst;
  out_x0 <= mux_y_net_x44;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant12_op_net_x3,
      op(0) => counter_op_net_x55
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x55,
      d0 => convert_dout_net_x21,
      d1 => convert1_dout_net_x14,
      y => mux_y_net_x44
  );
end structural;


-- Generated from Simulink block "tek_meas/tx3/Power"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power_a247c09971 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(15 downto 0)
  );
end power_a247c09971;

architecture structural of power_a247c09971 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal convert_dout_net_x22: std_logic;
  signal convert1_dout_net_x15: std_logic_vector(15 downto 0);
  signal convert2_dout_net_x22: std_logic_vector(29 downto 0);
  signal counter_op_net_x54: std_logic;
  signal dsp48e1_p_net_x17: std_logic_vector(47 downto 0);
  signal inverter_op_net_x18: std_logic;
  signal mux_y_net_x43: std_logic_vector(19 downto 0);
  signal opmode_op_net_x17: std_logic_vector(19 downto 0);
  signal opmode1_op_net_x17: std_logic_vector(19 downto 0);
  signal register_q_net_x65: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net_x35: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net_x17: std_logic_vector(47 downto 0);
  signal constant12_op_net_x3: std_logic;
  signal convert1_dout_net_x14: std_logic_vector(17 downto 0);
  signal convert_dout_net_x21: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x28: std_logic_vector(15 downto 0);
  signal mux_y_net_x44: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  constant12_op_net_x3 <= reset;
  convert1_dout_net_x14 <= in_q;
  convert_dout_net_x21 <= in_i;
  power <= down_sample_q_net_x28;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net_x18,
      dout(0) => convert_dout_net_x22
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 15,
      dout_width => 16,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => register_q_net_x65,
      dout => convert1_dout_net_x15
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net_x35,
      dout => convert2_dout_net_x22
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant12_op_net_x3,
      op(0) => counter_op_net_x54
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x22,
      b => reinterpret_output_port_net_x35,
      c => dsp48e1_p_net_x17,
      op => mux_y_net_x43,
      p => dsp48e1_p_net_x17
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert1_dout_net_x15,
      q => down_sample_q_net_x28
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      ip(0) => counter_op_net_x54,
      op(0) => inverter_op_net_x18
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x54,
      d0 => opmode_op_net_x17,
      d1 => opmode1_op_net_x17,
      y => mux_y_net_x43
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net_x17
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net_x17
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      rst => "0",
      d => reinterpret1_output_port_net_x17,
      en(0) => convert_dout_net_x22,
      q => register_q_net_x65
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x44,
      output_port => reinterpret_output_port_net_x35
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net_x17,
      output_port => reinterpret1_output_port_net_x17
  );

  tdm: entity work.tdm_489b559919
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      in1 => convert1_dout_net_x14,
      in0 => convert_dout_net_x21,
      rst => constant12_op_net_x3,
      out_x0 => mux_y_net_x44
    );
end structural;


-- Generated from Simulink block "tek_meas/tx3/Power1/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_482ed59c32 is
  port (
    clk_2: in std_logic;
    ce_2: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_482ed59c32;

architecture structural of tdm_482ed59c32 is
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal counter_op_net_x57: std_logic;
  signal convert3_dout_net_x10: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x21: std_logic_vector(17 downto 0);
  signal constant3_op_net_x3: std_logic;
  signal mux_y_net_x46: std_logic_vector(17 downto 0);

begin
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  convert3_dout_net_x10 <= in1;
  convert2_dout_net_x21 <= in0;
  constant3_op_net_x3 <= rst;
  out_x0 <= mux_y_net_x46;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant3_op_net_x3,
      op(0) => counter_op_net_x57
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x57,
      d0 => convert2_dout_net_x21,
      d1 => convert3_dout_net_x10,
      y => mux_y_net_x46
  );
end structural;


-- Generated from Simulink block "tek_meas/tx3/Power1"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power1_x0_8470de03ee is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(15 downto 0)
  );
end power1_x0_8470de03ee;

architecture structural of power1_x0_8470de03ee is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal convert_dout_net_x23: std_logic;
  signal convert1_dout_net_x16: std_logic_vector(15 downto 0);
  signal convert2_dout_net_x23: std_logic_vector(29 downto 0);
  signal counter_op_net_x56: std_logic;
  signal dsp48e1_p_net_x18: std_logic_vector(47 downto 0);
  signal inverter_op_net_x19: std_logic;
  signal mux_y_net_x45: std_logic_vector(19 downto 0);
  signal opmode_op_net_x18: std_logic_vector(19 downto 0);
  signal opmode1_op_net_x18: std_logic_vector(19 downto 0);
  signal register_q_net_x66: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net_x36: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net_x18: std_logic_vector(47 downto 0);
  signal constant3_op_net_x3: std_logic;
  signal convert3_dout_net_x10: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x21: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x29: std_logic_vector(15 downto 0);
  signal mux_y_net_x46: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  constant3_op_net_x3 <= reset;
  convert3_dout_net_x10 <= in_q;
  convert2_dout_net_x21 <= in_i;
  power <= down_sample_q_net_x29;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net_x19,
      dout(0) => convert_dout_net_x23
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 15,
      dout_width => 16,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => register_q_net_x66,
      dout => convert1_dout_net_x16
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net_x36,
      dout => convert2_dout_net_x23
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant3_op_net_x3,
      op(0) => counter_op_net_x56
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x23,
      b => reinterpret_output_port_net_x36,
      c => dsp48e1_p_net_x18,
      op => mux_y_net_x45,
      p => dsp48e1_p_net_x18
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert1_dout_net_x16,
      q => down_sample_q_net_x29
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      ip(0) => counter_op_net_x56,
      op(0) => inverter_op_net_x19
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x56,
      d0 => opmode_op_net_x18,
      d1 => opmode1_op_net_x18,
      y => mux_y_net_x45
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net_x18
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net_x18
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      rst => "0",
      d => reinterpret1_output_port_net_x18,
      en(0) => convert_dout_net_x23,
      q => register_q_net_x66
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x46,
      output_port => reinterpret_output_port_net_x36
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net_x18,
      output_port => reinterpret1_output_port_net_x18
  );

  tdm: entity work.tdm_482ed59c32
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      in1 => convert3_dout_net_x10,
      in0 => convert2_dout_net_x21,
      rst => constant3_op_net_x3,
      out_x0 => mux_y_net_x46
    );
end structural;


-- Generated from Simulink block "tek_meas/tx3/SPI_power_Tx0/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_f69d8f347e is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(15 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_f69d8f347e;

architecture structural of cic_f69d8f347e is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub_s_net_x36: std_logic_vector(41 downto 0);
  signal constant_op_net_x19: std_logic_vector(7 downto 0);
  signal counter_op_net_x58: std_logic_vector(7 downto 0);
  signal register_q_net_x67: std_logic_vector(41 downto 0);
  signal register1_q_net_x33: std_logic_vector(41 downto 0);
  signal register2_q_net_x32: std_logic_vector(41 downto 0);
  signal register3_q_net_x32: std_logic_vector(41 downto 0);
  signal relational_op_net_x19: std_logic;
  signal shift_op_net_x37: std_logic_vector(41 downto 0);
  signal constant13_op_net_x3: std_logic;
  signal constant14_op_net_x4: std_logic;
  signal down_sample_q_net_x28: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x36: std_logic_vector(31 downto 0);
  signal logical_y_net_x18: std_logic;

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant13_op_net_x3 <= rst_2;
  constant14_op_net_x4 <= en;
  down_sample_q_net_x28 <= x;
  y <= addsub1_s_net_x36;
  en_cic <= logical_y_net_x18;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register1_q_net_x33,
      b => shift_op_net_x37,
      s => addsub_s_net_x36
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register3_q_net_x32,
      b => register2_q_net_x32,
      en(0) => logical_y_net_x18,
      s => addsub1_s_net_x36
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x19
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant13_op_net_x3,
      en(0) => constant14_op_net_x4,
      op => counter_op_net_x58
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant14_op_net_x4,
      d1(0) => relational_op_net_x19,
      y(0) => logical_y_net_x18
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register3_q_net_x32,
      en(0) => logical_y_net_x18,
      q => register_q_net_x67
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x36,
      en(0) => constant14_op_net_x4,
      q => register1_q_net_x33
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register_q_net_x67,
      en(0) => logical_y_net_x18,
      q => register2_q_net_x32
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x36,
      en(0) => logical_y_net_x18,
      q => register3_q_net_x32
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x58,
      b => constant_op_net_x19,
      op(0) => relational_op_net_x19
  );

  shift: entity work.sysgen_shift_9e1e4534b0
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => down_sample_q_net_x28,
      op => shift_op_net_x37
  );
end structural;


-- Generated from Simulink block "tek_meas/tx3/SPI_power_Tx0/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_d0bc970407 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_d0bc970407;

architecture structural of iir_d0bc970407 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub1_s_net_x37: std_logic_vector(31 downto 0);
  signal register_q_net_x68: std_logic_vector(31 downto 0);
  signal shift_op_net_x38: std_logic_vector(31 downto 0);
  signal shift1_op_net_x20: std_logic_vector(31 downto 0);
  signal logical_y_net_x18: std_logic;
  signal addsub1_s_net_x36: std_logic_vector(31 downto 0);
  signal addsub_s_net_x37: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  logical_y_net_x18 <= en;
  addsub1_s_net_x36 <= x;
  y <= addsub_s_net_x37;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => shift_op_net_x38,
      b => register_q_net_x68,
      en(0) => logical_y_net_x18,
      s => addsub_s_net_x37
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => addsub_s_net_x37,
      b => shift1_op_net_x20,
      s => addsub1_s_net_x37
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub1_s_net_x37,
      en(0) => logical_y_net_x18,
      q => register_q_net_x68
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub1_s_net_x36,
      op => shift_op_net_x38
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub_s_net_x37,
      op => shift1_op_net_x20
  );
end structural;


-- Generated from Simulink block "tek_meas/tx3/SPI_power_Tx0"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity spi_power_tx0_912ac33a25 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(15 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end spi_power_tx0_912ac33a25;

architecture structural of spi_power_tx0_912ac33a25 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal constant13_op_net_x3: std_logic;
  signal constant14_op_net_x4: std_logic;
  signal down_sample_q_net_x28: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x37: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x36: std_logic_vector(31 downto 0);
  signal logical_y_net_x18: std_logic;
  signal addsub_s_net_x37: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant13_op_net_x3 <= rst_4;
  constant14_op_net_x4 <= en;
  down_sample_q_net_x28 <= inst_power;
  power <= reinterpret_output_port_net_x37;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x37,
      output_port => reinterpret_output_port_net_x37
  );

  cic: entity work.cic_f69d8f347e
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_2 => constant13_op_net_x3,
      en => constant14_op_net_x4,
      x => down_sample_q_net_x28,
      y => addsub1_s_net_x36,
      en_cic => logical_y_net_x18
    );

  iir: entity work.iir_d0bc970407
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      en => logical_y_net_x18,
      x => addsub1_s_net_x36,
      y => addsub_s_net_x37
    );
end structural;


-- Generated from Simulink block "tek_meas/tx3/SPI_power_Tx1/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_26125081c2 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(15 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_26125081c2;

architecture structural of cic_26125081c2 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub_s_net_x38: std_logic_vector(41 downto 0);
  signal constant_op_net_x20: std_logic_vector(7 downto 0);
  signal counter_op_net_x59: std_logic_vector(7 downto 0);
  signal register_q_net_x69: std_logic_vector(41 downto 0);
  signal register1_q_net_x34: std_logic_vector(41 downto 0);
  signal register2_q_net_x33: std_logic_vector(41 downto 0);
  signal register3_q_net_x33: std_logic_vector(41 downto 0);
  signal relational_op_net_x20: std_logic;
  signal shift_op_net_x39: std_logic_vector(41 downto 0);
  signal constant16_op_net_x3: std_logic;
  signal constant17_op_net_x3: std_logic;
  signal down_sample_q_net_x29: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x38: std_logic_vector(31 downto 0);
  signal logical_y_net_x19: std_logic;

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant16_op_net_x3 <= rst_2;
  constant17_op_net_x3 <= en;
  down_sample_q_net_x29 <= x;
  y <= addsub1_s_net_x38;
  en_cic <= logical_y_net_x19;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register1_q_net_x34,
      b => shift_op_net_x39,
      s => addsub_s_net_x38
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register3_q_net_x33,
      b => register2_q_net_x33,
      en(0) => logical_y_net_x19,
      s => addsub1_s_net_x38
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x20
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant16_op_net_x3,
      en(0) => constant17_op_net_x3,
      op => counter_op_net_x59
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant17_op_net_x3,
      d1(0) => relational_op_net_x20,
      y(0) => logical_y_net_x19
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register3_q_net_x33,
      en(0) => logical_y_net_x19,
      q => register_q_net_x69
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x38,
      en(0) => constant17_op_net_x3,
      q => register1_q_net_x34
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register_q_net_x69,
      en(0) => logical_y_net_x19,
      q => register2_q_net_x33
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x38,
      en(0) => logical_y_net_x19,
      q => register3_q_net_x33
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x59,
      b => constant_op_net_x20,
      op(0) => relational_op_net_x20
  );

  shift: entity work.sysgen_shift_9e1e4534b0
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => down_sample_q_net_x29,
      op => shift_op_net_x39
  );
end structural;


-- Generated from Simulink block "tek_meas/tx3/SPI_power_Tx1/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_77ca6a4ec7 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_77ca6a4ec7;

architecture structural of iir_77ca6a4ec7 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub1_s_net_x39: std_logic_vector(31 downto 0);
  signal register_q_net_x70: std_logic_vector(31 downto 0);
  signal shift_op_net_x40: std_logic_vector(31 downto 0);
  signal shift1_op_net_x21: std_logic_vector(31 downto 0);
  signal logical_y_net_x19: std_logic;
  signal addsub1_s_net_x38: std_logic_vector(31 downto 0);
  signal addsub_s_net_x39: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  logical_y_net_x19 <= en;
  addsub1_s_net_x38 <= x;
  y <= addsub_s_net_x39;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => shift_op_net_x40,
      b => register_q_net_x70,
      en(0) => logical_y_net_x19,
      s => addsub_s_net_x39
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => addsub_s_net_x39,
      b => shift1_op_net_x21,
      s => addsub1_s_net_x39
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub1_s_net_x39,
      en(0) => logical_y_net_x19,
      q => register_q_net_x70
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub1_s_net_x38,
      op => shift_op_net_x40
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub_s_net_x39,
      op => shift1_op_net_x21
  );
end structural;


-- Generated from Simulink block "tek_meas/tx3/SPI_power_Tx1"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity spi_power_tx1_6b440b0420 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(15 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end spi_power_tx1_6b440b0420;

architecture structural of spi_power_tx1_6b440b0420 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal constant16_op_net_x3: std_logic;
  signal constant17_op_net_x3: std_logic;
  signal down_sample_q_net_x29: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x38: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x38: std_logic_vector(31 downto 0);
  signal logical_y_net_x19: std_logic;
  signal addsub_s_net_x39: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant16_op_net_x3 <= rst_4;
  constant17_op_net_x3 <= en;
  down_sample_q_net_x29 <= inst_power;
  power <= reinterpret_output_port_net_x38;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x39,
      output_port => reinterpret_output_port_net_x38
  );

  cic: entity work.cic_26125081c2
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_2 => constant16_op_net_x3,
      en => constant17_op_net_x3,
      x => down_sample_q_net_x29,
      y => addsub1_s_net_x38,
      en_cic => logical_y_net_x19
    );

  iir: entity work.iir_77ca6a4ec7
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      en => logical_y_net_x19,
      x => addsub1_s_net_x38,
      y => addsub_s_net_x39
    );
end structural;


-- Generated from Simulink block "tek_meas/tx3"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tx3_ff39c1050b is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    clk_1: in std_logic;
    ce_1: in std_logic;
    tvalid: in std_logic;
    tlast: in std_logic;
    tdata: in std_logic_vector(15 downto 0);
    tvalid_rx: in std_logic;
    tlast_rx: in std_logic;
    tdata_rx: in std_logic_vector(15 downto 0);
    loopback: in std_logic_vector(1 downto 0);
    dds_tdata_x3: in std_logic_vector(15 downto 0);
    dds_tlast_x3: in std_logic;
    dds_tvalid_x3: in std_logic;
    tdata_out: out std_logic_vector(15 downto 0);
    tlast_out: out std_logic;
    tvalid_out: out std_logic;
    power0: out std_logic_vector(31 downto 0);
    power1: out std_logic_vector(31 downto 0)
  );
end tx3_ff39c1050b;

architecture structural of tx3_ff39c1050b is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal constant12_op_net_x3: std_logic;
  signal constant13_op_net_x3: std_logic;
  signal constant14_op_net_x4: std_logic;
  signal constant16_op_net_x3: std_logic;
  signal constant17_op_net_x3: std_logic;
  signal constant3_op_net_x3: std_logic;
  signal convert_dout_net_x21: std_logic_vector(17 downto 0);
  signal convert1_dout_net_x14: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x21: std_logic_vector(17 downto 0);
  signal convert3_dout_net_x10: std_logic_vector(17 downto 0);
  signal register1_q_net_x32: std_logic;
  signal register2_q_net_x31: std_logic_vector(15 downto 0);
  signal register3_q_net_x31: std_logic;
  signal tx3_in_tvalid_net: std_logic;
  signal tx3_in_tlast_net: std_logic;
  signal tx3_in_tdata_net: std_logic_vector(15 downto 0);
  signal register7_q_net_x5: std_logic;
  signal register12_q_net: std_logic;
  signal shift4_op_net: std_logic_vector(15 downto 0);
  signal up_sample11_q_net: std_logic_vector(1 downto 0);
  signal register_q_net_x17: std_logic_vector(15 downto 0);
  signal relational_op_net: std_logic;
  signal register19_q_net: std_logic;
  signal mux_y_net_x42: std_logic_vector(15 downto 0);
  signal mux1_y_net_x2: std_logic;
  signal mux2_y_net_x2: std_logic;
  signal up_sample2_q_net_x3: std_logic_vector(31 downto 0);
  signal up_sample3_q_net_x3: std_logic_vector(31 downto 0);
  signal down_sample3_q_net_x8: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x8: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x8: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x27: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x28: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x29: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x37: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x38: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  tx3_in_tvalid_net <= tvalid;
  tx3_in_tlast_net <= tlast;
  tx3_in_tdata_net <= tdata;
  register7_q_net_x5 <= tvalid_rx;
  register12_q_net <= tlast_rx;
  shift4_op_net <= tdata_rx;
  up_sample11_q_net <= loopback;
  register_q_net_x17 <= dds_tdata_x3;
  relational_op_net <= dds_tlast_x3;
  register19_q_net <= dds_tvalid_x3;
  tdata_out <= mux_y_net_x42;
  tlast_out <= mux1_y_net_x2;
  tvalid_out <= mux2_y_net_x2;
  power0 <= up_sample2_q_net_x3;
  power1 <= up_sample3_q_net_x3;

  constant12: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant12_op_net_x3
  );

  constant13: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant13_op_net_x3
  );

  constant14: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant14_op_net_x4
  );

  constant16: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant16_op_net_x3
  );

  constant17: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant17_op_net_x3
  );

  constant3: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant3_op_net_x3
  );

  convert: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample3_q_net_x8,
      dout => convert_dout_net_x21
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample2_q_net_x8,
      dout => convert1_dout_net_x14
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample1_q_net_x8,
      dout => convert2_dout_net_x21
  );

  convert3: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample_q_net_x27,
      dout => convert3_dout_net_x10
  );

  mux: entity work.sysgen_mux_84e54da74c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel => up_sample11_q_net,
      d0 => register2_q_net_x31,
      d1 => shift4_op_net,
      d2 => register_q_net_x17,
      y => mux_y_net_x42
  );

  mux1: entity work.sysgen_mux_fe7927c6ad
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel => up_sample11_q_net,
      d0(0) => register3_q_net_x31,
      d1(0) => register12_q_net,
      d2(0) => relational_op_net,
      y(0) => mux1_y_net_x2
  );

  mux2: entity work.sysgen_mux_fe7927c6ad
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel => up_sample11_q_net,
      d0(0) => register1_q_net_x32,
      d1(0) => register7_q_net_x5,
      d2(0) => register19_q_net,
      y(0) => mux2_y_net_x2
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => tx3_in_tvalid_net,
      q(0) => register1_q_net_x32
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d => tx3_in_tdata_net,
      q => register2_q_net_x31
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => tx3_in_tlast_net,
      q(0) => register3_q_net_x31
  );

  up_sample2: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x37,
      q => up_sample2_q_net_x3
  );

  up_sample3: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x38,
      q => up_sample3_q_net_x3
  );

  axis_to_parallel: entity work.axis_to_parallel_70d4ceaeb5
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      tdata => register2_q_net_x31,
      tvalid => register1_q_net_x32,
      tlast => register3_q_net_x31,
      i0 => down_sample3_q_net_x8,
      q0 => down_sample2_q_net_x8,
      i1 => down_sample1_q_net_x8,
      q1 => down_sample_q_net_x27
    );

  power: entity work.power_a247c09971
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      reset => constant12_op_net_x3,
      in_q => convert1_dout_net_x14,
      in_i => convert_dout_net_x21,
      power => down_sample_q_net_x28
    );

  power1_x0: entity work.power1_x0_8470de03ee
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      reset => constant3_op_net_x3,
      in_q => convert3_dout_net_x10,
      in_i => convert2_dout_net_x21,
      power => down_sample_q_net_x29
    );

  spi_power_tx0: entity work.spi_power_tx0_912ac33a25
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_4 => constant13_op_net_x3,
      en => constant14_op_net_x4,
      inst_power => down_sample_q_net_x28,
      power => reinterpret_output_port_net_x37
    );

  spi_power_tx1: entity work.spi_power_tx1_6b440b0420
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_4 => constant16_op_net_x3,
      en => constant17_op_net_x3,
      inst_power => down_sample_q_net_x29,
      power => reinterpret_output_port_net_x38
    );
end structural;


-- Generated from Simulink block "tek_meas/tx4/AXIS_to_parallel"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity axis_to_parallel_663830eb30 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_1: in std_logic;
    ce_1: in std_logic;
    tdata: in std_logic_vector(15 downto 0);
    tvalid: in std_logic;
    tlast: in std_logic;
    i0: out std_logic_vector(15 downto 0);
    q0: out std_logic_vector(15 downto 0);
    i1: out std_logic_vector(15 downto 0);
    q1: out std_logic_vector(15 downto 0)
  );
end axis_to_parallel_663830eb30;

architecture structural of axis_to_parallel_663830eb30 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal delay_q_net_x13: std_logic;
  signal register_q_net_x71: std_logic_vector(15 downto 0);
  signal register1_q_net_x35: std_logic_vector(15 downto 0);
  signal register2_q_net_x34: std_logic_vector(15 downto 0);
  signal register3_q_net_x34: std_logic_vector(15 downto 0);
  signal register4_q_net_x10: std_logic_vector(15 downto 0);
  signal register5_q_net_x10: std_logic_vector(15 downto 0);
  signal register6_q_net_x10: std_logic_vector(15 downto 0);
  signal register7_q_net_x10: std_logic_vector(15 downto 0);
  signal register2_q_net_x35: std_logic_vector(15 downto 0);
  signal register1_q_net_x36: std_logic;
  signal register3_q_net_x35: std_logic;
  signal down_sample3_q_net_x9: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x9: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x9: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x30: std_logic_vector(15 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  register2_q_net_x35 <= tdata;
  register1_q_net_x36 <= tvalid;
  register3_q_net_x35 <= tlast;
  i0 <= down_sample3_q_net_x9;
  q0 <= down_sample2_q_net_x9;
  i1 <= down_sample1_q_net_x9;
  q1 <= down_sample_q_net_x30;

  delay: entity work.xldelay_tek_meas
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
      d(0) => register3_q_net_x35,
      q(0) => delay_q_net_x13
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register4_q_net_x10,
      q => down_sample_q_net_x30
  );

  down_sample1: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register5_q_net_x10,
      q => down_sample1_q_net_x9
  );

  down_sample2: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register6_q_net_x10,
      q => down_sample2_q_net_x9
  );

  down_sample3: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register7_q_net_x10,
      q => down_sample3_q_net_x9
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x35,
      en(0) => register1_q_net_x36,
      q => register_q_net_x71
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net_x71,
      en(0) => register1_q_net_x36,
      q => register1_q_net_x35
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net_x35,
      en(0) => register1_q_net_x36,
      q => register2_q_net_x34
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x34,
      en(0) => register1_q_net_x36,
      q => register3_q_net_x34
  );

  register4: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net_x71,
      en(0) => delay_q_net_x13,
      q => register4_q_net_x10
  );

  register5: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net_x35,
      en(0) => delay_q_net_x13,
      q => register5_q_net_x10
  );

  register6: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x34,
      en(0) => delay_q_net_x13,
      q => register6_q_net_x10
  );

  register7: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register3_q_net_x34,
      en(0) => delay_q_net_x13,
      q => register7_q_net_x10
  );
end structural;


-- Generated from Simulink block "tek_meas/tx4/Power/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_adfc90c18a is
  port (
    clk_2: in std_logic;
    ce_2: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_adfc90c18a;

architecture structural of tdm_adfc90c18a is
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal counter_op_net_x61: std_logic;
  signal convert1_dout_net_x17: std_logic_vector(17 downto 0);
  signal convert_dout_net_x24: std_logic_vector(17 downto 0);
  signal constant12_op_net_x4: std_logic;
  signal mux_y_net_x49: std_logic_vector(17 downto 0);

begin
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  convert1_dout_net_x17 <= in1;
  convert_dout_net_x24 <= in0;
  constant12_op_net_x4 <= rst;
  out_x0 <= mux_y_net_x49;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant12_op_net_x4,
      op(0) => counter_op_net_x61
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x61,
      d0 => convert_dout_net_x24,
      d1 => convert1_dout_net_x17,
      y => mux_y_net_x49
  );
end structural;


-- Generated from Simulink block "tek_meas/tx4/Power"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power_9e74171204 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(15 downto 0)
  );
end power_9e74171204;

architecture structural of power_9e74171204 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal convert_dout_net_x25: std_logic;
  signal convert1_dout_net_x18: std_logic_vector(15 downto 0);
  signal convert2_dout_net_x25: std_logic_vector(29 downto 0);
  signal counter_op_net_x60: std_logic;
  signal dsp48e1_p_net_x19: std_logic_vector(47 downto 0);
  signal inverter_op_net_x20: std_logic;
  signal mux_y_net_x48: std_logic_vector(19 downto 0);
  signal opmode_op_net_x19: std_logic_vector(19 downto 0);
  signal opmode1_op_net_x19: std_logic_vector(19 downto 0);
  signal register_q_net_x72: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net_x39: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net_x19: std_logic_vector(47 downto 0);
  signal constant12_op_net_x4: std_logic;
  signal convert1_dout_net_x17: std_logic_vector(17 downto 0);
  signal convert_dout_net_x24: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x31: std_logic_vector(15 downto 0);
  signal mux_y_net_x49: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  constant12_op_net_x4 <= reset;
  convert1_dout_net_x17 <= in_q;
  convert_dout_net_x24 <= in_i;
  power <= down_sample_q_net_x31;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net_x20,
      dout(0) => convert_dout_net_x25
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 15,
      dout_width => 16,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => register_q_net_x72,
      dout => convert1_dout_net_x18
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net_x39,
      dout => convert2_dout_net_x25
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant12_op_net_x4,
      op(0) => counter_op_net_x60
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x25,
      b => reinterpret_output_port_net_x39,
      c => dsp48e1_p_net_x19,
      op => mux_y_net_x48,
      p => dsp48e1_p_net_x19
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert1_dout_net_x18,
      q => down_sample_q_net_x31
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      ip(0) => counter_op_net_x60,
      op(0) => inverter_op_net_x20
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x60,
      d0 => opmode_op_net_x19,
      d1 => opmode1_op_net_x19,
      y => mux_y_net_x48
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net_x19
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net_x19
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      rst => "0",
      d => reinterpret1_output_port_net_x19,
      en(0) => convert_dout_net_x25,
      q => register_q_net_x72
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x49,
      output_port => reinterpret_output_port_net_x39
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net_x19,
      output_port => reinterpret1_output_port_net_x19
  );

  tdm: entity work.tdm_adfc90c18a
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      in1 => convert1_dout_net_x17,
      in0 => convert_dout_net_x24,
      rst => constant12_op_net_x4,
      out_x0 => mux_y_net_x49
    );
end structural;


-- Generated from Simulink block "tek_meas/tx4/Power1/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_a150c9071c is
  port (
    clk_2: in std_logic;
    ce_2: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_a150c9071c;

architecture structural of tdm_a150c9071c is
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal counter_op_net_x63: std_logic;
  signal convert3_dout_net_x11: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x24: std_logic_vector(17 downto 0);
  signal constant3_op_net_x4: std_logic;
  signal mux_y_net_x51: std_logic_vector(17 downto 0);

begin
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  convert3_dout_net_x11 <= in1;
  convert2_dout_net_x24 <= in0;
  constant3_op_net_x4 <= rst;
  out_x0 <= mux_y_net_x51;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant3_op_net_x4,
      op(0) => counter_op_net_x63
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x63,
      d0 => convert2_dout_net_x24,
      d1 => convert3_dout_net_x11,
      y => mux_y_net_x51
  );
end structural;


-- Generated from Simulink block "tek_meas/tx4/Power1"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power1_x0_f3a8a09dd7 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(15 downto 0)
  );
end power1_x0_f3a8a09dd7;

architecture structural of power1_x0_f3a8a09dd7 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal convert_dout_net_x26: std_logic;
  signal convert1_dout_net_x19: std_logic_vector(15 downto 0);
  signal convert2_dout_net_x26: std_logic_vector(29 downto 0);
  signal counter_op_net_x62: std_logic;
  signal dsp48e1_p_net_x20: std_logic_vector(47 downto 0);
  signal inverter_op_net_x21: std_logic;
  signal mux_y_net_x50: std_logic_vector(19 downto 0);
  signal opmode_op_net_x20: std_logic_vector(19 downto 0);
  signal opmode1_op_net_x20: std_logic_vector(19 downto 0);
  signal register_q_net_x73: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net_x40: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net_x20: std_logic_vector(47 downto 0);
  signal constant3_op_net_x4: std_logic;
  signal convert3_dout_net_x11: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x24: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x32: std_logic_vector(15 downto 0);
  signal mux_y_net_x51: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  constant3_op_net_x4 <= reset;
  convert3_dout_net_x11 <= in_q;
  convert2_dout_net_x24 <= in_i;
  power <= down_sample_q_net_x32;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net_x21,
      dout(0) => convert_dout_net_x26
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 15,
      dout_width => 16,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => register_q_net_x73,
      dout => convert1_dout_net_x19
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net_x40,
      dout => convert2_dout_net_x26
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      rst(0) => constant3_op_net_x4,
      op(0) => counter_op_net_x62
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x26,
      b => reinterpret_output_port_net_x40,
      c => dsp48e1_p_net_x20,
      op => mux_y_net_x50,
      p => dsp48e1_p_net_x20
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert1_dout_net_x19,
      q => down_sample_q_net_x32
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      clr => '0',
      ip(0) => counter_op_net_x62,
      op(0) => inverter_op_net_x21
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x62,
      d0 => opmode_op_net_x20,
      d1 => opmode1_op_net_x20,
      y => mux_y_net_x50
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net_x20
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net_x20
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_2_net,
      clk => clk_2_net,
      rst => "0",
      d => reinterpret1_output_port_net_x20,
      en(0) => convert_dout_net_x26,
      q => register_q_net_x73
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x51,
      output_port => reinterpret_output_port_net_x40
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net_x20,
      output_port => reinterpret1_output_port_net_x20
  );

  tdm: entity work.tdm_a150c9071c
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      in1 => convert3_dout_net_x11,
      in0 => convert2_dout_net_x24,
      rst => constant3_op_net_x4,
      out_x0 => mux_y_net_x51
    );
end structural;


-- Generated from Simulink block "tek_meas/tx4/SPI_power_Tx0/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_060e491f37 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(15 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_060e491f37;

architecture structural of cic_060e491f37 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub_s_net_x40: std_logic_vector(41 downto 0);
  signal constant_op_net_x21: std_logic_vector(7 downto 0);
  signal counter_op_net_x64: std_logic_vector(7 downto 0);
  signal register_q_net_x74: std_logic_vector(41 downto 0);
  signal register1_q_net_x37: std_logic_vector(41 downto 0);
  signal register2_q_net_x36: std_logic_vector(41 downto 0);
  signal register3_q_net_x36: std_logic_vector(41 downto 0);
  signal relational_op_net_x21: std_logic;
  signal shift_op_net_x41: std_logic_vector(41 downto 0);
  signal constant13_op_net_x4: std_logic;
  signal constant14_op_net_x5: std_logic;
  signal down_sample_q_net_x31: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x40: std_logic_vector(31 downto 0);
  signal logical_y_net_x20: std_logic;

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant13_op_net_x4 <= rst_2;
  constant14_op_net_x5 <= en;
  down_sample_q_net_x31 <= x;
  y <= addsub1_s_net_x40;
  en_cic <= logical_y_net_x20;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register1_q_net_x37,
      b => shift_op_net_x41,
      s => addsub_s_net_x40
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register3_q_net_x36,
      b => register2_q_net_x36,
      en(0) => logical_y_net_x20,
      s => addsub1_s_net_x40
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x21
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant13_op_net_x4,
      en(0) => constant14_op_net_x5,
      op => counter_op_net_x64
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant14_op_net_x5,
      d1(0) => relational_op_net_x21,
      y(0) => logical_y_net_x20
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register3_q_net_x36,
      en(0) => logical_y_net_x20,
      q => register_q_net_x74
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x40,
      en(0) => constant14_op_net_x5,
      q => register1_q_net_x37
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register_q_net_x74,
      en(0) => logical_y_net_x20,
      q => register2_q_net_x36
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x40,
      en(0) => logical_y_net_x20,
      q => register3_q_net_x36
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x64,
      b => constant_op_net_x21,
      op(0) => relational_op_net_x21
  );

  shift: entity work.sysgen_shift_9e1e4534b0
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => down_sample_q_net_x31,
      op => shift_op_net_x41
  );
end structural;


-- Generated from Simulink block "tek_meas/tx4/SPI_power_Tx0/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_3d0d7fc240 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_3d0d7fc240;

architecture structural of iir_3d0d7fc240 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub1_s_net_x41: std_logic_vector(31 downto 0);
  signal register_q_net_x75: std_logic_vector(31 downto 0);
  signal shift_op_net_x42: std_logic_vector(31 downto 0);
  signal shift1_op_net_x22: std_logic_vector(31 downto 0);
  signal logical_y_net_x20: std_logic;
  signal addsub1_s_net_x40: std_logic_vector(31 downto 0);
  signal addsub_s_net_x41: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  logical_y_net_x20 <= en;
  addsub1_s_net_x40 <= x;
  y <= addsub_s_net_x41;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => shift_op_net_x42,
      b => register_q_net_x75,
      en(0) => logical_y_net_x20,
      s => addsub_s_net_x41
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => addsub_s_net_x41,
      b => shift1_op_net_x22,
      s => addsub1_s_net_x41
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub1_s_net_x41,
      en(0) => logical_y_net_x20,
      q => register_q_net_x75
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub1_s_net_x40,
      op => shift_op_net_x42
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub_s_net_x41,
      op => shift1_op_net_x22
  );
end structural;


-- Generated from Simulink block "tek_meas/tx4/SPI_power_Tx0"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity spi_power_tx0_24999b6b02 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(15 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end spi_power_tx0_24999b6b02;

architecture structural of spi_power_tx0_24999b6b02 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal constant13_op_net_x4: std_logic;
  signal constant14_op_net_x5: std_logic;
  signal down_sample_q_net_x31: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x41: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x40: std_logic_vector(31 downto 0);
  signal logical_y_net_x20: std_logic;
  signal addsub_s_net_x41: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant13_op_net_x4 <= rst_4;
  constant14_op_net_x5 <= en;
  down_sample_q_net_x31 <= inst_power;
  power <= reinterpret_output_port_net_x41;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x41,
      output_port => reinterpret_output_port_net_x41
  );

  cic: entity work.cic_060e491f37
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_2 => constant13_op_net_x4,
      en => constant14_op_net_x5,
      x => down_sample_q_net_x31,
      y => addsub1_s_net_x40,
      en_cic => logical_y_net_x20
    );

  iir: entity work.iir_3d0d7fc240
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      en => logical_y_net_x20,
      x => addsub1_s_net_x40,
      y => addsub_s_net_x41
    );
end structural;


-- Generated from Simulink block "tek_meas/tx4/SPI_power_Tx1/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_ecb8d681f1 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(15 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_ecb8d681f1;

architecture structural of cic_ecb8d681f1 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub_s_net_x42: std_logic_vector(41 downto 0);
  signal constant_op_net_x22: std_logic_vector(7 downto 0);
  signal counter_op_net_x65: std_logic_vector(7 downto 0);
  signal register_q_net_x76: std_logic_vector(41 downto 0);
  signal register1_q_net_x38: std_logic_vector(41 downto 0);
  signal register2_q_net_x37: std_logic_vector(41 downto 0);
  signal register3_q_net_x37: std_logic_vector(41 downto 0);
  signal relational_op_net_x22: std_logic;
  signal shift_op_net_x43: std_logic_vector(41 downto 0);
  signal constant16_op_net_x4: std_logic;
  signal constant17_op_net_x4: std_logic;
  signal down_sample_q_net_x32: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x42: std_logic_vector(31 downto 0);
  signal logical_y_net_x21: std_logic;

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant16_op_net_x4 <= rst_2;
  constant17_op_net_x4 <= en;
  down_sample_q_net_x32 <= x;
  y <= addsub1_s_net_x42;
  en_cic <= logical_y_net_x21;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register1_q_net_x38,
      b => shift_op_net_x43,
      s => addsub_s_net_x42
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => register3_q_net_x37,
      b => register2_q_net_x37,
      en(0) => logical_y_net_x21,
      s => addsub1_s_net_x42
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x22
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant16_op_net_x4,
      en(0) => constant17_op_net_x4,
      op => counter_op_net_x65
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant17_op_net_x4,
      d1(0) => relational_op_net_x22,
      y(0) => logical_y_net_x21
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register3_q_net_x37,
      en(0) => logical_y_net_x21,
      q => register_q_net_x76
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x42,
      en(0) => constant17_op_net_x4,
      q => register1_q_net_x38
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => register_q_net_x76,
      en(0) => logical_y_net_x21,
      q => register2_q_net_x37
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub_s_net_x42,
      en(0) => logical_y_net_x21,
      q => register3_q_net_x37
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x65,
      b => constant_op_net_x22,
      op(0) => relational_op_net_x22
  );

  shift: entity work.sysgen_shift_9e1e4534b0
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => down_sample_q_net_x32,
      op => shift_op_net_x43
  );
end structural;


-- Generated from Simulink block "tek_meas/tx4/SPI_power_Tx1/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_2312208ac7 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_2312208ac7;

architecture structural of iir_2312208ac7 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal addsub1_s_net_x43: std_logic_vector(31 downto 0);
  signal register_q_net_x77: std_logic_vector(31 downto 0);
  signal shift_op_net_x44: std_logic_vector(31 downto 0);
  signal shift1_op_net_x23: std_logic_vector(31 downto 0);
  signal logical_y_net_x21: std_logic;
  signal addsub1_s_net_x42: std_logic_vector(31 downto 0);
  signal addsub_s_net_x43: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  logical_y_net_x21 <= en;
  addsub1_s_net_x42 <= x;
  y <= addsub_s_net_x43;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => shift_op_net_x44,
      b => register_q_net_x77,
      en(0) => logical_y_net_x21,
      s => addsub_s_net_x43
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      a => addsub_s_net_x43,
      b => shift1_op_net_x23,
      s => addsub1_s_net_x43
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => addsub1_s_net_x43,
      en(0) => logical_y_net_x21,
      q => register_q_net_x77
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub1_s_net_x42,
      op => shift_op_net_x44
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip => addsub_s_net_x43,
      op => shift1_op_net_x23
  );
end structural;


-- Generated from Simulink block "tek_meas/tx4/SPI_power_Tx1"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity spi_power_tx1_e47bc6f7de is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(15 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end spi_power_tx1_e47bc6f7de;

architecture structural of spi_power_tx1_e47bc6f7de is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal constant16_op_net_x4: std_logic;
  signal constant17_op_net_x4: std_logic;
  signal down_sample_q_net_x32: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x42: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x42: std_logic_vector(31 downto 0);
  signal logical_y_net_x21: std_logic;
  signal addsub_s_net_x43: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant16_op_net_x4 <= rst_4;
  constant17_op_net_x4 <= en;
  down_sample_q_net_x32 <= inst_power;
  power <= reinterpret_output_port_net_x42;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x43,
      output_port => reinterpret_output_port_net_x42
  );

  cic: entity work.cic_ecb8d681f1
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_2 => constant16_op_net_x4,
      en => constant17_op_net_x4,
      x => down_sample_q_net_x32,
      y => addsub1_s_net_x42,
      en_cic => logical_y_net_x21
    );

  iir: entity work.iir_2312208ac7
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      en => logical_y_net_x21,
      x => addsub1_s_net_x42,
      y => addsub_s_net_x43
    );
end structural;


-- Generated from Simulink block "tek_meas/tx4"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tx4_1e6fb2a28f is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    clk_1: in std_logic;
    ce_1: in std_logic;
    tvalid: in std_logic;
    tlast: in std_logic;
    tdata: in std_logic_vector(15 downto 0);
    tvalid_rx: in std_logic;
    tlast_rx: in std_logic;
    tdata_rx: in std_logic_vector(15 downto 0);
    loopback: in std_logic_vector(1 downto 0);
    dds_tdata_x4: in std_logic_vector(15 downto 0);
    dds_tlast_x4: in std_logic;
    dds_tvalid_x4: in std_logic;
    tdata_out: out std_logic_vector(15 downto 0);
    tlast_out: out std_logic;
    tvalid_out: out std_logic;
    power0: out std_logic_vector(31 downto 0);
    power1: out std_logic_vector(31 downto 0)
  );
end tx4_1e6fb2a28f;

architecture structural of tx4_1e6fb2a28f is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal constant12_op_net_x4: std_logic;
  signal constant13_op_net_x4: std_logic;
  signal constant14_op_net_x5: std_logic;
  signal constant16_op_net_x4: std_logic;
  signal constant17_op_net_x4: std_logic;
  signal constant3_op_net_x4: std_logic;
  signal convert_dout_net_x24: std_logic_vector(17 downto 0);
  signal convert1_dout_net_x17: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x24: std_logic_vector(17 downto 0);
  signal convert3_dout_net_x11: std_logic_vector(17 downto 0);
  signal register1_q_net_x36: std_logic;
  signal register2_q_net_x35: std_logic_vector(15 downto 0);
  signal register3_q_net_x35: std_logic;
  signal tx4_in_tvalid_net: std_logic;
  signal tx4_in_tlast_net: std_logic;
  signal tx4_in_tdata_net: std_logic_vector(15 downto 0);
  signal register15_q_net: std_logic;
  signal register14_q_net: std_logic;
  signal shift5_op_net: std_logic_vector(15 downto 0);
  signal up_sample13_q_net: std_logic_vector(1 downto 0);
  signal register_q_net_x17: std_logic_vector(15 downto 0);
  signal relational_op_net: std_logic;
  signal register19_q_net: std_logic;
  signal mux_y_net_x47: std_logic_vector(15 downto 0);
  signal mux1_y_net_x3: std_logic;
  signal mux2_y_net_x3: std_logic;
  signal up_sample2_q_net_x4: std_logic_vector(31 downto 0);
  signal up_sample3_q_net_x4: std_logic_vector(31 downto 0);
  signal down_sample3_q_net_x9: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x9: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x9: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x30: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x31: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x32: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x41: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x42: std_logic_vector(31 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  tx4_in_tvalid_net <= tvalid;
  tx4_in_tlast_net <= tlast;
  tx4_in_tdata_net <= tdata;
  register15_q_net <= tvalid_rx;
  register14_q_net <= tlast_rx;
  shift5_op_net <= tdata_rx;
  up_sample13_q_net <= loopback;
  register_q_net_x17 <= dds_tdata_x4;
  relational_op_net <= dds_tlast_x4;
  register19_q_net <= dds_tvalid_x4;
  tdata_out <= mux_y_net_x47;
  tlast_out <= mux1_y_net_x3;
  tvalid_out <= mux2_y_net_x3;
  power0 <= up_sample2_q_net_x4;
  power1 <= up_sample3_q_net_x4;

  constant12: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant12_op_net_x4
  );

  constant13: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant13_op_net_x4
  );

  constant14: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant14_op_net_x5
  );

  constant16: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant16_op_net_x4
  );

  constant17: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant17_op_net_x4
  );

  constant3: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant3_op_net_x4
  );

  convert: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample3_q_net_x9,
      dout => convert_dout_net_x24
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample2_q_net_x9,
      dout => convert1_dout_net_x17
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample1_q_net_x9,
      dout => convert2_dout_net_x24
  );

  convert3: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample_q_net_x30,
      dout => convert3_dout_net_x11
  );

  mux: entity work.sysgen_mux_84e54da74c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel => up_sample13_q_net,
      d0 => register2_q_net_x35,
      d1 => shift5_op_net,
      d2 => register_q_net_x17,
      y => mux_y_net_x47
  );

  mux1: entity work.sysgen_mux_fe7927c6ad
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel => up_sample13_q_net,
      d0(0) => register3_q_net_x35,
      d1(0) => register14_q_net,
      d2(0) => relational_op_net,
      y(0) => mux1_y_net_x3
  );

  mux2: entity work.sysgen_mux_fe7927c6ad
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel => up_sample13_q_net,
      d0(0) => register1_q_net_x36,
      d1(0) => register15_q_net,
      d2(0) => register19_q_net,
      y(0) => mux2_y_net_x3
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => tx4_in_tvalid_net,
      q(0) => register1_q_net_x36
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d => tx4_in_tdata_net,
      q => register2_q_net_x35
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => tx4_in_tlast_net,
      q(0) => register3_q_net_x35
  );

  up_sample2: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x41,
      q => up_sample2_q_net_x4
  );

  up_sample3: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x42,
      q => up_sample3_q_net_x4
  );

  axis_to_parallel: entity work.axis_to_parallel_663830eb30
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      tdata => register2_q_net_x35,
      tvalid => register1_q_net_x36,
      tlast => register3_q_net_x35,
      i0 => down_sample3_q_net_x9,
      q0 => down_sample2_q_net_x9,
      i1 => down_sample1_q_net_x9,
      q1 => down_sample_q_net_x30
    );

  power: entity work.power_9e74171204
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      reset => constant12_op_net_x4,
      in_q => convert1_dout_net_x17,
      in_i => convert_dout_net_x24,
      power => down_sample_q_net_x31
    );

  power1_x0: entity work.power1_x0_f3a8a09dd7
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      reset => constant3_op_net_x4,
      in_q => convert3_dout_net_x11,
      in_i => convert2_dout_net_x24,
      power => down_sample_q_net_x32
    );

  spi_power_tx0: entity work.spi_power_tx0_24999b6b02
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_4 => constant13_op_net_x4,
      en => constant14_op_net_x5,
      inst_power => down_sample_q_net_x31,
      power => reinterpret_output_port_net_x41
    );

  spi_power_tx1: entity work.spi_power_tx1_e47bc6f7de
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_4 => constant16_op_net_x4,
      en => constant17_op_net_x4,
      inst_power => down_sample_q_net_x32,
      power => reinterpret_output_port_net_x42
    );
end structural;


-- Generated from Simulink block "tek_meas/tx5/AXIS_to_parallel"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity axis_to_parallel_f7e6c07eec is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    clk_1: in std_logic;
    ce_1: in std_logic;
    tdata: in std_logic_vector(15 downto 0);
    tvalid: in std_logic;
    tlast: in std_logic;
    i0: out std_logic_vector(15 downto 0);
    q0: out std_logic_vector(15 downto 0);
    i1: out std_logic_vector(15 downto 0);
    q1: out std_logic_vector(15 downto 0)
  );
end axis_to_parallel_f7e6c07eec;

architecture structural of axis_to_parallel_f7e6c07eec is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal delay_q_net_x14: std_logic;
  signal register_q_net_x78: std_logic_vector(15 downto 0);
  signal register1_q_net_x39: std_logic_vector(15 downto 0);
  signal register2_q_net_x38: std_logic_vector(15 downto 0);
  signal register3_q_net_x38: std_logic_vector(15 downto 0);
  signal register4_q_net_x11: std_logic_vector(15 downto 0);
  signal register5_q_net_x11: std_logic_vector(15 downto 0);
  signal register6_q_net_x11: std_logic_vector(15 downto 0);
  signal register7_q_net_x11: std_logic_vector(15 downto 0);
  signal register2_q_net_x39: std_logic_vector(15 downto 0);
  signal register1_q_net_x40: std_logic;
  signal register3_q_net_x39: std_logic;
  signal down_sample3_q_net_x10: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x10: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x10: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x33: std_logic_vector(15 downto 0);

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  register2_q_net_x39 <= tdata;
  register1_q_net_x40 <= tvalid;
  register3_q_net_x39 <= tlast;
  i0 <= down_sample3_q_net_x10;
  q0 <= down_sample2_q_net_x10;
  i1 <= down_sample1_q_net_x10;
  q1 <= down_sample_q_net_x33;

  delay: entity work.xldelay_tek_meas
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
      d(0) => register3_q_net_x39,
      q(0) => delay_q_net_x14
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register4_q_net_x11,
      q => down_sample_q_net_x33
  );

  down_sample1: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register5_q_net_x11,
      q => down_sample1_q_net_x10
  );

  down_sample2: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register6_q_net_x11,
      q => down_sample2_q_net_x10
  );

  down_sample3: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 8,
      latency => 1,
      phase => 7,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register7_q_net_x11,
      q => down_sample3_q_net_x10
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x39,
      en(0) => register1_q_net_x40,
      q => register_q_net_x78
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net_x78,
      en(0) => register1_q_net_x40,
      q => register1_q_net_x39
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net_x39,
      en(0) => register1_q_net_x40,
      q => register2_q_net_x38
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x38,
      en(0) => register1_q_net_x40,
      q => register3_q_net_x38
  );

  register4: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register_q_net_x78,
      en(0) => delay_q_net_x14,
      q => register4_q_net_x11
  );

  register5: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register1_q_net_x39,
      en(0) => delay_q_net_x14,
      q => register5_q_net_x11
  );

  register6: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register2_q_net_x38,
      en(0) => delay_q_net_x14,
      q => register6_q_net_x11
  );

  register7: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      rst => "0",
      d => register3_q_net_x38,
      en(0) => delay_q_net_x14,
      q => register7_q_net_x11
  );
end structural;


-- Generated from Simulink block "tek_meas/tx5/Power/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_c139d73f78 is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_c139d73f78;

architecture structural of tdm_c139d73f78 is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal counter_op_net_x67: std_logic;
  signal convert1_dout_net_x20: std_logic_vector(17 downto 0);
  signal convert_dout_net_x27: std_logic_vector(17 downto 0);
  signal constant12_op_net_x5: std_logic;
  signal mux_y_net_x54: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  convert1_dout_net_x20 <= in1;
  convert_dout_net_x27 <= in0;
  constant12_op_net_x5 <= rst;
  out_x0 <= mux_y_net_x54;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant12_op_net_x5,
      op(0) => counter_op_net_x67
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x67,
      d0 => convert_dout_net_x27,
      d1 => convert1_dout_net_x20,
      y => mux_y_net_x54
  );
end structural;


-- Generated from Simulink block "tek_meas/tx5/Power"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power_c06ff391c1 is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    clk_4: in std_logic;
    ce_4: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(15 downto 0)
  );
end power_c06ff391c1;

architecture structural of power_c06ff391c1 is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal convert_dout_net_x28: std_logic;
  signal convert1_dout_net_x21: std_logic_vector(15 downto 0);
  signal convert2_dout_net_x28: std_logic_vector(29 downto 0);
  signal counter_op_net_x66: std_logic;
  signal dsp48e1_p_net_x21: std_logic_vector(47 downto 0);
  signal inverter_op_net_x22: std_logic;
  signal mux_y_net_x53: std_logic_vector(19 downto 0);
  signal opmode_op_net_x21: std_logic_vector(19 downto 0);
  signal opmode1_op_net_x21: std_logic_vector(19 downto 0);
  signal register_q_net_x79: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net_x43: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net_x21: std_logic_vector(47 downto 0);
  signal constant12_op_net_x5: std_logic;
  signal convert1_dout_net_x20: std_logic_vector(17 downto 0);
  signal convert_dout_net_x27: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x34: std_logic_vector(15 downto 0);
  signal mux_y_net_x54: std_logic_vector(17 downto 0);

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant12_op_net_x5 <= reset;
  convert1_dout_net_x20 <= in_q;
  convert_dout_net_x27 <= in_i;
  power <= down_sample_q_net_x34;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net_x22,
      dout(0) => convert_dout_net_x28
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 15,
      dout_width => 16,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => register_q_net_x79,
      dout => convert1_dout_net_x21
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net_x43,
      dout => convert2_dout_net_x28
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant12_op_net_x5,
      op(0) => counter_op_net_x66
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x28,
      b => reinterpret_output_port_net_x43,
      c => dsp48e1_p_net_x21,
      op => mux_y_net_x53,
      p => dsp48e1_p_net_x21
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert1_dout_net_x21,
      q => down_sample_q_net_x34
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip(0) => counter_op_net_x66,
      op(0) => inverter_op_net_x22
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x66,
      d0 => opmode_op_net_x21,
      d1 => opmode1_op_net_x21,
      y => mux_y_net_x53
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net_x21
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net_x21
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => reinterpret1_output_port_net_x21,
      en(0) => convert_dout_net_x28,
      q => register_q_net_x79
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x54,
      output_port => reinterpret_output_port_net_x43
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net_x21,
      output_port => reinterpret1_output_port_net_x21
  );

  tdm: entity work.tdm_c139d73f78
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      in1 => convert1_dout_net_x20,
      in0 => convert_dout_net_x27,
      rst => constant12_op_net_x5,
      out_x0 => mux_y_net_x54
    );
end structural;


-- Generated from Simulink block "tek_meas/tx5/Power1/TDM"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tdm_3671d93ffb is
  port (
    clk_4: in std_logic;
    ce_4: in std_logic;
    in1: in std_logic_vector(17 downto 0);
    in0: in std_logic_vector(17 downto 0);
    rst: in std_logic;
    out_x0: out std_logic_vector(17 downto 0)
  );
end tdm_3671d93ffb;

architecture structural of tdm_3671d93ffb is
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal counter_op_net_x69: std_logic;
  signal convert3_dout_net_x12: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x27: std_logic_vector(17 downto 0);
  signal constant3_op_net_x5: std_logic;
  signal mux_y_net_x56: std_logic_vector(17 downto 0);

begin
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  convert3_dout_net_x12 <= in1;
  convert2_dout_net_x27 <= in0;
  constant3_op_net_x5 <= rst;
  out_x0 <= mux_y_net_x56;

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant3_op_net_x5,
      op(0) => counter_op_net_x69
  );

  mux: entity work.sysgen_mux_206663c522
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x69,
      d0 => convert2_dout_net_x27,
      d1 => convert3_dout_net_x12,
      y => mux_y_net_x56
  );
end structural;


-- Generated from Simulink block "tek_meas/tx5/Power1"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity power1_x0_2e286e36f8 is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    clk_4: in std_logic;
    ce_4: in std_logic;
    reset: in std_logic;
    in_q: in std_logic_vector(17 downto 0);
    in_i: in std_logic_vector(17 downto 0);
    power: out std_logic_vector(15 downto 0)
  );
end power1_x0_2e286e36f8;

architecture structural of power1_x0_2e286e36f8 is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal convert_dout_net_x29: std_logic;
  signal convert1_dout_net_x22: std_logic_vector(15 downto 0);
  signal convert2_dout_net_x29: std_logic_vector(29 downto 0);
  signal counter_op_net_x68: std_logic;
  signal dsp48e1_p_net_x22: std_logic_vector(47 downto 0);
  signal inverter_op_net_x23: std_logic;
  signal mux_y_net_x55: std_logic_vector(19 downto 0);
  signal opmode_op_net_x22: std_logic_vector(19 downto 0);
  signal opmode1_op_net_x22: std_logic_vector(19 downto 0);
  signal register_q_net_x80: std_logic_vector(47 downto 0);
  signal reinterpret_output_port_net_x44: std_logic_vector(17 downto 0);
  signal reinterpret1_output_port_net_x22: std_logic_vector(47 downto 0);
  signal constant3_op_net_x5: std_logic;
  signal convert3_dout_net_x12: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x27: std_logic_vector(17 downto 0);
  signal down_sample_q_net_x35: std_logic_vector(15 downto 0);
  signal mux_y_net_x56: std_logic_vector(17 downto 0);

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  constant3_op_net_x5 <= reset;
  convert3_dout_net_x12 <= in_q;
  convert2_dout_net_x27 <= in_i;
  power <= down_sample_q_net_x35;

  convert: entity work.xlconvert_tek_meas
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
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din(0) => inverter_op_net_x23,
      dout(0) => convert_dout_net_x29
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 34,
      din_width => 48,
      dout_arith => 1,
      dout_bin_pt => 15,
      dout_width => 16,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRound)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => register_q_net_x80,
      dout => convert1_dout_net_x22
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 30,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => reinterpret_output_port_net_x44,
      dout => convert2_dout_net_x29
  );

  counter: entity work.sysgen_counter_c0636a85d7
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      rst(0) => constant3_op_net_x5,
      op(0) => counter_op_net_x68
  );

  dsp48e1: entity work.xldsp48e1_tek_meas
    generic map (
      a_input => "DIRECT",
      acascreg => 2,
      adreg => 0,
      alumodereg => 1,
      areg => 2,
      autoreset_pattern_detect => "NO_RESET",
      b_input => "DIRECT",
      bcascreg => 2,
      breg => 2,
      carryinreg => 1,
      carryinselreg => 1,
      carryout_width => 4,
      creg => 1,
      dreg => 0,
      inmodereg => 0,
      mreg => 1,
      opmodereg => 1,
      preg => 0,
      sel_mask => "C",
      sel_pattern => "C",
      use_c_port => 1,
      use_dport => false,
      use_mult => "MULTIPLY",
      use_op => 1,
      use_pattern_detect => "NO_PATDET",
      use_simd => "ONE48")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      carryin => "0",
      en => "1",
      cea1 => "1",
      cea2 => "1",
      ceb1 => "1",
      ceb2 => "1",
      cec => "1",
      cem => "1",
      cealumode => "1",
      cemultcarryin => "1",
      cectrl => "1",
      cecarryin => "1",
      cep => "1",
      ced => "1",
      cead => "1",
      ceinmode => "1",
      alumode => "0000",
      rst => "0",
      rsta => "0",
      rstb => "0",
      rstc => "0",
      rstm => "0",
      rstctrl => "0",
      rstcarryin => "0",
      rstalumode => "0",
      rstp => "0",
      rstd => "0",
      rstinmode => "0",
      a => convert2_dout_net_x29,
      b => reinterpret_output_port_net_x44,
      c => dsp48e1_p_net_x22,
      op => mux_y_net_x55,
      p => dsp48e1_p_net_x22
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 15,
      d_width => 16,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 15,
      q_width => 16)
    port map (
      dest_ce => ce_8_net,
      dest_clk => clk_8_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => convert1_dout_net_x22,
      q => down_sample_q_net_x35
  );

  inverter: entity work.sysgen_inverter_40cf11e3e5
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      ip(0) => counter_op_net_x68,
      op(0) => inverter_op_net_x23
  );

  mux: entity work.sysgen_mux_8c4ebc5229
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel(0) => counter_op_net_x68,
      d0 => opmode_op_net_x22,
      d1 => opmode1_op_net_x22,
      y => mux_y_net_x55
  );

  opmode: entity work.sysgen_opmode_07e105087c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode_op_net_x22
  );

  opmode1: entity work.sysgen_opmode_b05f590ddf
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => opmode1_op_net_x22
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000")
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      rst => "0",
      d => reinterpret1_output_port_net_x22,
      en(0) => convert_dout_net_x29,
      q => register_q_net_x80
  );

  reinterpret: entity work.sysgen_reinterpret_22ae6c26e6
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => mux_y_net_x56,
      output_port => reinterpret_output_port_net_x44
  );

  reinterpret1: entity work.sysgen_reinterpret_d501732ce1
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => dsp48e1_p_net_x22,
      output_port => reinterpret1_output_port_net_x22
  );

  tdm: entity work.tdm_3671d93ffb
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      in1 => convert3_dout_net_x12,
      in0 => convert2_dout_net_x27,
      rst => constant3_op_net_x5,
      out_x0 => mux_y_net_x56
    );
end structural;


-- Generated from Simulink block "tek_meas/tx5/SPI_power_Tx0/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_b14cfbbcc7 is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(15 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_b14cfbbcc7;

architecture structural of cic_b14cfbbcc7 is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal addsub_s_net_x44: std_logic_vector(41 downto 0);
  signal constant_op_net_x23: std_logic_vector(7 downto 0);
  signal counter_op_net_x70: std_logic_vector(7 downto 0);
  signal register_q_net_x81: std_logic_vector(41 downto 0);
  signal register1_q_net_x41: std_logic_vector(41 downto 0);
  signal register2_q_net_x40: std_logic_vector(41 downto 0);
  signal register3_q_net_x40: std_logic_vector(41 downto 0);
  signal relational_op_net_x23: std_logic;
  signal shift_op_net_x45: std_logic_vector(41 downto 0);
  signal constant13_op_net_x5: std_logic;
  signal constant14_op_net_x6: std_logic;
  signal down_sample_q_net_x34: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x44: std_logic_vector(31 downto 0);
  signal logical_y_net_x22: std_logic;

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  constant13_op_net_x5 <= rst_2;
  constant14_op_net_x6 <= en;
  down_sample_q_net_x34 <= x;
  y <= addsub1_s_net_x44;
  en_cic <= logical_y_net_x22;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      a => register1_q_net_x41,
      b => shift_op_net_x45,
      s => addsub_s_net_x44
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      a => register3_q_net_x40,
      b => register2_q_net_x40,
      en(0) => logical_y_net_x22,
      s => addsub1_s_net_x44
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x23
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      rst(0) => constant13_op_net_x5,
      en(0) => constant14_op_net_x6,
      op => counter_op_net_x70
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant14_op_net_x6,
      d1(0) => relational_op_net_x23,
      y(0) => logical_y_net_x22
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      rst => "0",
      d => register3_q_net_x40,
      en(0) => logical_y_net_x22,
      q => register_q_net_x81
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      rst => "0",
      d => addsub_s_net_x44,
      en(0) => constant14_op_net_x6,
      q => register1_q_net_x41
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      rst => "0",
      d => register_q_net_x81,
      en(0) => logical_y_net_x22,
      q => register2_q_net_x40
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      rst => "0",
      d => addsub_s_net_x44,
      en(0) => logical_y_net_x22,
      q => register3_q_net_x40
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x70,
      b => constant_op_net_x23,
      op(0) => relational_op_net_x23
  );

  shift: entity work.sysgen_shift_9e1e4534b0
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      ip => down_sample_q_net_x34,
      op => shift_op_net_x45
  );
end structural;


-- Generated from Simulink block "tek_meas/tx5/SPI_power_Tx0/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_31814a9781 is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_31814a9781;

architecture structural of iir_31814a9781 is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal addsub1_s_net_x45: std_logic_vector(31 downto 0);
  signal register_q_net_x82: std_logic_vector(31 downto 0);
  signal shift_op_net_x46: std_logic_vector(31 downto 0);
  signal shift1_op_net_x24: std_logic_vector(31 downto 0);
  signal logical_y_net_x22: std_logic;
  signal addsub1_s_net_x44: std_logic_vector(31 downto 0);
  signal addsub_s_net_x45: std_logic_vector(31 downto 0);

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  logical_y_net_x22 <= en;
  addsub1_s_net_x44 <= x;
  y <= addsub_s_net_x45;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      a => shift_op_net_x46,
      b => register_q_net_x82,
      en(0) => logical_y_net_x22,
      s => addsub_s_net_x45
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      a => addsub_s_net_x45,
      b => shift1_op_net_x24,
      s => addsub1_s_net_x45
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      rst => "0",
      d => addsub1_s_net_x45,
      en(0) => logical_y_net_x22,
      q => register_q_net_x82
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      ip => addsub1_s_net_x44,
      op => shift_op_net_x46
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      ip => addsub_s_net_x45,
      op => shift1_op_net_x24
  );
end structural;


-- Generated from Simulink block "tek_meas/tx5/SPI_power_Tx0"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity spi_power_tx0_d37015cb17 is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(15 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end spi_power_tx0_d37015cb17;

architecture structural of spi_power_tx0_d37015cb17 is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal constant13_op_net_x5: std_logic;
  signal constant14_op_net_x6: std_logic;
  signal down_sample_q_net_x34: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x45: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x44: std_logic_vector(31 downto 0);
  signal logical_y_net_x22: std_logic;
  signal addsub_s_net_x45: std_logic_vector(31 downto 0);

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  constant13_op_net_x5 <= rst_4;
  constant14_op_net_x6 <= en;
  down_sample_q_net_x34 <= inst_power;
  power <= reinterpret_output_port_net_x45;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x45,
      output_port => reinterpret_output_port_net_x45
  );

  cic: entity work.cic_b14cfbbcc7
    port map (
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      rst_2 => constant13_op_net_x5,
      en => constant14_op_net_x6,
      x => down_sample_q_net_x34,
      y => addsub1_s_net_x44,
      en_cic => logical_y_net_x22
    );

  iir: entity work.iir_31814a9781
    port map (
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      en => logical_y_net_x22,
      x => addsub1_s_net_x44,
      y => addsub_s_net_x45
    );
end structural;


-- Generated from Simulink block "tek_meas/tx5/SPI_power_Tx1/CIC"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity cic_de520f2f17 is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    rst_2: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(15 downto 0);
    y: out std_logic_vector(31 downto 0);
    en_cic: out std_logic
  );
end cic_de520f2f17;

architecture structural of cic_de520f2f17 is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal addsub_s_net_x46: std_logic_vector(41 downto 0);
  signal constant_op_net_x24: std_logic_vector(7 downto 0);
  signal counter_op_net_x71: std_logic_vector(7 downto 0);
  signal register_q_net_x83: std_logic_vector(41 downto 0);
  signal register1_q_net_x42: std_logic_vector(41 downto 0);
  signal register2_q_net_x41: std_logic_vector(41 downto 0);
  signal register3_q_net_x41: std_logic_vector(41 downto 0);
  signal relational_op_net_x24: std_logic;
  signal shift_op_net_x47: std_logic_vector(41 downto 0);
  signal constant16_op_net_x5: std_logic;
  signal constant17_op_net_x5: std_logic;
  signal down_sample_q_net_x35: std_logic_vector(15 downto 0);
  signal addsub1_s_net_x46: std_logic_vector(31 downto 0);
  signal logical_y_net_x23: std_logic;

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  constant16_op_net_x5 <= rst_2;
  constant17_op_net_x5 <= en;
  down_sample_q_net_x35 <= x;
  y <= addsub1_s_net_x46;
  en_cic <= logical_y_net_x23;

  addsub: entity work.sysgen_addsub_0d8749cbcd
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      a => register1_q_net_x42,
      b => shift_op_net_x47,
      s => addsub_s_net_x46
  );

  addsub1: entity work.sysgen_addsub_fd4d46fe7e
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      a => register3_q_net_x41,
      b => register2_q_net_x41,
      en(0) => logical_y_net_x23,
      s => addsub1_s_net_x46
  );

  constant_x0: entity work.sysgen_constant_5cf7f55967
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net_x24
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_1",
      op_arith => xlUnsigned,
      op_width => 8)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      rst(0) => constant16_op_net_x5,
      en(0) => constant17_op_net_x5,
      op => counter_op_net_x71
  );

  logical: entity work.sysgen_logical_dec03da1bc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => constant17_op_net_x5,
      d1(0) => relational_op_net_x24,
      y(0) => logical_y_net_x23
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      rst => "0",
      d => register3_q_net_x41,
      en(0) => logical_y_net_x23,
      q => register_q_net_x83
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      rst => "0",
      d => addsub_s_net_x46,
      en(0) => constant17_op_net_x5,
      q => register1_q_net_x42
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      rst => "0",
      d => register_q_net_x83,
      en(0) => logical_y_net_x23,
      q => register2_q_net_x41
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 42,
      init_value => b"000000000000000000000000000000000000000000")
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      rst => "0",
      d => addsub_s_net_x46,
      en(0) => logical_y_net_x23,
      q => register3_q_net_x41
  );

  relational: entity work.sysgen_relational_39f4f4733e
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      a => counter_op_net_x71,
      b => constant_op_net_x24,
      op(0) => relational_op_net_x24
  );

  shift: entity work.sysgen_shift_9e1e4534b0
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      ip => down_sample_q_net_x35,
      op => shift_op_net_x47
  );
end structural;


-- Generated from Simulink block "tek_meas/tx5/SPI_power_Tx1/IIR"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity iir_0a3d1c9807 is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    en: in std_logic;
    x: in std_logic_vector(31 downto 0);
    y: out std_logic_vector(31 downto 0)
  );
end iir_0a3d1c9807;

architecture structural of iir_0a3d1c9807 is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal addsub1_s_net_x47: std_logic_vector(31 downto 0);
  signal register_q_net_x84: std_logic_vector(31 downto 0);
  signal shift_op_net_x48: std_logic_vector(31 downto 0);
  signal shift1_op_net_x25: std_logic_vector(31 downto 0);
  signal logical_y_net_x23: std_logic;
  signal addsub1_s_net_x46: std_logic_vector(31 downto 0);
  signal addsub_s_net_x47: std_logic_vector(31 downto 0);

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  logical_y_net_x23 <= en;
  addsub1_s_net_x46 <= x;
  y <= addsub_s_net_x47;

  addsub: entity work.sysgen_addsub_17211b0227
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      a => shift_op_net_x48,
      b => register_q_net_x84,
      en(0) => logical_y_net_x23,
      s => addsub_s_net_x47
  );

  addsub1: entity work.sysgen_addsub_85cb167695
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      a => addsub_s_net_x47,
      b => shift1_op_net_x25,
      s => addsub1_s_net_x47
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000")
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      rst => "0",
      d => addsub1_s_net_x47,
      en(0) => logical_y_net_x23,
      q => register_q_net_x84
  );

  shift: entity work.sysgen_shift_6727e892de
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      ip => addsub1_s_net_x46,
      op => shift_op_net_x48
  );

  shift1: entity work.sysgen_shift_82e968a2da
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      ip => addsub_s_net_x47,
      op => shift1_op_net_x25
  );
end structural;


-- Generated from Simulink block "tek_meas/tx5/SPI_power_Tx1"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity spi_power_tx1_511ed30251 is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    rst_4: in std_logic;
    en: in std_logic;
    inst_power: in std_logic_vector(15 downto 0);
    power: out std_logic_vector(31 downto 0)
  );
end spi_power_tx1_511ed30251;

architecture structural of spi_power_tx1_511ed30251 is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal constant16_op_net_x5: std_logic;
  signal constant17_op_net_x5: std_logic;
  signal down_sample_q_net_x35: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x46: std_logic_vector(31 downto 0);
  signal addsub1_s_net_x46: std_logic_vector(31 downto 0);
  signal logical_y_net_x23: std_logic;
  signal addsub_s_net_x47: std_logic_vector(31 downto 0);

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  constant16_op_net_x5 <= rst_4;
  constant17_op_net_x5 <= en;
  down_sample_q_net_x35 <= inst_power;
  power <= reinterpret_output_port_net_x46;

  reinterpret: entity work.sysgen_reinterpret_be89a14512
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      input_port => addsub_s_net_x47,
      output_port => reinterpret_output_port_net_x46
  );

  cic: entity work.cic_de520f2f17
    port map (
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      rst_2 => constant16_op_net_x5,
      en => constant17_op_net_x5,
      x => down_sample_q_net_x35,
      y => addsub1_s_net_x46,
      en_cic => logical_y_net_x23
    );

  iir: entity work.iir_0a3d1c9807
    port map (
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      en => logical_y_net_x23,
      x => addsub1_s_net_x46,
      y => addsub_s_net_x47
    );
end structural;


-- Generated from Simulink block "tek_meas/tx5"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tx5_75e96f1a3c is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    clk_1: in std_logic;
    ce_1: in std_logic;
    tvalid: in std_logic;
    tlast: in std_logic;
    tdata: in std_logic_vector(15 downto 0);
    tvalid_rx: in std_logic;
    tlast_rx: in std_logic;
    tdata_rx: in std_logic_vector(15 downto 0);
    power0: out std_logic_vector(31 downto 0);
    power1: out std_logic_vector(31 downto 0)
  );
end tx5_75e96f1a3c;

architecture structural of tx5_75e96f1a3c is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal constant12_op_net_x5: std_logic;
  signal constant13_op_net_x5: std_logic;
  signal constant14_op_net_x6: std_logic;
  signal constant16_op_net_x5: std_logic;
  signal constant17_op_net_x5: std_logic;
  signal constant3_op_net_x5: std_logic;
  signal convert_dout_net_x27: std_logic_vector(17 downto 0);
  signal convert1_dout_net_x20: std_logic_vector(17 downto 0);
  signal convert2_dout_net_x27: std_logic_vector(17 downto 0);
  signal convert3_dout_net_x12: std_logic_vector(17 downto 0);
  signal register1_q_net_x40: std_logic;
  signal register2_q_net_x39: std_logic_vector(15 downto 0);
  signal register3_q_net_x39: std_logic;
  signal tx_cpri_in_tvalid_net: std_logic;
  signal tx_cpri_in_tlast_net: std_logic;
  signal tx_cpri_in_tdata_net: std_logic_vector(15 downto 0);
  signal register18_q_net: std_logic;
  signal register17_q_net: std_logic;
  signal shift6_op_net: std_logic_vector(15 downto 0);
  signal up_sample2_q_net_x5: std_logic_vector(31 downto 0);
  signal up_sample3_q_net_x5: std_logic_vector(31 downto 0);
  signal down_sample3_q_net_x10: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x10: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x10: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x33: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x34: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x35: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x45: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x46: std_logic_vector(31 downto 0);

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  tx_cpri_in_tvalid_net <= tvalid;
  tx_cpri_in_tlast_net <= tlast;
  tx_cpri_in_tdata_net <= tdata;
  register18_q_net <= tvalid_rx;
  register17_q_net <= tlast_rx;
  shift6_op_net <= tdata_rx;
  power0 <= up_sample2_q_net_x5;
  power1 <= up_sample3_q_net_x5;

  constant12: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant12_op_net_x5
  );

  constant13: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant13_op_net_x5
  );

  constant14: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant14_op_net_x6
  );

  constant16: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant16_op_net_x5
  );

  constant17: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant17_op_net_x5
  );

  constant3: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant3_op_net_x5
  );

  convert: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample3_q_net_x10,
      dout => convert_dout_net_x27
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample2_q_net_x10,
      dout => convert1_dout_net_x20
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample1_q_net_x10,
      dout => convert2_dout_net_x27
  );

  convert3: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample_q_net_x33,
      dout => convert3_dout_net_x12
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => tx_cpri_in_tvalid_net,
      q(0) => register1_q_net_x40
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d => tx_cpri_in_tdata_net,
      q => register2_q_net_x39
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => tx_cpri_in_tlast_net,
      q(0) => register3_q_net_x39
  );

  up_sample2: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_8_net,
      src_clk => clk_8_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x45,
      q => up_sample2_q_net_x5
  );

  up_sample3: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_8_net,
      src_clk => clk_8_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x46,
      q => up_sample3_q_net_x5
  );

  axis_to_parallel: entity work.axis_to_parallel_f7e6c07eec
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      tdata => register2_q_net_x39,
      tvalid => register1_q_net_x40,
      tlast => register3_q_net_x39,
      i0 => down_sample3_q_net_x10,
      q0 => down_sample2_q_net_x10,
      i1 => down_sample1_q_net_x10,
      q1 => down_sample_q_net_x33
    );

  power: entity work.power_c06ff391c1
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      reset => constant12_op_net_x5,
      in_q => convert1_dout_net_x20,
      in_i => convert_dout_net_x27,
      power => down_sample_q_net_x34
    );

  power1_x0: entity work.power1_x0_2e286e36f8
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      reset => constant3_op_net_x5,
      in_q => convert3_dout_net_x12,
      in_i => convert2_dout_net_x27,
      power => down_sample_q_net_x35
    );

  spi_power_tx0: entity work.spi_power_tx0_d37015cb17
    port map (
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      rst_4 => constant13_op_net_x5,
      en => constant14_op_net_x6,
      inst_power => down_sample_q_net_x34,
      power => reinterpret_output_port_net_x45
    );

  spi_power_tx1: entity work.spi_power_tx1_511ed30251
    port map (
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      rst_4 => constant16_op_net_x5,
      en => constant17_op_net_x5,
      inst_power => down_sample_q_net_x35,
      power => reinterpret_output_port_net_x46
    );
end structural;


-- Generated from Simulink block "tek_meas/tek_meas_struct"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tek_meas_struct is
  port (
    clk_8: in std_logic;
    ce_8: in std_logic;
    clk_4: in std_logic;
    ce_4: in std_logic;
    clk_2: in std_logic;
    ce_2: in std_logic;
    clk_1: in std_logic;
    ce_1: in std_logic;
    tx_cpri_in_tvalid: in std_logic;
    tx_cpri_in_tlast: in std_logic;
    tx_cpri_in_tdata: in std_logic_vector(15 downto 0);
    tx4_in_tvalid: in std_logic;
    tx4_in_tlast: in std_logic;
    tx4_in_tdata: in std_logic_vector(15 downto 0);
    tx3_in_tvalid: in std_logic;
    tx3_in_tlast: in std_logic;
    tx3_in_tdata: in std_logic_vector(15 downto 0);
    tx2_in_tvalid: in std_logic;
    tx2_in_tlast: in std_logic;
    tx2_in_tdata: in std_logic_vector(15 downto 0);
    tx1_in_tvalid: in std_logic;
    tx1_in_tlast: in std_logic;
    tx1_in_tdata: in std_logic_vector(15 downto 0);
    tx0_in_tvalid: in std_logic;
    tx0_in_tlast: in std_logic;
    tx0_in_tdata: in std_logic_vector(15 downto 0);
    s_axi_lite_wvalid: in std_logic;
    s_axi_lite_wdata: in std_logic_vector(31 downto 0);
    s_axi_lite_rready: in std_logic;
    s_axi_lite_bready: in std_logic;
    s_axi_lite_awvalid: in std_logic;
    s_axi_lite_awaddr: in std_logic_vector(7 downto 0);
    s_axi_lite_arvalid: in std_logic;
    s_axi_lite_aresetn: in std_logic;
    s_axi_lite_araddr: in std_logic_vector(7 downto 0);
    rx_cpri_tvalid: in std_logic;
    rx_cpri_tlast: in std_logic;
    rx_cpri_tdata: in std_logic_vector(15 downto 0);
    rx4_tvalid: in std_logic;
    rx4_tlast: in std_logic;
    rx4_tdata: in std_logic_vector(15 downto 0);
    rx3_tvalid: in std_logic;
    rx3_tlast: in std_logic;
    rx3_tdata: in std_logic_vector(15 downto 0);
    rx2_tvalid: in std_logic;
    rx2_tlast: in std_logic;
    rx2_tdata: in std_logic_vector(15 downto 0);
    rx1_tvalid: in std_logic;
    rx1_tlast: in std_logic;
    rx1_tdata: in std_logic_vector(15 downto 0);
    rx0_tvalid: in std_logic;
    rx0_tlast: in std_logic;
    rx0_tdata: in std_logic_vector(15 downto 0);
    s_axi_lite_arready: out std_logic;
    s_axi_lite_awready: out std_logic;
    s_axi_lite_bresp: out std_logic_vector(1 downto 0);
    s_axi_lite_bvalid: out std_logic;
    s_axi_lite_rdata: out std_logic_vector(31 downto 0);
    s_axi_lite_rvalid: out std_logic;
    s_axi_lite_wready: out std_logic;
    tx0_out_tdata: out std_logic_vector(15 downto 0);
    tx0_out_tlast: out std_logic;
    tx0_out_tvalid: out std_logic;
    tx1_out_tdata: out std_logic_vector(15 downto 0);
    tx1_out_tlast: out std_logic;
    tx1_out_tvalid: out std_logic;
    tx2_out_tdata: out std_logic_vector(15 downto 0);
    tx2_out_tlast: out std_logic;
    tx2_out_tvalid: out std_logic;
    tx3_out_tdata: out std_logic_vector(15 downto 0);
    tx3_out_tlast: out std_logic;
    tx3_out_tvalid: out std_logic;
    tx4_out_tdata: out std_logic_vector(15 downto 0);
    tx4_out_tlast: out std_logic;
    tx4_out_tvalid: out std_logic
  );
end tek_meas_struct;

architecture structural of tek_meas_struct is
  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal constant_op_net: std_logic;
  signal constant1_op_net: std_logic;
  signal constant11_op_net: std_logic;
  signal constant12_op_net: std_logic;
  signal constant13_op_net: std_logic;
  signal constant14_op_net: std_logic;
  signal constant15_op_net: std_logic;
  signal constant16_op_net: std_logic;
  signal constant17_op_net: std_logic;
  signal constant18_op_net: std_logic;
  signal constant19_op_net: std_logic;
  signal constant2_op_net: std_logic;
  signal constant20_op_net: std_logic;
  signal constant21_op_net: std_logic;
  signal constant22_op_net: std_logic;
  signal constant23_op_net: std_logic;
  signal constant24_op_net: std_logic;
  signal constant25_op_net: std_logic;
  signal constant26_op_net: std_logic;
  signal constant27_op_net: std_logic;
  signal constant28_op_net: std_logic;
  signal constant29_op_net: std_logic;
  signal constant3_op_net: std_logic;
  signal constant30_op_net: std_logic;
  signal constant31_op_net: std_logic;
  signal constant32_op_net: std_logic;
  signal constant33_op_net: std_logic;
  signal constant34_op_net: std_logic;
  signal constant35_op_net: std_logic;
  signal constant36_op_net: std_logic;
  signal constant37_op_net: std_logic;
  signal constant38_op_net: std_logic;
  signal constant39_op_net: std_logic;
  signal constant40_op_net: std_logic;
  signal constant41_op_net: std_logic_vector(1 downto 0);
  signal constant42_op_net: std_logic;
  signal constant6_op_net: std_logic;
  signal constant7_op_net: std_logic;
  signal convert_dout_net: std_logic_vector(17 downto 0);
  signal convert1_dout_net: std_logic_vector(17 downto 0);
  signal convert10_dout_net: std_logic_vector(17 downto 0);
  signal convert11_dout_net: std_logic_vector(17 downto 0);
  signal convert12_dout_net: std_logic_vector(17 downto 0);
  signal convert13_dout_net: std_logic_vector(17 downto 0);
  signal convert14_dout_net: std_logic_vector(17 downto 0);
  signal convert15_dout_net: std_logic_vector(17 downto 0);
  signal convert16_dout_net: std_logic_vector(17 downto 0);
  signal convert17_dout_net: std_logic_vector(17 downto 0);
  signal convert18_dout_net: std_logic_vector(17 downto 0);
  signal convert19_dout_net: std_logic_vector(17 downto 0);
  signal convert2_dout_net: std_logic_vector(17 downto 0);
  signal convert20_dout_net: std_logic_vector(17 downto 0);
  signal convert21_dout_net: std_logic_vector(17 downto 0);
  signal convert22_dout_net: std_logic_vector(17 downto 0);
  signal convert23_dout_net: std_logic_vector(17 downto 0);
  signal convert3_dout_net: std_logic_vector(17 downto 0);
  signal convert4_dout_net: std_logic_vector(17 downto 0);
  signal convert5_dout_net: std_logic_vector(17 downto 0);
  signal convert6_dout_net: std_logic_vector(17 downto 0);
  signal convert7_dout_net: std_logic_vector(17 downto 0);
  signal convert8_dout_net: std_logic_vector(17 downto 0);
  signal convert9_dout_net: std_logic_vector(17 downto 0);
  signal counter_op_net: std_logic_vector(1 downto 0);
  signal down_sample_q_net_x5: std_logic_vector(31 downto 0);
  signal down_sample6_q_net: std_logic_vector(13 downto 0);
  signal down_sample7_q_net: std_logic_vector(1 downto 0);
  signal mux_y_net_x1: std_logic_vector(15 downto 0);
  signal register_q_net_x17: std_logic_vector(15 downto 0);
  signal register1_q_net_x5: std_logic;
  signal register10_q_net: std_logic;
  signal register11_q_net: std_logic_vector(15 downto 0);
  signal register12_q_net: std_logic;
  signal register13_q_net: std_logic_vector(15 downto 0);
  signal register14_q_net: std_logic;
  signal register15_q_net: std_logic;
  signal register16_q_net: std_logic_vector(15 downto 0);
  signal register17_q_net: std_logic;
  signal register18_q_net: std_logic;
  signal register19_q_net: std_logic;
  signal register2_q_net_x5: std_logic_vector(15 downto 0);
  signal register3_q_net_x5: std_logic;
  signal register4_q_net_x5: std_logic;
  signal register5_q_net_x5: std_logic_vector(15 downto 0);
  signal register6_q_net_x5: std_logic;
  signal register7_q_net_x5: std_logic;
  signal register8_q_net: std_logic_vector(15 downto 0);
  signal register9_q_net: std_logic;
  signal relational_op_net: std_logic;
  signal shift1_op_net_x11: std_logic_vector(15 downto 0);
  signal shift2_op_net_x1: std_logic_vector(15 downto 0);
  signal shift3_op_net: std_logic_vector(15 downto 0);
  signal shift4_op_net: std_logic_vector(15 downto 0);
  signal shift5_op_net: std_logic_vector(15 downto 0);
  signal shift6_op_net: std_logic_vector(15 downto 0);
  signal slice_y_net: std_logic_vector(1 downto 0);
  signal slice1_y_net: std_logic_vector(1 downto 0);
  signal slice2_y_net: std_logic_vector(1 downto 0);
  signal slice3_y_net: std_logic_vector(1 downto 0);
  signal slice4_y_net: std_logic_vector(1 downto 0);
  signal slice6_y_net: std_logic_vector(13 downto 0);
  signal slice7_y_net: std_logic_vector(1 downto 0);
  signal up_sample_q_net: std_logic_vector(31 downto 0);
  signal up_sample1_q_net: std_logic_vector(31 downto 0);
  signal up_sample10_q_net: std_logic_vector(31 downto 0);
  signal up_sample11_q_net: std_logic_vector(1 downto 0);
  signal up_sample12_q_net: std_logic_vector(31 downto 0);
  signal up_sample13_q_net: std_logic_vector(1 downto 0);
  signal up_sample14_q_net: std_logic_vector(31 downto 0);
  signal up_sample15_q_net: std_logic_vector(31 downto 0);
  signal up_sample16_q_net: std_logic_vector(31 downto 0);
  signal up_sample2_q_net: std_logic_vector(1 downto 0);
  signal up_sample3_q_net: std_logic_vector(31 downto 0);
  signal up_sample4_q_net: std_logic_vector(31 downto 0);
  signal up_sample5_q_net: std_logic_vector(1 downto 0);
  signal up_sample6_q_net: std_logic_vector(31 downto 0);
  signal up_sample7_q_net: std_logic_vector(31 downto 0);
  signal up_sample8_q_net: std_logic_vector(1 downto 0);
  signal up_sample9_q_net: std_logic_vector(31 downto 0);
  signal tx_cpri_in_tvalid_net: std_logic;
  signal tx_cpri_in_tlast_net: std_logic;
  signal tx_cpri_in_tdata_net: std_logic_vector(15 downto 0);
  signal tx4_in_tvalid_net: std_logic;
  signal tx4_in_tlast_net: std_logic;
  signal tx4_in_tdata_net: std_logic_vector(15 downto 0);
  signal tx3_in_tvalid_net: std_logic;
  signal tx3_in_tlast_net: std_logic;
  signal tx3_in_tdata_net: std_logic_vector(15 downto 0);
  signal tx2_in_tvalid_net: std_logic;
  signal tx2_in_tlast_net: std_logic;
  signal tx2_in_tdata_net: std_logic_vector(15 downto 0);
  signal tx1_in_tvalid_net: std_logic;
  signal tx1_in_tlast_net: std_logic;
  signal tx1_in_tdata_net: std_logic_vector(15 downto 0);
  signal tx0_in_tvalid_net: std_logic;
  signal tx0_in_tlast_net: std_logic;
  signal tx0_in_tdata_net: std_logic_vector(15 downto 0);
  signal s_axi_lite_wvalid_net: std_logic;
  signal s_axi_lite_wdata_net: std_logic_vector(31 downto 0);
  signal s_axi_lite_rready_net: std_logic;
  signal s_axi_lite_bready_net: std_logic;
  signal s_axi_lite_awvalid_net: std_logic;
  signal s_axi_lite_awaddr_net: std_logic_vector(7 downto 0);
  signal s_axi_lite_arvalid_net: std_logic;
  signal s_axi_lite_aresetn_net: std_logic;
  signal s_axi_lite_araddr_net: std_logic_vector(7 downto 0);
  signal rx_cpri_tvalid_net: std_logic;
  signal rx_cpri_tlast_net: std_logic;
  signal rx_cpri_tdata_net: std_logic_vector(15 downto 0);
  signal rx4_tvalid_net: std_logic;
  signal rx4_tlast_net: std_logic;
  signal rx4_tdata_net: std_logic_vector(15 downto 0);
  signal rx3_tvalid_net: std_logic;
  signal rx3_tlast_net: std_logic;
  signal rx3_tdata_net: std_logic_vector(15 downto 0);
  signal rx2_tvalid_net: std_logic;
  signal rx2_tlast_net: std_logic;
  signal rx2_tdata_net: std_logic_vector(15 downto 0);
  signal rx1_tvalid_net: std_logic;
  signal rx1_tlast_net: std_logic;
  signal rx1_tdata_net: std_logic_vector(15 downto 0);
  signal rx0_tvalid_net: std_logic;
  signal rx0_tlast_net: std_logic;
  signal rx0_tdata_net: std_logic_vector(15 downto 0);
  signal s_axi_lite_arready_net: std_logic;
  signal s_axi_lite_awready_net: std_logic;
  signal s_axi_lite_bresp_net: std_logic_vector(1 downto 0);
  signal s_axi_lite_bvalid_net: std_logic;
  signal s_axi_lite_rdata_net: std_logic_vector(31 downto 0);
  signal s_axi_lite_rvalid_net: std_logic;
  signal s_axi_lite_wready_net: std_logic;
  signal tx0_out_tdata_net: std_logic_vector(15 downto 0);
  signal tx0_out_tlast_net: std_logic;
  signal tx0_out_tvalid_net: std_logic;
  signal tx1_out_tdata_net: std_logic_vector(15 downto 0);
  signal tx1_out_tlast_net: std_logic;
  signal tx1_out_tvalid_net: std_logic;
  signal tx2_out_tdata_net: std_logic_vector(15 downto 0);
  signal tx2_out_tlast_net: std_logic;
  signal tx2_out_tvalid_net: std_logic;
  signal tx3_out_tdata_net: std_logic_vector(15 downto 0);
  signal tx3_out_tlast_net: std_logic;
  signal tx3_out_tvalid_net: std_logic;
  signal tx4_out_tdata_net: std_logic_vector(15 downto 0);
  signal tx4_out_tlast_net: std_logic;
  signal tx4_out_tvalid_net: std_logic;
  signal down_sample3_q_net: std_logic_vector(15 downto 0);
  signal down_sample2_q_net: std_logic_vector(15 downto 0);
  signal down_sample1_q_net: std_logic_vector(15 downto 0);
  signal down_sample_q_net: std_logic_vector(15 downto 0);
  signal down_sample3_q_net_x0: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x0: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x0: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x0: std_logic_vector(15 downto 0);
  signal down_sample3_q_net_x1: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x1: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x1: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x1: std_logic_vector(15 downto 0);
  signal down_sample3_q_net_x2: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x2: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x2: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x2: std_logic_vector(15 downto 0);
  signal down_sample3_q_net_x3: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x3: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x3: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x3: std_logic_vector(15 downto 0);
  signal down_sample3_q_net_x4: std_logic_vector(15 downto 0);
  signal down_sample2_q_net_x4: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x4: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x4: std_logic_vector(15 downto 0);
  signal mux_y_net: std_logic_vector(15 downto 0);
  signal mux_y_net_x0: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x6: std_logic_vector(31 downto 0);
  signal down_sample_q_net_x7: std_logic_vector(31 downto 0);
  signal down_sample_q_net_x8: std_logic_vector(31 downto 0);
  signal down_sample_q_net_x9: std_logic_vector(31 downto 0);
  signal down_sample_q_net_x10: std_logic_vector(31 downto 0);
  signal down_sample_q_net_x11: std_logic_vector(31 downto 0);
  signal down_sample_q_net_x12: std_logic_vector(31 downto 0);
  signal down_sample_q_net_x13: std_logic_vector(31 downto 0);
  signal down_sample_q_net_x14: std_logic_vector(31 downto 0);
  signal down_sample_q_net_x15: std_logic_vector(31 downto 0);
  signal down_sample_q_net_x16: std_logic_vector(31 downto 0);
  signal down_sample_q_net_x17: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x11: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x12: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x13: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x14: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x15: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x16: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x17: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x18: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x19: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x20: std_logic_vector(31 downto 0);
  signal register_q_net_x38: std_logic_vector(31 downto 0);
  signal logical14_y_net_x0: std_logic;
  signal logical14_y_net_x1: std_logic;
  signal logical14_y_net_x2: std_logic;
  signal constant39_op_net_x0: std_logic_vector(1 downto 0);
  signal logical14_y_net_x3: std_logic;
  signal mux_y_net_x26: std_logic_vector(31 downto 0);
  signal register1_q_net_x16: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x21: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x22: std_logic_vector(31 downto 0);
  signal mux_y_net_x27: std_logic_vector(15 downto 0);
  signal mux1_y_net: std_logic;
  signal mux2_y_net: std_logic;
  signal up_sample2_q_net_x0: std_logic_vector(31 downto 0);
  signal up_sample3_q_net_x0: std_logic_vector(31 downto 0);
  signal mux_y_net_x32: std_logic_vector(15 downto 0);
  signal mux1_y_net_x0: std_logic;
  signal mux2_y_net_x0: std_logic;
  signal up_sample2_q_net_x1: std_logic_vector(31 downto 0);
  signal up_sample3_q_net_x1: std_logic_vector(31 downto 0);
  signal mux_y_net_x37: std_logic_vector(15 downto 0);
  signal mux1_y_net_x1: std_logic;
  signal mux2_y_net_x1: std_logic;
  signal up_sample2_q_net_x2: std_logic_vector(31 downto 0);
  signal up_sample3_q_net_x2: std_logic_vector(31 downto 0);
  signal mux_y_net_x42: std_logic_vector(15 downto 0);
  signal mux1_y_net_x2: std_logic;
  signal mux2_y_net_x2: std_logic;
  signal up_sample2_q_net_x3: std_logic_vector(31 downto 0);
  signal up_sample3_q_net_x3: std_logic_vector(31 downto 0);
  signal mux_y_net_x47: std_logic_vector(15 downto 0);
  signal mux1_y_net_x3: std_logic;
  signal mux2_y_net_x3: std_logic;
  signal up_sample2_q_net_x4: std_logic_vector(31 downto 0);
  signal up_sample3_q_net_x4: std_logic_vector(31 downto 0);
  signal up_sample2_q_net_x5: std_logic_vector(31 downto 0);
  signal up_sample3_q_net_x5: std_logic_vector(31 downto 0);

begin
  clk_8_net <= clk_8;
  ce_8_net <= ce_8;
  clk_4_net <= clk_4;
  ce_4_net <= ce_4;
  clk_2_net <= clk_2;
  ce_2_net <= ce_2;
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  tx_cpri_in_tvalid_net <= tx_cpri_in_tvalid;
  tx_cpri_in_tlast_net <= tx_cpri_in_tlast;
  tx_cpri_in_tdata_net <= tx_cpri_in_tdata;
  tx4_in_tvalid_net <= tx4_in_tvalid;
  tx4_in_tlast_net <= tx4_in_tlast;
  tx4_in_tdata_net <= tx4_in_tdata;
  tx3_in_tvalid_net <= tx3_in_tvalid;
  tx3_in_tlast_net <= tx3_in_tlast;
  tx3_in_tdata_net <= tx3_in_tdata;
  tx2_in_tvalid_net <= tx2_in_tvalid;
  tx2_in_tlast_net <= tx2_in_tlast;
  tx2_in_tdata_net <= tx2_in_tdata;
  tx1_in_tvalid_net <= tx1_in_tvalid;
  tx1_in_tlast_net <= tx1_in_tlast;
  tx1_in_tdata_net <= tx1_in_tdata;
  tx0_in_tvalid_net <= tx0_in_tvalid;
  tx0_in_tlast_net <= tx0_in_tlast;
  tx0_in_tdata_net <= tx0_in_tdata;
  s_axi_lite_wvalid_net <= s_axi_lite_wvalid;
  s_axi_lite_wdata_net <= s_axi_lite_wdata;
  s_axi_lite_rready_net <= s_axi_lite_rready;
  s_axi_lite_bready_net <= s_axi_lite_bready;
  s_axi_lite_awvalid_net <= s_axi_lite_awvalid;
  s_axi_lite_awaddr_net <= s_axi_lite_awaddr;
  s_axi_lite_arvalid_net <= s_axi_lite_arvalid;
  s_axi_lite_aresetn_net <= s_axi_lite_aresetn;
  s_axi_lite_araddr_net <= s_axi_lite_araddr;
  rx_cpri_tvalid_net <= rx_cpri_tvalid;
  rx_cpri_tlast_net <= rx_cpri_tlast;
  rx_cpri_tdata_net <= rx_cpri_tdata;
  rx4_tvalid_net <= rx4_tvalid;
  rx4_tlast_net <= rx4_tlast;
  rx4_tdata_net <= rx4_tdata;
  rx3_tvalid_net <= rx3_tvalid;
  rx3_tlast_net <= rx3_tlast;
  rx3_tdata_net <= rx3_tdata;
  rx2_tvalid_net <= rx2_tvalid;
  rx2_tlast_net <= rx2_tlast;
  rx2_tdata_net <= rx2_tdata;
  rx1_tvalid_net <= rx1_tvalid;
  rx1_tlast_net <= rx1_tlast;
  rx1_tdata_net <= rx1_tdata;
  rx0_tvalid_net <= rx0_tvalid;
  rx0_tlast_net <= rx0_tlast;
  rx0_tdata_net <= rx0_tdata;
  s_axi_lite_arready <= s_axi_lite_arready_net;
  s_axi_lite_awready <= s_axi_lite_awready_net;
  s_axi_lite_bresp <= s_axi_lite_bresp_net;
  s_axi_lite_bvalid <= s_axi_lite_bvalid_net;
  s_axi_lite_rdata <= s_axi_lite_rdata_net;
  s_axi_lite_rvalid <= s_axi_lite_rvalid_net;
  s_axi_lite_wready <= s_axi_lite_wready_net;
  tx0_out_tdata <= tx0_out_tdata_net;
  tx0_out_tlast <= tx0_out_tlast_net;
  tx0_out_tvalid <= tx0_out_tvalid_net;
  tx1_out_tdata <= tx1_out_tdata_net;
  tx1_out_tlast <= tx1_out_tlast_net;
  tx1_out_tvalid <= tx1_out_tvalid_net;
  tx2_out_tdata <= tx2_out_tdata_net;
  tx2_out_tlast <= tx2_out_tlast_net;
  tx2_out_tvalid <= tx2_out_tvalid_net;
  tx3_out_tdata <= tx3_out_tdata_net;
  tx3_out_tlast <= tx3_out_tlast_net;
  tx3_out_tvalid <= tx3_out_tvalid_net;
  tx4_out_tdata <= tx4_out_tdata_net;
  tx4_out_tlast <= tx4_out_tlast_net;
  tx4_out_tvalid <= tx4_out_tvalid_net;
  s_axi_lite_arready_net <= logical14_y_net_x0;
  s_axi_lite_awready_net <= logical14_y_net_x0;
  s_axi_lite_bresp_net <= constant39_op_net_x0;
  s_axi_lite_bvalid_net <= logical14_y_net_x2;
  s_axi_lite_rdata_net <= mux_y_net_x26;
  s_axi_lite_rvalid_net <= logical14_y_net_x3;
  s_axi_lite_wready_net <= logical14_y_net_x1;
  tx0_out_tdata_net <= mux_y_net_x27;
  tx0_out_tlast_net <= mux1_y_net;
  tx0_out_tvalid_net <= mux2_y_net;
  tx1_out_tdata_net <= mux_y_net_x32;
  tx1_out_tlast_net <= mux1_y_net_x0;
  tx1_out_tvalid_net <= mux2_y_net_x0;
  tx2_out_tdata_net <= mux_y_net_x37;
  tx2_out_tlast_net <= mux1_y_net_x1;
  tx2_out_tvalid_net <= mux2_y_net_x1;
  tx3_out_tdata_net <= mux_y_net_x42;
  tx3_out_tlast_net <= mux1_y_net_x2;
  tx3_out_tvalid_net <= mux2_y_net_x2;
  tx4_out_tdata_net <= mux_y_net_x47;
  tx4_out_tlast_net <= mux1_y_net_x3;
  tx4_out_tvalid_net <= mux2_y_net_x3;

  constant_x0: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant_op_net
  );

  constant1: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant1_op_net
  );

  constant11: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant11_op_net
  );

  constant12: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant12_op_net
  );

  constant13: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant13_op_net
  );

  constant14: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant14_op_net
  );

  constant15: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant15_op_net
  );

  constant16: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant16_op_net
  );

  constant17: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant17_op_net
  );

  constant18: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant18_op_net
  );

  constant19: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant19_op_net
  );

  constant2: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant2_op_net
  );

  constant20: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant20_op_net
  );

  constant21: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant21_op_net
  );

  constant22: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant22_op_net
  );

  constant23: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant23_op_net
  );

  constant24: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant24_op_net
  );

  constant25: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant25_op_net
  );

  constant26: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant26_op_net
  );

  constant27: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant27_op_net
  );

  constant28: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant28_op_net
  );

  constant29: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant29_op_net
  );

  constant3: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant3_op_net
  );

  constant30: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant30_op_net
  );

  constant31: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant31_op_net
  );

  constant32: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant32_op_net
  );

  constant33: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant33_op_net
  );

  constant34: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant34_op_net
  );

  constant35: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant35_op_net
  );

  constant36: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant36_op_net
  );

  constant37: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant37_op_net
  );

  constant38: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant38_op_net
  );

  constant39: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant39_op_net
  );

  constant40: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant40_op_net
  );

  constant41: entity work.sysgen_constant_9427655147
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant41_op_net
  );

  constant42: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant42_op_net
  );

  constant6: entity work.sysgen_constant_60978e4ee8
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant6_op_net
  );

  constant7: entity work.sysgen_constant_78a0ebf3cc
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op(0) => constant7_op_net
  );

  convert: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample3_q_net,
      dout => convert_dout_net
  );

  convert1: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample3_q_net_x0,
      dout => convert1_dout_net
  );

  convert10: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample_q_net,
      dout => convert10_dout_net
  );

  convert11: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample1_q_net_x1,
      dout => convert11_dout_net
  );

  convert12: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample1_q_net_x3,
      dout => convert12_dout_net
  );

  convert13: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample3_q_net_x3,
      dout => convert13_dout_net
  );

  convert14: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample_q_net_x3,
      dout => convert14_dout_net
  );

  convert15: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample2_q_net_x3,
      dout => convert15_dout_net
  );

  convert16: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample1_q_net_x4,
      dout => convert16_dout_net
  );

  convert17: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample3_q_net_x4,
      dout => convert17_dout_net
  );

  convert18: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample_q_net_x4,
      dout => convert18_dout_net
  );

  convert19: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample2_q_net_x4,
      dout => convert19_dout_net
  );

  convert2: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample_q_net_x0,
      dout => convert2_dout_net
  );

  convert20: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample3_q_net_x2,
      dout => convert20_dout_net
  );

  convert21: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample2_q_net_x2,
      dout => convert21_dout_net
  );

  convert22: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample1_q_net_x2,
      dout => convert22_dout_net
  );

  convert23: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample_q_net_x2,
      dout => convert23_dout_net
  );

  convert3: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample2_q_net_x0,
      dout => convert3_dout_net
  );

  convert4: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample1_q_net_x0,
      dout => convert4_dout_net
  );

  convert5: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample3_q_net_x1,
      dout => convert5_dout_net
  );

  convert6: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample2_q_net,
      dout => convert6_dout_net
  );

  convert7: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_4_net,
      clk => clk_4_net,
      clr => '0',
      en => "1",
      din => down_sample1_q_net,
      dout => convert7_dout_net
  );

  convert8: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample_q_net_x1,
      dout => convert8_dout_net
  );

  convert9: entity work.xlconvert_tek_meas
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate)
    port map (
      ce => ce_8_net,
      clk => clk_8_net,
      clr => '0',
      en => "1",
      din => down_sample2_q_net_x1,
      dout => convert9_dout_net
  );

  counter: entity work.xlcounter_free_tek_meas
    generic map (
      core_name0 => "tek_meas_c_counter_binary_v12_0_0",
      op_arith => xlUnsigned,
      op_width => 2)
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      clr => '0',
      op => counter_op_net
  );

  down_sample: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => register_q_net_x38,
      q => down_sample_q_net_x5
  );

  down_sample6: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 14,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 14)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => slice6_y_net,
      q => down_sample6_q_net
  );

  down_sample7: entity work.xldsamp_tek_meas
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 2,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 2)
    port map (
      dest_ce => ce_4_net,
      dest_clk => clk_4_net,
      src_ce => ce_1_net,
      src_clk => clk_1_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      rst => "0",
      d => slice7_y_net,
      q => down_sample7_q_net
  );

  mux: entity work.sysgen_mux_8126b482ff
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      sel => counter_op_net,
      d0 => mux_y_net,
      d1 => mux_y_net_x0,
      d2 => mux_y_net,
      d3 => mux_y_net_x0,
      y => mux_y_net_x1
  );

  register_x0: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d => mux_y_net_x1,
      q => register_q_net_x17
  );

  register1: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => rx1_tvalid_net,
      q(0) => register1_q_net_x5
  );

  register10: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => rx0_tvalid_net,
      q(0) => register10_q_net
  );

  register11: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d => rx3_tdata_net,
      q => register11_q_net
  );

  register12: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => rx3_tlast_net,
      q(0) => register12_q_net
  );

  register13: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d => rx4_tdata_net,
      q => register13_q_net
  );

  register14: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => rx4_tlast_net,
      q(0) => register14_q_net
  );

  register15: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => rx4_tvalid_net,
      q(0) => register15_q_net
  );

  register16: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d => rx_cpri_tdata_net,
      q => register16_q_net
  );

  register17: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => rx_cpri_tlast_net,
      q(0) => register17_q_net
  );

  register18: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => rx_cpri_tvalid_net,
      q(0) => register18_q_net
  );

  register19: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => constant42_op_net,
      q(0) => register19_q_net
  );

  register2: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d => rx1_tdata_net,
      q => register2_q_net_x5
  );

  register3: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => rx1_tlast_net,
      q(0) => register3_q_net_x5
  );

  register4: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => rx2_tvalid_net,
      q(0) => register4_q_net_x5
  );

  register5: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d => rx2_tdata_net,
      q => register5_q_net_x5
  );

  register6: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => rx2_tlast_net,
      q(0) => register6_q_net_x5
  );

  register7: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => rx3_tvalid_net,
      q(0) => register7_q_net_x5
  );

  register8: entity work.xlregister_tek_meas
    generic map (
      d_width => 16,
      init_value => b"0000000000000000")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d => rx0_tdata_net,
      q => register8_q_net
  );

  register9: entity work.xlregister_tek_meas
    generic map (
      d_width => 1,
      init_value => b"0")
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      en => "1",
      rst => "0",
      d(0) => rx0_tlast_net,
      q(0) => register9_q_net
  );

  relational: entity work.sysgen_relational_bf4ab8442b
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      a => constant41_op_net,
      b => counter_op_net,
      op(0) => relational_op_net
  );

  shift1: entity work.sysgen_shift_597df8ab4e
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip => register8_q_net,
      op => shift1_op_net_x11
  );

  shift2: entity work.sysgen_shift_597df8ab4e
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip => register2_q_net_x5,
      op => shift2_op_net_x1
  );

  shift3: entity work.sysgen_shift_597df8ab4e
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip => register5_q_net_x5,
      op => shift3_op_net
  );

  shift4: entity work.sysgen_shift_597df8ab4e
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip => register11_q_net,
      op => shift4_op_net
  );

  shift5: entity work.sysgen_shift_597df8ab4e
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip => register13_q_net,
      op => shift5_op_net
  );

  shift6: entity work.sysgen_shift_597df8ab4e
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      ip => register16_q_net,
      op => shift6_op_net
  );

  slice: entity work.xlslice_tek_meas
    generic map (
      new_lsb => 0,
      new_msb => 1,
      x_width => 32,
      y_width => 2)
    port map (
      x => down_sample_q_net_x5,
      y => slice_y_net
  );

  slice1: entity work.xlslice_tek_meas
    generic map (
      new_lsb => 2,
      new_msb => 3,
      x_width => 32,
      y_width => 2)
    port map (
      x => down_sample_q_net_x5,
      y => slice1_y_net
  );

  slice2: entity work.xlslice_tek_meas
    generic map (
      new_lsb => 4,
      new_msb => 5,
      x_width => 32,
      y_width => 2)
    port map (
      x => down_sample_q_net_x5,
      y => slice2_y_net
  );

  slice3: entity work.xlslice_tek_meas
    generic map (
      new_lsb => 6,
      new_msb => 7,
      x_width => 32,
      y_width => 2)
    port map (
      x => down_sample_q_net_x5,
      y => slice3_y_net
  );

  slice4: entity work.xlslice_tek_meas
    generic map (
      new_lsb => 8,
      new_msb => 9,
      x_width => 32,
      y_width => 2)
    port map (
      x => down_sample_q_net_x5,
      y => slice4_y_net
  );

  slice6: entity work.xlslice_tek_meas
    generic map (
      new_lsb => 0,
      new_msb => 13,
      x_width => 32,
      y_width => 14)
    port map (
      x => register1_q_net_x16,
      y => slice6_y_net
  );

  slice7: entity work.xlslice_tek_meas
    generic map (
      new_lsb => 16,
      new_msb => 17,
      x_width => 32,
      y_width => 2)
    port map (
      x => register1_q_net_x16,
      y => slice7_y_net
  );

  up_sample: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_8_net,
      src_clk => clk_8_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x22,
      q => up_sample_q_net
  );

  up_sample1: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x11,
      q => up_sample1_q_net
  );

  up_sample10: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x18,
      q => up_sample10_q_net
  );

  up_sample11: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 2,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 2)
    port map (
      dest_ce => ce_1_net,
      dest_clk => clk_1_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => slice3_y_net,
      q => up_sample11_q_net
  );

  up_sample12: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x20,
      q => up_sample12_q_net
  );

  up_sample13: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 2,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 2)
    port map (
      dest_ce => ce_1_net,
      dest_clk => clk_1_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => slice4_y_net,
      q => up_sample13_q_net
  );

  up_sample14: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x19,
      q => up_sample14_q_net
  );

  up_sample15: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x12,
      q => up_sample15_q_net
  );

  up_sample16: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_8_net,
      src_clk => clk_8_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x21,
      q => up_sample16_q_net
  );

  up_sample2: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 2,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 2)
    port map (
      dest_ce => ce_1_net,
      dest_clk => clk_1_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => slice_y_net,
      q => up_sample2_q_net
  );

  up_sample3: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x13,
      q => up_sample3_q_net
  );

  up_sample4: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x14,
      q => up_sample4_q_net
  );

  up_sample5: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 2,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 2)
    port map (
      dest_ce => ce_1_net,
      dest_clk => clk_1_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => slice1_y_net,
      q => up_sample5_q_net
  );

  up_sample6: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x15,
      q => up_sample6_q_net
  );

  up_sample7: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x16,
      q => up_sample7_q_net
  );

  up_sample8: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 2,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 2)
    port map (
      dest_ce => ce_1_net,
      dest_clk => clk_1_net,
      src_ce => ce_2_net,
      src_clk => clk_2_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => slice2_y_net,
      q => up_sample8_q_net
  );

  up_sample9: entity work.xlusamp_tek_meas
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32)
    port map (
      dest_ce => ce_2_net,
      dest_clk => clk_2_net,
      src_ce => ce_4_net,
      src_clk => clk_4_net,
      src_clr => '0',
      dest_clr => '0',
      en => "1",
      d => reinterpret_output_port_net_x17,
      q => up_sample9_q_net
  );

  axis_to_parallel: entity work.axis_to_parallel_943a4f087a
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      tdata => shift1_op_net_x11,
      tvalid => register10_q_net,
      tlast => register9_q_net,
      i0 => down_sample3_q_net,
      q0 => down_sample2_q_net,
      i1 => down_sample1_q_net,
      q1 => down_sample_q_net
    );

  axis_to_parallel1: entity work.axis_to_parallel1_a5f425d460
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      tdata => shift2_op_net_x1,
      tvalid => register1_q_net_x5,
      tlast => register3_q_net_x5,
      i0 => down_sample3_q_net_x0,
      q0 => down_sample2_q_net_x0,
      i1 => down_sample1_q_net_x0,
      q1 => down_sample_q_net_x0
    );

  axis_to_parallel2: entity work.axis_to_parallel2_e59007d04d
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      tdata => shift3_op_net,
      tvalid => register4_q_net_x5,
      tlast => register6_q_net_x5,
      i0 => down_sample3_q_net_x1,
      q0 => down_sample2_q_net_x1,
      i1 => down_sample1_q_net_x1,
      q1 => down_sample_q_net_x1
    );

  axis_to_parallel3: entity work.axis_to_parallel3_7ca20824e6
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      tdata => shift6_op_net,
      tvalid => register18_q_net,
      tlast => register17_q_net,
      i0 => down_sample3_q_net_x2,
      q0 => down_sample2_q_net_x2,
      i1 => down_sample1_q_net_x2,
      q1 => down_sample_q_net_x2
    );

  axis_to_parallel4: entity work.axis_to_parallel4_e921dc2638
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      tdata => shift4_op_net,
      tvalid => register7_q_net_x5,
      tlast => register12_q_net,
      i0 => down_sample3_q_net_x3,
      q0 => down_sample2_q_net_x3,
      i1 => down_sample1_q_net_x3,
      q1 => down_sample_q_net_x3
    );

  axis_to_parallel5: entity work.axis_to_parallel5_034ebf7873
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      tdata => shift5_op_net,
      tvalid => register15_q_net,
      tlast => register14_q_net,
      i0 => down_sample3_q_net_x4,
      q0 => down_sample2_q_net_x4,
      i1 => down_sample1_q_net_x4,
      q1 => down_sample_q_net_x4
    );

  dds: entity work.dds_1ad93ec5bf
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      dds_gain => down_sample7_q_net,
      dds_phase => down_sample6_q_net,
      i => mux_y_net,
      q => mux_y_net_x0
    );

  power: entity work.power_9efade0961
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      reset => constant1_op_net,
      in_q => convert6_dout_net,
      in_i => convert_dout_net,
      power => down_sample_q_net_x6
    );

  power1: entity work.power1_2589964eb0
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      reset => constant3_op_net,
      in_q => convert3_dout_net,
      in_i => convert1_dout_net,
      power => down_sample_q_net_x7
    );

  power10: entity work.power10_93fb20817a
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      reset => constant36_op_net,
      in_q => convert23_dout_net,
      in_i => convert22_dout_net,
      power => down_sample_q_net_x8
    );

  power11: entity work.power11_b1f4c583bc
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      reset => constant_op_net,
      in_q => convert21_dout_net,
      in_i => convert20_dout_net,
      power => down_sample_q_net_x9
    );

  power2: entity work.power2_2fa3a8fc39
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      reset => constant35_op_net,
      in_q => convert10_dout_net,
      in_i => convert7_dout_net,
      power => down_sample_q_net_x10
    );

  power3: entity work.power3_ec2ea25ddf
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      reset => constant14_op_net,
      in_q => convert2_dout_net,
      in_i => convert4_dout_net,
      power => down_sample_q_net_x11
    );

  power4: entity work.power4_88674adcbc
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      reset => constant22_op_net,
      in_q => convert9_dout_net,
      in_i => convert5_dout_net,
      power => down_sample_q_net_x12
    );

  power5: entity work.power5_d2cc9542b8
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      reset => constant19_op_net,
      in_q => convert8_dout_net,
      in_i => convert11_dout_net,
      power => down_sample_q_net_x13
    );

  power6: entity work.power6_1a532d20bb
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      reset => constant28_op_net,
      in_q => convert15_dout_net,
      in_i => convert13_dout_net,
      power => down_sample_q_net_x14
    );

  power7: entity work.power7_7e8f9b6b23
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      reset => constant25_op_net,
      in_q => convert14_dout_net,
      in_i => convert12_dout_net,
      power => down_sample_q_net_x15
    );

  power8: entity work.power8_1ee58e957c
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      reset => constant34_op_net,
      in_q => convert19_dout_net,
      in_i => convert17_dout_net,
      power => down_sample_q_net_x16
    );

  power9: entity work.power9_91a366d46a
    port map (
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      reset => constant31_op_net,
      in_q => convert18_dout_net,
      in_i => convert16_dout_net,
      power => down_sample_q_net_x17
    );

  spi_power_tx0: entity work.spi_power_tx0_f76fa8269e
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_4 => constant2_op_net,
      en => constant6_op_net,
      inst_power => down_sample_q_net_x6,
      power => reinterpret_output_port_net_x11
    );

  spi_power_tx1: entity work.spi_power_tx1_d3aa9a5447
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_4 => constant7_op_net,
      en => constant11_op_net,
      inst_power => down_sample_q_net_x10,
      power => reinterpret_output_port_net_x12
    );

  spi_power_tx2: entity work.spi_power_tx2_0f72b8793b
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_4 => constant13_op_net,
      en => constant15_op_net,
      inst_power => down_sample_q_net_x7,
      power => reinterpret_output_port_net_x13
    );

  spi_power_tx3: entity work.spi_power_tx3_0e662c0d6c
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_4 => constant16_op_net,
      en => constant12_op_net,
      inst_power => down_sample_q_net_x11,
      power => reinterpret_output_port_net_x14
    );

  spi_power_tx4: entity work.spi_power_tx4_0314fcbd5e
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_4 => constant18_op_net,
      en => constant20_op_net,
      inst_power => down_sample_q_net_x12,
      power => reinterpret_output_port_net_x15
    );

  spi_power_tx5: entity work.spi_power_tx5_2e64d37d02
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_4 => constant21_op_net,
      en => constant17_op_net,
      inst_power => down_sample_q_net_x13,
      power => reinterpret_output_port_net_x16
    );

  spi_power_tx6: entity work.spi_power_tx6_efe02e947b
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_4 => constant24_op_net,
      en => constant26_op_net,
      inst_power => down_sample_q_net_x14,
      power => reinterpret_output_port_net_x17
    );

  spi_power_tx7: entity work.spi_power_tx7_8865419107
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_4 => constant27_op_net,
      en => constant23_op_net,
      inst_power => down_sample_q_net_x15,
      power => reinterpret_output_port_net_x18
    );

  spi_power_tx8: entity work.spi_power_tx8_73603e4ed1
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_4 => constant30_op_net,
      en => constant32_op_net,
      inst_power => down_sample_q_net_x16,
      power => reinterpret_output_port_net_x19
    );

  spi_power_tx9: entity work.spi_power_tx9_64e4b2aee3
    port map (
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      rst_4 => constant33_op_net,
      en => constant29_op_net,
      inst_power => down_sample_q_net_x17,
      power => reinterpret_output_port_net_x20
    );

  subsystem: entity work.subsystem_c656ce2b33
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      tx_pow_11 => up_sample3_q_net_x5,
      tx_pow_10 => up_sample2_q_net_x5,
      rx_pow_11 => up_sample16_q_net,
      rx_pow_10 => up_sample_q_net,
      rx_pow_9 => up_sample12_q_net,
      rx_pow_8 => up_sample14_q_net,
      rx_pow_7 => up_sample10_q_net,
      rx_pow_6 => up_sample9_q_net,
      rx_pow_5 => up_sample7_q_net,
      rx_pow_4 => up_sample6_q_net,
      rx_pow_3 => up_sample4_q_net,
      rx_pow_2 => up_sample3_q_net,
      rx_pow_1 => up_sample15_q_net,
      rx_pow_0 => up_sample1_q_net,
      tx_pow_9 => up_sample3_q_net_x4,
      tx_pow_8 => up_sample2_q_net_x4,
      tx_pow_7 => up_sample3_q_net_x3,
      tx_pow_6 => up_sample2_q_net_x3,
      tx_pow_5 => up_sample3_q_net_x2,
      tx_pow_4 => up_sample2_q_net_x2,
      tx_pow_3 => up_sample3_q_net_x1,
      tx_pow_2 => up_sample2_q_net_x1,
      tx_pow_1 => up_sample3_q_net_x0,
      tx_pow_0 => up_sample2_q_net_x0,
      aresetn => s_axi_lite_aresetn_net,
      rready => s_axi_lite_rready_net,
      araddr => s_axi_lite_araddr_net,
      arvalid => s_axi_lite_arvalid_net,
      bready => s_axi_lite_bready_net,
      wdata => s_axi_lite_wdata_net,
      wvalid => s_axi_lite_wvalid_net,
      awaddr => s_axi_lite_awaddr_net,
      awvalid => s_axi_lite_awvalid_net,
      reg0 => register_q_net_x38,
      awready => logical14_y_net_x0,
      wready => logical14_y_net_x1,
      bvalid => logical14_y_net_x2,
      bresp => constant39_op_net_x0,
      rvalid => logical14_y_net_x3,
      rdata => mux_y_net_x26,
      reg64 => register1_q_net_x16
    );

  power1_x0: entity work.power1_x0_62e27e34bb
    port map (
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      rst_4 => constant37_op_net,
      en => constant39_op_net,
      inst_power => down_sample_q_net_x8,
      power => reinterpret_output_port_net_x21
    );

  power2_x0: entity work.power2_x0_0f6f060990
    port map (
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      rst_4 => constant38_op_net,
      en => constant40_op_net,
      inst_power => down_sample_q_net_x9,
      power => reinterpret_output_port_net_x22
    );

  tx0: entity work.tx0_df98dd96a0
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      tvalid => tx0_in_tvalid_net,
      tlast => tx0_in_tlast_net,
      tdata => tx0_in_tdata_net,
      tvalid_rx => register10_q_net,
      tlast_rx => register9_q_net,
      tdata_rx => shift1_op_net_x11,
      loopback => up_sample2_q_net,
      dds_tdata_x0 => register_q_net_x17,
      dds_tlast_x0 => relational_op_net,
      dds_tvalid_x0 => register19_q_net,
      tdata_out => mux_y_net_x27,
      tlast_out => mux1_y_net,
      tvalid_out => mux2_y_net,
      power0 => up_sample2_q_net_x0,
      power1 => up_sample3_q_net_x0
    );

  tx1: entity work.tx1_d8b2b1cb8b
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      tvalid => tx1_in_tvalid_net,
      tlast => tx1_in_tlast_net,
      tdata => tx1_in_tdata_net,
      tvalid_rx => register1_q_net_x5,
      tlast_rx => register3_q_net_x5,
      tdata_rx => shift2_op_net_x1,
      loopback => up_sample5_q_net,
      dds_tdata_x1 => register_q_net_x17,
      dds_tlast_x1 => relational_op_net,
      dds_tvalid_x1 => register19_q_net,
      tdata_out => mux_y_net_x32,
      tlast_out => mux1_y_net_x0,
      tvalid_out => mux2_y_net_x0,
      power0 => up_sample2_q_net_x1,
      power1 => up_sample3_q_net_x1
    );

  tx2: entity work.tx2_e519d8025f
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      tvalid => tx2_in_tvalid_net,
      tlast => tx2_in_tlast_net,
      tdata => tx2_in_tdata_net,
      tvalid_rx => register4_q_net_x5,
      tlast_rx => register6_q_net_x5,
      tdata_rx => shift3_op_net,
      loopback => up_sample8_q_net,
      dds_tdata_x2 => register_q_net_x17,
      dds_tlast_x2 => relational_op_net,
      dds_tvalid_x2 => register19_q_net,
      tdata_out => mux_y_net_x37,
      tlast_out => mux1_y_net_x1,
      tvalid_out => mux2_y_net_x1,
      power0 => up_sample2_q_net_x2,
      power1 => up_sample3_q_net_x2
    );

  tx3: entity work.tx3_ff39c1050b
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      tvalid => tx3_in_tvalid_net,
      tlast => tx3_in_tlast_net,
      tdata => tx3_in_tdata_net,
      tvalid_rx => register7_q_net_x5,
      tlast_rx => register12_q_net,
      tdata_rx => shift4_op_net,
      loopback => up_sample11_q_net,
      dds_tdata_x3 => register_q_net_x17,
      dds_tlast_x3 => relational_op_net,
      dds_tvalid_x3 => register19_q_net,
      tdata_out => mux_y_net_x42,
      tlast_out => mux1_y_net_x2,
      tvalid_out => mux2_y_net_x2,
      power0 => up_sample2_q_net_x3,
      power1 => up_sample3_q_net_x3
    );

  tx4: entity work.tx4_1e6fb2a28f
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      tvalid => tx4_in_tvalid_net,
      tlast => tx4_in_tlast_net,
      tdata => tx4_in_tdata_net,
      tvalid_rx => register15_q_net,
      tlast_rx => register14_q_net,
      tdata_rx => shift5_op_net,
      loopback => up_sample13_q_net,
      dds_tdata_x4 => register_q_net_x17,
      dds_tlast_x4 => relational_op_net,
      dds_tvalid_x4 => register19_q_net,
      tdata_out => mux_y_net_x47,
      tlast_out => mux1_y_net_x3,
      tvalid_out => mux2_y_net_x3,
      power0 => up_sample2_q_net_x4,
      power1 => up_sample3_q_net_x4
    );

  tx5: entity work.tx5_75e96f1a3c
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      tvalid => tx_cpri_in_tvalid_net,
      tlast => tx_cpri_in_tlast_net,
      tdata => tx_cpri_in_tdata_net,
      tvalid_rx => register18_q_net,
      tlast_rx => register17_q_net,
      tdata_rx => shift6_op_net,
      power0 => up_sample2_q_net_x5,
      power1 => up_sample3_q_net_x5
    );
end structural;


-- Generated from Simulink block "tek_meas/default_clock_driver_tek_meas"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity default_clock_driver_tek_meas is
  port (
    sysclk: in std_logic;
    sysce: in std_logic;
    sysce_clr: in std_logic;
    ce_1: out std_logic;
    clk_1: out std_logic;
    ce_2: out std_logic;
    clk_2: out std_logic;
    ce_4: out std_logic;
    clk_4: out std_logic;
    ce_8: out std_logic;
    clk_8: out std_logic
  );
end default_clock_driver_tek_meas;

architecture structural of default_clock_driver_tek_meas is
  signal xlclockdriver_1_clk : std_logic;
  signal xlclockdriver_1_ce : std_logic;
  signal xlclockdriver_2_clk : std_logic;
  signal xlclockdriver_2_ce : std_logic;
  signal xlclockdriver_4_clk : std_logic;
  signal xlclockdriver_4_ce : std_logic;
  signal xlclockdriver_8_clk : std_logic;
  signal xlclockdriver_8_ce : std_logic;

begin
  clk_1 <= xlclockdriver_1_clk;
  ce_1 <= xlclockdriver_1_ce;
  clk_2 <= xlclockdriver_2_clk;
  ce_2 <= xlclockdriver_2_ce;
  clk_4 <= xlclockdriver_4_clk;
  ce_4 <= xlclockdriver_4_ce;
  clk_8 <= xlclockdriver_8_clk;
  ce_8 <= xlclockdriver_8_ce;

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
  xlclockdriver_2 : entity work.xlclockdriver
    generic map (
      log_2_period => 2,
      period => 2,
      use_bufg => 0
    )
    port map (
      sysce => sysce,
      sysclk => sysclk,
      sysclr => sysce_clr,
      ce => xlclockdriver_2_ce,
      clk => xlclockdriver_2_clk
    );
  xlclockdriver_4 : entity work.xlclockdriver
    generic map (
      log_2_period => 3,
      period => 4,
      use_bufg => 0
    )
    port map (
      sysce => sysce,
      sysclk => sysclk,
      sysclr => sysce_clr,
      ce => xlclockdriver_4_ce,
      clk => xlclockdriver_4_clk
    );
  xlclockdriver_8 : entity work.xlclockdriver
    generic map (
      log_2_period => 4,
      period => 8,
      use_bufg => 0
    )
    port map (
      sysce => sysce,
      sysclk => sysclk,
      sysclr => sysce_clr,
      ce => xlclockdriver_8_ce,
      clk => xlclockdriver_8_clk
    );
end structural;


-- Generated from Simulink block "tek_meas"

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity tek_meas is
  port (
    clk: in std_logic;
    tx_cpri_in_tvalid: in std_logic;
    tx_cpri_in_tlast: in std_logic;
    tx_cpri_in_tdata: in std_logic_vector(15 downto 0);
    tx4_in_tvalid: in std_logic;
    tx4_in_tlast: in std_logic;
    tx4_in_tdata: in std_logic_vector(15 downto 0);
    tx3_in_tvalid: in std_logic;
    tx3_in_tlast: in std_logic;
    tx3_in_tdata: in std_logic_vector(15 downto 0);
    tx2_in_tvalid: in std_logic;
    tx2_in_tlast: in std_logic;
    tx2_in_tdata: in std_logic_vector(15 downto 0);
    tx1_in_tvalid: in std_logic;
    tx1_in_tlast: in std_logic;
    tx1_in_tdata: in std_logic_vector(15 downto 0);
    tx0_in_tvalid: in std_logic;
    tx0_in_tlast: in std_logic;
    tx0_in_tdata: in std_logic_vector(15 downto 0);
    s_axi_lite_wvalid: in std_logic;
    s_axi_lite_wdata: in std_logic_vector(31 downto 0);
    s_axi_lite_rready: in std_logic;
    s_axi_lite_bready: in std_logic;
    s_axi_lite_awvalid: in std_logic;
    s_axi_lite_awaddr: in std_logic_vector(7 downto 0);
    s_axi_lite_arvalid: in std_logic;
    s_axi_lite_aresetn: in std_logic;
    s_axi_lite_araddr: in std_logic_vector(7 downto 0);
    rx_cpri_tvalid: in std_logic;
    rx_cpri_tlast: in std_logic;
    rx_cpri_tdata: in std_logic_vector(15 downto 0);
    rx4_tvalid: in std_logic;
    rx4_tlast: in std_logic;
    rx4_tdata: in std_logic_vector(15 downto 0);
    rx3_tvalid: in std_logic;
    rx3_tlast: in std_logic;
    rx3_tdata: in std_logic_vector(15 downto 0);
    rx2_tvalid: in std_logic;
    rx2_tlast: in std_logic;
    rx2_tdata: in std_logic_vector(15 downto 0);
    rx1_tvalid: in std_logic;
    rx1_tlast: in std_logic;
    rx1_tdata: in std_logic_vector(15 downto 0);
    rx0_tvalid: in std_logic;
    rx0_tlast: in std_logic;
    rx0_tdata: in std_logic_vector(15 downto 0);
    s_axi_lite_arready: out std_logic;
    s_axi_lite_awready: out std_logic;
    s_axi_lite_bresp: out std_logic_vector(1 downto 0);
    s_axi_lite_bvalid: out std_logic;
    s_axi_lite_rdata: out std_logic_vector(31 downto 0);
    s_axi_lite_rvalid: out std_logic;
    s_axi_lite_wready: out std_logic;
    tx0_out_tdata: out std_logic_vector(15 downto 0);
    tx0_out_tlast: out std_logic;
    tx0_out_tvalid: out std_logic;
    tx1_out_tdata: out std_logic_vector(15 downto 0);
    tx1_out_tlast: out std_logic;
    tx1_out_tvalid: out std_logic;
    tx2_out_tdata: out std_logic_vector(15 downto 0);
    tx2_out_tlast: out std_logic;
    tx2_out_tvalid: out std_logic;
    tx3_out_tdata: out std_logic_vector(15 downto 0);
    tx3_out_tlast: out std_logic;
    tx3_out_tvalid: out std_logic;
    tx4_out_tdata: out std_logic_vector(15 downto 0);
    tx4_out_tlast: out std_logic;
    tx4_out_tvalid: out std_logic
  );
end tek_meas;

architecture structural of tek_meas is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "tek_meas,sysgen_core_2014_2,{compilation=IP Catalog,block_icon_display=Default,family=kintex7,part=xc7k410t,speed=-1,package=fbg900,synthesis_tool=Vivado,synthesis_language=vhdl,hdl_library=work,proj_type=Vivado,synth_file=Vivado Synthesis Defaults,impl_file=Vivado Implementation Defaults,clock_loc=,clock_wrapper=Clock Enables,directory=./tek_meas,testbench=0,create_interface_document=0,ce_clr=0,base_system_period_hardware=8,dcm_input_clock_period=5,base_system_period_simulink=1,sim_time=10,sim_status=0,}";

  signal clk_8_net: std_logic;
  signal ce_8_net: std_logic;
  signal clk_4_net: std_logic;
  signal ce_4_net: std_logic;
  signal clk_2_net: std_logic;
  signal ce_2_net: std_logic;
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal clk_net: std_logic;
  signal tx_cpri_in_tvalid_net: std_logic;
  signal tx_cpri_in_tlast_net: std_logic;
  signal tx_cpri_in_tdata_net: std_logic_vector(15 downto 0);
  signal tx4_in_tvalid_net: std_logic;
  signal tx4_in_tlast_net: std_logic;
  signal tx4_in_tdata_net: std_logic_vector(15 downto 0);
  signal tx3_in_tvalid_net: std_logic;
  signal tx3_in_tlast_net: std_logic;
  signal tx3_in_tdata_net: std_logic_vector(15 downto 0);
  signal tx2_in_tvalid_net: std_logic;
  signal tx2_in_tlast_net: std_logic;
  signal tx2_in_tdata_net: std_logic_vector(15 downto 0);
  signal tx1_in_tvalid_net: std_logic;
  signal tx1_in_tlast_net: std_logic;
  signal tx1_in_tdata_net: std_logic_vector(15 downto 0);
  signal tx0_in_tvalid_net: std_logic;
  signal tx0_in_tlast_net: std_logic;
  signal tx0_in_tdata_net: std_logic_vector(15 downto 0);
  signal s_axi_lite_wvalid_net: std_logic;
  signal s_axi_lite_wdata_net: std_logic_vector(31 downto 0);
  signal s_axi_lite_rready_net: std_logic;
  signal s_axi_lite_bready_net: std_logic;
  signal s_axi_lite_awvalid_net: std_logic;
  signal s_axi_lite_awaddr_net: std_logic_vector(7 downto 0);
  signal s_axi_lite_arvalid_net: std_logic;
  signal s_axi_lite_aresetn_net: std_logic;
  signal s_axi_lite_araddr_net: std_logic_vector(7 downto 0);
  signal rx_cpri_tvalid_net: std_logic;
  signal rx_cpri_tlast_net: std_logic;
  signal rx_cpri_tdata_net: std_logic_vector(15 downto 0);
  signal rx4_tvalid_net: std_logic;
  signal rx4_tlast_net: std_logic;
  signal rx4_tdata_net: std_logic_vector(15 downto 0);
  signal rx3_tvalid_net: std_logic;
  signal rx3_tlast_net: std_logic;
  signal rx3_tdata_net: std_logic_vector(15 downto 0);
  signal rx2_tvalid_net: std_logic;
  signal rx2_tlast_net: std_logic;
  signal rx2_tdata_net: std_logic_vector(15 downto 0);
  signal rx1_tvalid_net: std_logic;
  signal rx1_tlast_net: std_logic;
  signal rx1_tdata_net: std_logic_vector(15 downto 0);
  signal rx0_tvalid_net: std_logic;
  signal rx0_tlast_net: std_logic;
  signal rx0_tdata_net: std_logic_vector(15 downto 0);
  signal s_axi_lite_arready_net: std_logic;
  signal s_axi_lite_awready_net: std_logic;
  signal s_axi_lite_bresp_net: std_logic_vector(1 downto 0);
  signal s_axi_lite_bvalid_net: std_logic;
  signal s_axi_lite_rdata_net: std_logic_vector(31 downto 0);
  signal s_axi_lite_rvalid_net: std_logic;
  signal s_axi_lite_wready_net: std_logic;
  signal tx0_out_tdata_net: std_logic_vector(15 downto 0);
  signal tx0_out_tlast_net: std_logic;
  signal tx0_out_tvalid_net: std_logic;
  signal tx1_out_tdata_net: std_logic_vector(15 downto 0);
  signal tx1_out_tlast_net: std_logic;
  signal tx1_out_tvalid_net: std_logic;
  signal tx2_out_tdata_net: std_logic_vector(15 downto 0);
  signal tx2_out_tlast_net: std_logic;
  signal tx2_out_tvalid_net: std_logic;
  signal tx3_out_tdata_net: std_logic_vector(15 downto 0);
  signal tx3_out_tlast_net: std_logic;
  signal tx3_out_tvalid_net: std_logic;
  signal tx4_out_tdata_net: std_logic_vector(15 downto 0);
  signal tx4_out_tlast_net: std_logic;
  signal tx4_out_tvalid_net: std_logic;

begin
  clk_net <= clk;
  tx_cpri_in_tvalid_net <= tx_cpri_in_tvalid;
  tx_cpri_in_tlast_net <= tx_cpri_in_tlast;
  tx_cpri_in_tdata_net <= tx_cpri_in_tdata;
  tx4_in_tvalid_net <= tx4_in_tvalid;
  tx4_in_tlast_net <= tx4_in_tlast;
  tx4_in_tdata_net <= tx4_in_tdata;
  tx3_in_tvalid_net <= tx3_in_tvalid;
  tx3_in_tlast_net <= tx3_in_tlast;
  tx3_in_tdata_net <= tx3_in_tdata;
  tx2_in_tvalid_net <= tx2_in_tvalid;
  tx2_in_tlast_net <= tx2_in_tlast;
  tx2_in_tdata_net <= tx2_in_tdata;
  tx1_in_tvalid_net <= tx1_in_tvalid;
  tx1_in_tlast_net <= tx1_in_tlast;
  tx1_in_tdata_net <= tx1_in_tdata;
  tx0_in_tvalid_net <= tx0_in_tvalid;
  tx0_in_tlast_net <= tx0_in_tlast;
  tx0_in_tdata_net <= tx0_in_tdata;
  s_axi_lite_wvalid_net <= s_axi_lite_wvalid;
  s_axi_lite_wdata_net <= s_axi_lite_wdata;
  s_axi_lite_rready_net <= s_axi_lite_rready;
  s_axi_lite_bready_net <= s_axi_lite_bready;
  s_axi_lite_awvalid_net <= s_axi_lite_awvalid;
  s_axi_lite_awaddr_net <= s_axi_lite_awaddr;
  s_axi_lite_arvalid_net <= s_axi_lite_arvalid;
  s_axi_lite_aresetn_net <= s_axi_lite_aresetn;
  s_axi_lite_araddr_net <= s_axi_lite_araddr;
  rx_cpri_tvalid_net <= rx_cpri_tvalid;
  rx_cpri_tlast_net <= rx_cpri_tlast;
  rx_cpri_tdata_net <= rx_cpri_tdata;
  rx4_tvalid_net <= rx4_tvalid;
  rx4_tlast_net <= rx4_tlast;
  rx4_tdata_net <= rx4_tdata;
  rx3_tvalid_net <= rx3_tvalid;
  rx3_tlast_net <= rx3_tlast;
  rx3_tdata_net <= rx3_tdata;
  rx2_tvalid_net <= rx2_tvalid;
  rx2_tlast_net <= rx2_tlast;
  rx2_tdata_net <= rx2_tdata;
  rx1_tvalid_net <= rx1_tvalid;
  rx1_tlast_net <= rx1_tlast;
  rx1_tdata_net <= rx1_tdata;
  rx0_tvalid_net <= rx0_tvalid;
  rx0_tlast_net <= rx0_tlast;
  rx0_tdata_net <= rx0_tdata;
  s_axi_lite_arready <= s_axi_lite_arready_net;
  s_axi_lite_awready <= s_axi_lite_awready_net;
  s_axi_lite_bresp <= s_axi_lite_bresp_net;
  s_axi_lite_bvalid <= s_axi_lite_bvalid_net;
  s_axi_lite_rdata <= s_axi_lite_rdata_net;
  s_axi_lite_rvalid <= s_axi_lite_rvalid_net;
  s_axi_lite_wready <= s_axi_lite_wready_net;
  tx0_out_tdata <= tx0_out_tdata_net;
  tx0_out_tlast <= tx0_out_tlast_net;
  tx0_out_tvalid <= tx0_out_tvalid_net;
  tx1_out_tdata <= tx1_out_tdata_net;
  tx1_out_tlast <= tx1_out_tlast_net;
  tx1_out_tvalid <= tx1_out_tvalid_net;
  tx2_out_tdata <= tx2_out_tdata_net;
  tx2_out_tlast <= tx2_out_tlast_net;
  tx2_out_tvalid <= tx2_out_tvalid_net;
  tx3_out_tdata <= tx3_out_tdata_net;
  tx3_out_tlast <= tx3_out_tlast_net;
  tx3_out_tvalid <= tx3_out_tvalid_net;
  tx4_out_tdata <= tx4_out_tdata_net;
  tx4_out_tlast <= tx4_out_tlast_net;
  tx4_out_tvalid <= tx4_out_tvalid_net;

  tek_meas_struct: entity work.tek_meas_struct
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      clk_8 => clk_8_net,
      ce_8 => ce_8_net,
      tx_cpri_in_tvalid => tx_cpri_in_tvalid_net,
      tx_cpri_in_tlast => tx_cpri_in_tlast_net,
      tx_cpri_in_tdata => tx_cpri_in_tdata_net,
      tx4_in_tvalid => tx4_in_tvalid_net,
      tx4_in_tlast => tx4_in_tlast_net,
      tx4_in_tdata => tx4_in_tdata_net,
      tx3_in_tvalid => tx3_in_tvalid_net,
      tx3_in_tlast => tx3_in_tlast_net,
      tx3_in_tdata => tx3_in_tdata_net,
      tx2_in_tvalid => tx2_in_tvalid_net,
      tx2_in_tlast => tx2_in_tlast_net,
      tx2_in_tdata => tx2_in_tdata_net,
      tx1_in_tvalid => tx1_in_tvalid_net,
      tx1_in_tlast => tx1_in_tlast_net,
      tx1_in_tdata => tx1_in_tdata_net,
      tx0_in_tvalid => tx0_in_tvalid_net,
      tx0_in_tlast => tx0_in_tlast_net,
      tx0_in_tdata => tx0_in_tdata_net,
      s_axi_lite_wvalid => s_axi_lite_wvalid_net,
      s_axi_lite_wdata => s_axi_lite_wdata_net,
      s_axi_lite_rready => s_axi_lite_rready_net,
      s_axi_lite_bready => s_axi_lite_bready_net,
      s_axi_lite_awvalid => s_axi_lite_awvalid_net,
      s_axi_lite_awaddr => s_axi_lite_awaddr_net,
      s_axi_lite_arvalid => s_axi_lite_arvalid_net,
      s_axi_lite_aresetn => s_axi_lite_aresetn_net,
      s_axi_lite_araddr => s_axi_lite_araddr_net,
      rx_cpri_tvalid => rx_cpri_tvalid_net,
      rx_cpri_tlast => rx_cpri_tlast_net,
      rx_cpri_tdata => rx_cpri_tdata_net,
      rx4_tvalid => rx4_tvalid_net,
      rx4_tlast => rx4_tlast_net,
      rx4_tdata => rx4_tdata_net,
      rx3_tvalid => rx3_tvalid_net,
      rx3_tlast => rx3_tlast_net,
      rx3_tdata => rx3_tdata_net,
      rx2_tvalid => rx2_tvalid_net,
      rx2_tlast => rx2_tlast_net,
      rx2_tdata => rx2_tdata_net,
      rx1_tvalid => rx1_tvalid_net,
      rx1_tlast => rx1_tlast_net,
      rx1_tdata => rx1_tdata_net,
      rx0_tvalid => rx0_tvalid_net,
      rx0_tlast => rx0_tlast_net,
      rx0_tdata => rx0_tdata_net,
      s_axi_lite_arready => s_axi_lite_arready_net,
      s_axi_lite_awready => s_axi_lite_awready_net,
      s_axi_lite_bresp => s_axi_lite_bresp_net,
      s_axi_lite_bvalid => s_axi_lite_bvalid_net,
      s_axi_lite_rdata => s_axi_lite_rdata_net,
      s_axi_lite_rvalid => s_axi_lite_rvalid_net,
      s_axi_lite_wready => s_axi_lite_wready_net,
      tx0_out_tdata => tx0_out_tdata_net,
      tx0_out_tlast => tx0_out_tlast_net,
      tx0_out_tvalid => tx0_out_tvalid_net,
      tx1_out_tdata => tx1_out_tdata_net,
      tx1_out_tlast => tx1_out_tlast_net,
      tx1_out_tvalid => tx1_out_tvalid_net,
      tx2_out_tdata => tx2_out_tdata_net,
      tx2_out_tlast => tx2_out_tlast_net,
      tx2_out_tvalid => tx2_out_tvalid_net,
      tx3_out_tdata => tx3_out_tdata_net,
      tx3_out_tlast => tx3_out_tlast_net,
      tx3_out_tvalid => tx3_out_tvalid_net,
      tx4_out_tdata => tx4_out_tdata_net,
      tx4_out_tlast => tx4_out_tlast_net,
      tx4_out_tvalid => tx4_out_tvalid_net
    );

  default_clock_driver_tek_meas: entity work.default_clock_driver_tek_meas
    port map (
      sysclk => clk_net,
      sysce => '1',
      sysce_clr => '0',
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      clk_2 => clk_2_net,
      ce_2 => ce_2_net,
      clk_4 => clk_4_net,
      ce_4 => ce_4_net,
      clk_8 => clk_8_net,
      ce_8 => ce_8_net
    );
end structural;
