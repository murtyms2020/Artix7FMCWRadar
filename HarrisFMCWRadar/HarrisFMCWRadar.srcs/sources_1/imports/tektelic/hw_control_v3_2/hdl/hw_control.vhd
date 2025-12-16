-------------------------------------------------------------------
-- System Generator version 2013.3 VHDL source file.
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

-- Generated from Simulink block "hw_control/hw_control_struct"

library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

entity hw_control_struct is
  port (
    clk_1: in std_logic;
    ce_1: in std_logic;
    tready_not_sync: in std_logic;
    wrapper_read_data: in std_logic_vector(31 downto 0);
    ver: in std_logic_vector(31 downto 0);
    txlo_lock: in std_logic;
    temperature: in std_logic_vector(15 downto 0);
    s_axi_lite_wvalid: in std_logic;
    s_axi_lite_wdata: in std_logic_vector(31 downto 0);
    s_axi_lite_rready: in std_logic;
    s_axi_lite_bready: in std_logic;
    s_axi_lite_awvalid: in std_logic;
    s_axi_lite_awaddr: in std_logic_vector(7 downto 0);
    s_axi_lite_arvalid: in std_logic;
    s_axi_lite_aresetn: in std_logic;
    s_axi_lite_araddr: in std_logic_vector(7 downto 0);
    rxlo_lock: in std_logic;
    lmk_lock: in std_logic;
    sfp1_los: in std_logic;
    sfp0_los: in std_logic;
    cal_sw_ctrl: out std_logic_vector(7 downto 0);
    cal_sw_txrx: out std_logic;
    eth_bf_count: out std_logic_vector(31 downto 0);
    eth_tready_sync: out std_logic_vector(31 downto 0);
    power_det_sw: out std_logic_vector(4 downto 0);
    rst_reg: out std_logic_vector(31 downto 0);
    s_axi_lite_arready: out std_logic;
    s_axi_lite_awready: out std_logic;
    s_axi_lite_bresp: out std_logic_vector(1 downto 0);
    s_axi_lite_bvalid: out std_logic;
    s_axi_lite_rdata: out std_logic_vector(31 downto 0);
    s_axi_lite_rvalid: out std_logic;
    s_axi_lite_wready: out std_logic;
    test_interrupt: out std_logic;
    tx_en: out std_logic_vector(3 downto 0);
    wrapper_write_data: out std_logic_vector(31 downto 0)
  );
end hw_control_struct;

architecture structural of hw_control_struct is
  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal concat_y_net: std_logic_vector(31 downto 0);
  signal constant_op_net: std_logic_vector(15 downto 0);
  signal delay_q_net: std_logic;
  signal delay1_q_net: std_logic;
  signal delay2_q_net: std_logic;
  signal delay3_q_net: std_logic;
  signal delay4_q_net: std_logic;
  signal delay5_q_net: std_logic;
  signal logical_y_net: std_logic;
  signal mcode1_reg0_net: std_logic_vector(31 downto 0);
  signal mcode1_reg4_net: std_logic_vector(31 downto 0);
  signal mcode1_reg8_net: std_logic_vector(31 downto 0);
  signal mcode1_regc_net: std_logic_vector(31 downto 0);
  signal mcode1_reg10_net: std_logic_vector(31 downto 0);
  signal mcode1_reg14_net: std_logic_vector(31 downto 0);
  signal mcode1_reg18_net: std_logic_vector(31 downto 0);
  signal mcode1_reg1c_net: std_logic_vector(31 downto 0);
  signal mcode1_reg20_net: std_logic_vector(31 downto 0);
  signal mcode1_reg24_net: std_logic_vector(31 downto 0);
  signal mcode1_reg28_net: std_logic_vector(31 downto 0);
  signal mcode1_reg2c_net: std_logic_vector(31 downto 0);
  signal mcode1_reg30_net: std_logic_vector(31 downto 0);
  signal mcode1_reg34_net: std_logic_vector(31 downto 0);
  signal mcode1_reg38_net: std_logic_vector(31 downto 0);
  signal mcode1_reg3c_net: std_logic_vector(31 downto 0);
  signal mcode1_reg40_net: std_logic_vector(31 downto 0);
  signal mcode1_reg44_net: std_logic_vector(31 downto 0);
  signal mcode1_reg48_net: std_logic_vector(31 downto 0);
  signal mcode1_reg4c_net: std_logic_vector(31 downto 0);
  signal mcode1_we4_net: std_logic;
  signal mcode1_wec_net: std_logic;
  signal mcode1_we18_net: std_logic;
  signal mcode1_we1c_net: std_logic;
  signal mcode1_we20_net: std_logic;
  signal mcode1_we2c_net: std_logic;
  signal mcode1_we34_net: std_logic;
  signal mcode1_we40_net: std_logic;
  signal mcode1_we48_net: std_logic;
  signal mcode1_awready_net: std_logic;
  signal mcode1_wready_net: std_logic;
  signal mcode1_bvalid_net: std_logic;
  signal mcode1_bresp_net: std_logic_vector(1 downto 0);
  signal mcode1_arready_net: std_logic;
  signal mcode1_rvalid_net: std_logic;
  signal mcode1_rdata_net: std_logic_vector(31 downto 0);
  signal slice_y_net: std_logic_vector(7 downto 0);
  signal slice1_y_net: std_logic;
  signal slice2_y_net: std_logic_vector(4 downto 0);
  signal slice3_y_net: std_logic_vector(3 downto 0);
  signal tready_not_sync_net: std_logic;
  signal wrapper_read_data_net: std_logic_vector(31 downto 0);
  signal ver_net: std_logic_vector(31 downto 0);
  signal txlo_lock_net: std_logic;
  signal temperature_net: std_logic_vector(15 downto 0);
  signal s_axi_lite_wvalid_net: std_logic;
  signal s_axi_lite_wdata_net: std_logic_vector(31 downto 0);
  signal s_axi_lite_rready_net: std_logic;
  signal s_axi_lite_bready_net: std_logic;
  signal s_axi_lite_awvalid_net: std_logic;
  signal s_axi_lite_awaddr_net: std_logic_vector(7 downto 0);
  signal s_axi_lite_arvalid_net: std_logic;
  signal s_axi_lite_aresetn_net: std_logic;
  signal s_axi_lite_araddr_net: std_logic_vector(7 downto 0);
  signal rxlo_lock_net: std_logic;
  signal lmk_lock_net: std_logic;
  signal sfp1_los_net: std_logic;
  signal sfp0_los_net: std_logic;
  signal cal_sw_ctrl_net: std_logic_vector(7 downto 0);
  signal cal_sw_txrx_net: std_logic;
  signal eth_bf_count_net: std_logic_vector(31 downto 0);
  signal eth_tready_sync_net: std_logic_vector(31 downto 0);
  signal power_det_sw_net: std_logic_vector(4 downto 0);
  signal rst_reg_net: std_logic_vector(31 downto 0);
  signal s_axi_lite_arready_net: std_logic;
  signal s_axi_lite_awready_net: std_logic;
  signal s_axi_lite_bresp_net: std_logic_vector(1 downto 0);
  signal s_axi_lite_bvalid_net: std_logic;
  signal s_axi_lite_rdata_net: std_logic_vector(31 downto 0);
  signal s_axi_lite_rvalid_net: std_logic;
  signal s_axi_lite_wready_net: std_logic;
  signal test_interrupt_net: std_logic;
  signal tx_en_net: std_logic_vector(3 downto 0);
  signal wrapper_write_data_net: std_logic_vector(31 downto 0);

begin
  clk_1_net <= clk_1;
  ce_1_net <= ce_1;
  tready_not_sync_net <= tready_not_sync;
  wrapper_read_data_net <= wrapper_read_data;
  ver_net <= ver;
  txlo_lock_net <= txlo_lock;
  temperature_net <= temperature;
  s_axi_lite_wvalid_net <= s_axi_lite_wvalid;
  s_axi_lite_wdata_net <= s_axi_lite_wdata;
  s_axi_lite_rready_net <= s_axi_lite_rready;
  s_axi_lite_bready_net <= s_axi_lite_bready;
  s_axi_lite_awvalid_net <= s_axi_lite_awvalid;
  s_axi_lite_awaddr_net <= s_axi_lite_awaddr;
  s_axi_lite_arvalid_net <= s_axi_lite_arvalid;
  s_axi_lite_aresetn_net <= s_axi_lite_aresetn;
  s_axi_lite_araddr_net <= s_axi_lite_araddr;
  rxlo_lock_net <= rxlo_lock;
  lmk_lock_net <= lmk_lock;
  sfp1_los_net <= sfp1_los;
  sfp0_los_net <= sfp0_los;
  cal_sw_ctrl <= cal_sw_ctrl_net;
  cal_sw_txrx <= cal_sw_txrx_net;
  eth_bf_count <= eth_bf_count_net;
  eth_tready_sync <= eth_tready_sync_net;
  power_det_sw <= power_det_sw_net;
  rst_reg <= rst_reg_net;
  s_axi_lite_arready <= s_axi_lite_arready_net;
  s_axi_lite_awready <= s_axi_lite_awready_net;
  s_axi_lite_bresp <= s_axi_lite_bresp_net;
  s_axi_lite_bvalid <= s_axi_lite_bvalid_net;
  s_axi_lite_rdata <= s_axi_lite_rdata_net;
  s_axi_lite_rvalid <= s_axi_lite_rvalid_net;
  s_axi_lite_wready <= s_axi_lite_wready_net;
  test_interrupt <= test_interrupt_net;
  tx_en <= tx_en_net;
  wrapper_write_data <= wrapper_write_data_net;
  cal_sw_ctrl_net <= slice_y_net;
  cal_sw_txrx_net <= slice1_y_net;
  eth_bf_count_net <= mcode1_reg34_net;
  eth_tready_sync_net <= mcode1_reg38_net;
  power_det_sw_net <= slice2_y_net;
  rst_reg_net <= mcode1_reg0_net;
  s_axi_lite_arready_net <= mcode1_arready_net;
  s_axi_lite_awready_net <= mcode1_awready_net;
  s_axi_lite_bresp_net <= mcode1_bresp_net;
  s_axi_lite_bvalid_net <= mcode1_bvalid_net;
  s_axi_lite_rdata_net <= mcode1_rdata_net;
  s_axi_lite_rvalid_net <= mcode1_rvalid_net;
  s_axi_lite_wready_net <= mcode1_wready_net;
  test_interrupt_net <= delay5_q_net;
  tx_en_net <= slice3_y_net;
  wrapper_write_data_net <= mcode1_reg30_net;

  concat: entity work.sysgen_concat_8dce01b53f
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      in0 => constant_op_net,
      in1 => temperature_net,
      y => concat_y_net
  );

  constant_x0: entity work.sysgen_constant_27f6d3271c
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      op => constant_op_net
  );

  delay: entity work.xldelay_hw_control
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
      d(0) => mcode1_we1c_net,
      q(0) => delay_q_net
  );

  delay1: entity work.xldelay_hw_control
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
      d(0) => delay_q_net,
      q(0) => delay1_q_net
  );

  delay2: entity work.xldelay_hw_control
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
      d(0) => delay1_q_net,
      q(0) => delay2_q_net
  );

  delay3: entity work.xldelay_hw_control
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
      d(0) => delay2_q_net,
      q(0) => delay3_q_net
  );

  delay4: entity work.xldelay_hw_control
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
      d(0) => delay3_q_net,
      q(0) => delay4_q_net
  );

  delay5: entity work.xldelay_hw_control
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
      d(0) => logical_y_net,
      q(0) => delay5_q_net
  );

  logical: entity work.sysgen_logical_ff3ce88d1d
    port map (
      clk => '0',
      ce => '0',
      clr => '0',
      d0(0) => mcode1_we1c_net,
      d1(0) => delay_q_net,
      d2(0) => delay1_q_net,
      d3(0) => delay2_q_net,
      d4(0) => delay3_q_net,
      d5(0) => delay4_q_net,
      y(0) => logical_y_net
  );

  mcode1: entity work.sysgen_mcode_block_5e15e30d39
    port map (
      ce => ce_1_net,
      clk => clk_1_net,
      clr => '0',
      txlo_lock(0) => txlo_lock_net,
      rxlo_lock(0) => rxlo_lock_net,
      lmk_lock(0) => lmk_lock_net,
      awvalid(0) => s_axi_lite_awvalid_net,
      awaddr => s_axi_lite_awaddr_net,
      wvalid(0) => s_axi_lite_wvalid_net,
      wdata => s_axi_lite_wdata_net,
      bready(0) => s_axi_lite_bready_net,
      arvalid(0) => s_axi_lite_arvalid_net,
      araddr => s_axi_lite_araddr_net,
      rready(0) => s_axi_lite_rready_net,
      aresetn(0) => s_axi_lite_aresetn_net,
      ver => ver_net,
      temp_data => concat_y_net,
      los0(0) => sfp0_los_net,
      los1(0) => sfp1_los_net,
      wrapper_read_data => wrapper_read_data_net,
      tready_not_sync(0) => tready_not_sync_net,
      reg0 => mcode1_reg0_net,
      reg4 => mcode1_reg4_net,
      reg8 => mcode1_reg8_net,
      regc => mcode1_regc_net,
      reg10 => mcode1_reg10_net,
      reg14 => mcode1_reg14_net,
      reg18 => mcode1_reg18_net,
      reg1c => mcode1_reg1c_net,
      reg20 => mcode1_reg20_net,
      reg24 => mcode1_reg24_net,
      reg28 => mcode1_reg28_net,
      reg2c => mcode1_reg2c_net,
      reg30 => mcode1_reg30_net,
      reg34 => mcode1_reg34_net,
      reg38 => mcode1_reg38_net,
      reg3c => mcode1_reg3c_net,
      reg40 => mcode1_reg40_net,
      reg44 => mcode1_reg44_net,
      reg48 => mcode1_reg48_net,
      reg4c => mcode1_reg4c_net,
      we4(0) => mcode1_we4_net,
      wec(0) => mcode1_wec_net,
      we18(0) => mcode1_we18_net,
      we1c(0) => mcode1_we1c_net,
      we20(0) => mcode1_we20_net,
      we2c(0) => mcode1_we2c_net,
      we34(0) => mcode1_we34_net,
      we40(0) => mcode1_we40_net,
      we48(0) => mcode1_we48_net,
      awready(0) => mcode1_awready_net,
      wready(0) => mcode1_wready_net,
      bvalid(0) => mcode1_bvalid_net,
      bresp => mcode1_bresp_net,
      arready(0) => mcode1_arready_net,
      rvalid(0) => mcode1_rvalid_net,
      rdata => mcode1_rdata_net
  );

  slice: entity work.xlslice_hw_control
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 32,
      y_width => 8)
    port map (
      x => mcode1_regc_net,
      y => slice_y_net
  );

  slice1: entity work.xlslice_hw_control
    generic map (
      new_lsb => 8,
      new_msb => 8,
      x_width => 32,
      y_width => 1)
    port map (
      x => mcode1_regc_net,
      y(0) => slice1_y_net
  );

  slice2: entity work.xlslice_hw_control
    generic map (
      new_lsb => 12,
      new_msb => 16,
      x_width => 32,
      y_width => 5)
    port map (
      x => mcode1_regc_net,
      y => slice2_y_net
  );

  slice3: entity work.xlslice_hw_control
    generic map (
      new_lsb => 0,
      new_msb => 3,
      x_width => 32,
      y_width => 4)
    port map (
      x => mcode1_reg14_net,
      y => slice3_y_net
  );
end structural;


-- Generated from Simulink block "hw_control/default_clock_driver_hw_control"

library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

entity default_clock_driver_hw_control is
  port (
    sysclk: in std_logic;
    sysce: in std_logic;
    sysce_clr: in std_logic;
    ce_1: out std_logic;
    clk_1: out std_logic
  );
end default_clock_driver_hw_control;

architecture structural of default_clock_driver_hw_control is
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


-- Generated from Simulink block "hw_control"

library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

entity hw_control is
  port (
    clk: in std_logic;
    tready_not_sync: in std_logic;
    wrapper_read_data: in std_logic_vector(31 downto 0);
    ver: in std_logic_vector(31 downto 0);
    txlo_lock: in std_logic;
    temperature: in std_logic_vector(15 downto 0);
    s_axi_lite_wvalid: in std_logic;
    s_axi_lite_wdata: in std_logic_vector(31 downto 0);
    s_axi_lite_rready: in std_logic;
    s_axi_lite_bready: in std_logic;
    s_axi_lite_awvalid: in std_logic;
    s_axi_lite_awaddr: in std_logic_vector(7 downto 0);
    s_axi_lite_arvalid: in std_logic;
    s_axi_lite_aresetn: in std_logic;
    s_axi_lite_araddr: in std_logic_vector(7 downto 0);
    rxlo_lock: in std_logic;
    lmk_lock: in std_logic;
    sfp1_los: in std_logic;
    sfp0_los: in std_logic;
    cal_sw_ctrl: out std_logic_vector(7 downto 0);
    cal_sw_txrx: out std_logic;
    eth_bf_count: out std_logic_vector(31 downto 0);
    eth_tready_sync: out std_logic_vector(31 downto 0);
    power_det_sw: out std_logic_vector(4 downto 0);
    rst_reg: out std_logic_vector(31 downto 0);
    s_axi_lite_arready: out std_logic;
    s_axi_lite_awready: out std_logic;
    s_axi_lite_bresp: out std_logic_vector(1 downto 0);
    s_axi_lite_bvalid: out std_logic;
    s_axi_lite_rdata: out std_logic_vector(31 downto 0);
    s_axi_lite_rvalid: out std_logic;
    s_axi_lite_wready: out std_logic;
    test_interrupt: out std_logic;
    tx_en: out std_logic_vector(3 downto 0);
    wrapper_write_data: out std_logic_vector(31 downto 0)
  );
end hw_control;

architecture structural of hw_control is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "hw_control,sysgen_core_2013_3,{compilation=IP Catalog,block_icon_display=Default,family=artix7,part=xc7a200t,speed=-2,package=ffg1156,synthesis_tool=Vivado,synthesis_language=vhdl,hdl_library=work,proj_type=Vivado,synth_file=Vivado Synthesis Defaults,impl_file=Vivado Implementation Defaults,clock_loc=,clock_wrapper=Clock Enables,directory=./hw_control,testbench=0,create_interface_document=0,ce_clr=0,base_system_period_hardware=32.552,dcm_input_clock_period=10,base_system_period_simulink=1,sim_time=100,}";

  signal clk_1_net: std_logic;
  signal ce_1_net: std_logic;
  signal clk_net: std_logic;
  signal tready_not_sync_net: std_logic;
  signal wrapper_read_data_net: std_logic_vector(31 downto 0);
  signal ver_net: std_logic_vector(31 downto 0);
  signal txlo_lock_net: std_logic;
  signal temperature_net: std_logic_vector(15 downto 0);
  signal s_axi_lite_wvalid_net: std_logic;
  signal s_axi_lite_wdata_net: std_logic_vector(31 downto 0);
  signal s_axi_lite_rready_net: std_logic;
  signal s_axi_lite_bready_net: std_logic;
  signal s_axi_lite_awvalid_net: std_logic;
  signal s_axi_lite_awaddr_net: std_logic_vector(7 downto 0);
  signal s_axi_lite_arvalid_net: std_logic;
  signal s_axi_lite_aresetn_net: std_logic;
  signal s_axi_lite_araddr_net: std_logic_vector(7 downto 0);
  signal rxlo_lock_net: std_logic;
  signal lmk_lock_net: std_logic;
  signal sfp1_los_net: std_logic;
  signal sfp0_los_net: std_logic;
  signal cal_sw_ctrl_net: std_logic_vector(7 downto 0);
  signal cal_sw_txrx_net: std_logic;
  signal eth_bf_count_net: std_logic_vector(31 downto 0);
  signal eth_tready_sync_net: std_logic_vector(31 downto 0);
  signal power_det_sw_net: std_logic_vector(4 downto 0);
  signal rst_reg_net: std_logic_vector(31 downto 0);
  signal s_axi_lite_arready_net: std_logic;
  signal s_axi_lite_awready_net: std_logic;
  signal s_axi_lite_bresp_net: std_logic_vector(1 downto 0);
  signal s_axi_lite_bvalid_net: std_logic;
  signal s_axi_lite_rdata_net: std_logic_vector(31 downto 0);
  signal s_axi_lite_rvalid_net: std_logic;
  signal s_axi_lite_wready_net: std_logic;
  signal test_interrupt_net: std_logic;
  signal tx_en_net: std_logic_vector(3 downto 0);
  signal wrapper_write_data_net: std_logic_vector(31 downto 0);

begin
  clk_net <= clk;
  tready_not_sync_net <= tready_not_sync;
  wrapper_read_data_net <= wrapper_read_data;
  ver_net <= ver;
  txlo_lock_net <= txlo_lock;
  temperature_net <= temperature;
  s_axi_lite_wvalid_net <= s_axi_lite_wvalid;
  s_axi_lite_wdata_net <= s_axi_lite_wdata;
  s_axi_lite_rready_net <= s_axi_lite_rready;
  s_axi_lite_bready_net <= s_axi_lite_bready;
  s_axi_lite_awvalid_net <= s_axi_lite_awvalid;
  s_axi_lite_awaddr_net <= s_axi_lite_awaddr;
  s_axi_lite_arvalid_net <= s_axi_lite_arvalid;
  s_axi_lite_aresetn_net <= s_axi_lite_aresetn;
  s_axi_lite_araddr_net <= s_axi_lite_araddr;
  rxlo_lock_net <= rxlo_lock;
  lmk_lock_net <= lmk_lock;
  sfp1_los_net <= sfp1_los;
  sfp0_los_net <= sfp0_los;
  cal_sw_ctrl <= cal_sw_ctrl_net;
  cal_sw_txrx <= cal_sw_txrx_net;
  eth_bf_count <= eth_bf_count_net;
  eth_tready_sync <= eth_tready_sync_net;
  power_det_sw <= power_det_sw_net;
  rst_reg <= rst_reg_net;
  s_axi_lite_arready <= s_axi_lite_arready_net;
  s_axi_lite_awready <= s_axi_lite_awready_net;
  s_axi_lite_bresp <= s_axi_lite_bresp_net;
  s_axi_lite_bvalid <= s_axi_lite_bvalid_net;
  s_axi_lite_rdata <= s_axi_lite_rdata_net;
  s_axi_lite_rvalid <= s_axi_lite_rvalid_net;
  s_axi_lite_wready <= s_axi_lite_wready_net;
  test_interrupt <= test_interrupt_net;
  tx_en <= tx_en_net;
  wrapper_write_data <= wrapper_write_data_net;

  hw_control_struct: entity work.hw_control_struct
    port map (
      clk_1 => clk_1_net,
      ce_1 => ce_1_net,
      tready_not_sync => tready_not_sync_net,
      wrapper_read_data => wrapper_read_data_net,
      ver => ver_net,
      txlo_lock => txlo_lock_net,
      temperature => temperature_net,
      s_axi_lite_wvalid => s_axi_lite_wvalid_net,
      s_axi_lite_wdata => s_axi_lite_wdata_net,
      s_axi_lite_rready => s_axi_lite_rready_net,
      s_axi_lite_bready => s_axi_lite_bready_net,
      s_axi_lite_awvalid => s_axi_lite_awvalid_net,
      s_axi_lite_awaddr => s_axi_lite_awaddr_net,
      s_axi_lite_arvalid => s_axi_lite_arvalid_net,
      s_axi_lite_aresetn => s_axi_lite_aresetn_net,
      s_axi_lite_araddr => s_axi_lite_araddr_net,
      rxlo_lock => rxlo_lock_net,
      lmk_lock => lmk_lock_net,
      sfp1_los => sfp1_los_net,
      sfp0_los => sfp0_los_net,
      cal_sw_ctrl => cal_sw_ctrl_net,
      cal_sw_txrx => cal_sw_txrx_net,
      eth_bf_count => eth_bf_count_net,
      eth_tready_sync => eth_tready_sync_net,
      power_det_sw => power_det_sw_net,
      rst_reg => rst_reg_net,
      s_axi_lite_arready => s_axi_lite_arready_net,
      s_axi_lite_awready => s_axi_lite_awready_net,
      s_axi_lite_bresp => s_axi_lite_bresp_net,
      s_axi_lite_bvalid => s_axi_lite_bvalid_net,
      s_axi_lite_rdata => s_axi_lite_rdata_net,
      s_axi_lite_rvalid => s_axi_lite_rvalid_net,
      s_axi_lite_wready => s_axi_lite_wready_net,
      test_interrupt => test_interrupt_net,
      tx_en => tx_en_net,
      wrapper_write_data => wrapper_write_data_net
    );

  default_clock_driver_hw_control: entity work.default_clock_driver_hw_control
    port map (
      sysclk => clk_net,
      sysce => '1',
      sysce_clr => '0',
      clk_1 => clk_1_net,
      ce_1 => ce_1_net
    );
end structural;
