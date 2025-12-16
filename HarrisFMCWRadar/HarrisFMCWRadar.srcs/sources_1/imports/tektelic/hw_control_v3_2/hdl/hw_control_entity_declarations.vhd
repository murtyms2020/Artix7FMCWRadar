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

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_concat_8dce01b53f is
  port (
    in0 : in std_logic_vector((16 - 1) downto 0);
    in1 : in std_logic_vector((16 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_concat_8dce01b53f;
architecture behavior of sysgen_concat_8dce01b53f
is
  signal in0_1_23: unsigned((16 - 1) downto 0);
  signal in1_1_27: unsigned((16 - 1) downto 0);
  signal y_2_1_concat: unsigned((32 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_constant_27f6d3271c is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_constant_27f6d3271c;
architecture behavior of sysgen_constant_27f6d3271c
is
begin
  op <= "0000000000000000";
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.conv_pkg.all;

entity xldelay_hw_control is
   generic(width        : integer := -1;
           latency      : integer := -1;
           reg_retiming : integer :=  0;
           reset        : integer :=  0);
   port(d       : in std_logic_vector (width-1 downto 0);
        ce      : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        rst     : in std_logic;
        q       : out std_logic_vector (width-1 downto 0));

end xldelay_hw_control;

architecture behavior of xldelay_hw_control is
   component synth_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component; -- end component synth_reg

   component synth_reg_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;

   signal internal_ce  : std_logic;

begin
   internal_ce  <= ce and en;

   srl_delay: if ((reg_retiming = 0) and (reset = 0)) or (latency < 1) generate
     synth_reg_srl_inst : synth_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => '0',
         clk => clk,
         o   => q);
   end generate srl_delay;

   reg_delay: if ((reg_retiming = 1) or (reset = 1)) and (latency >= 1) generate
     synth_reg_reg_inst : synth_reg_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => rst,
         clk => clk,
         o   => q);
   end generate reg_delay;
end architecture behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_logical_ff3ce88d1d is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    d3 : in std_logic_vector((1 - 1) downto 0);
    d4 : in std_logic_vector((1 - 1) downto 0);
    d5 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_logical_ff3ce88d1d;
architecture behavior of sysgen_logical_ff3ce88d1d
is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal d3_1_33: std_logic;
  signal d4_1_36: std_logic;
  signal d5_1_39: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  d3_1_33 <= d3(0);
  d4_1_36 <= d4(0);
  d5_1_39 <= d5(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33 or d4_1_36 or d5_1_39;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library work;
use work.conv_pkg.all;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity sysgen_mcode_block_5e15e30d39 is
  port (
    txlo_lock : in std_logic_vector((1 - 1) downto 0);
    rxlo_lock : in std_logic_vector((1 - 1) downto 0);
    lmk_lock : in std_logic_vector((1 - 1) downto 0);
    awvalid : in std_logic_vector((1 - 1) downto 0);
    awaddr : in std_logic_vector((8 - 1) downto 0);
    wvalid : in std_logic_vector((1 - 1) downto 0);
    wdata : in std_logic_vector((32 - 1) downto 0);
    bready : in std_logic_vector((1 - 1) downto 0);
    arvalid : in std_logic_vector((1 - 1) downto 0);
    araddr : in std_logic_vector((8 - 1) downto 0);
    rready : in std_logic_vector((1 - 1) downto 0);
    aresetn : in std_logic_vector((1 - 1) downto 0);
    ver : in std_logic_vector((32 - 1) downto 0);
    temp_data : in std_logic_vector((32 - 1) downto 0);
    los0 : in std_logic_vector((1 - 1) downto 0);
    los1 : in std_logic_vector((1 - 1) downto 0);
    wrapper_read_data : in std_logic_vector((32 - 1) downto 0);
    tready_not_sync : in std_logic_vector((1 - 1) downto 0);
    reg0 : out std_logic_vector((32 - 1) downto 0);
    reg4 : out std_logic_vector((32 - 1) downto 0);
    reg8 : out std_logic_vector((32 - 1) downto 0);
    regc : out std_logic_vector((32 - 1) downto 0);
    reg10 : out std_logic_vector((32 - 1) downto 0);
    reg14 : out std_logic_vector((32 - 1) downto 0);
    reg18 : out std_logic_vector((32 - 1) downto 0);
    reg1c : out std_logic_vector((32 - 1) downto 0);
    reg20 : out std_logic_vector((32 - 1) downto 0);
    reg24 : out std_logic_vector((32 - 1) downto 0);
    reg28 : out std_logic_vector((32 - 1) downto 0);
    reg2c : out std_logic_vector((32 - 1) downto 0);
    reg30 : out std_logic_vector((32 - 1) downto 0);
    reg34 : out std_logic_vector((32 - 1) downto 0);
    reg38 : out std_logic_vector((32 - 1) downto 0);
    reg3c : out std_logic_vector((32 - 1) downto 0);
    reg40 : out std_logic_vector((32 - 1) downto 0);
    reg44 : out std_logic_vector((32 - 1) downto 0);
    reg48 : out std_logic_vector((32 - 1) downto 0);
    reg4c : out std_logic_vector((32 - 1) downto 0);
    we4 : out std_logic_vector((1 - 1) downto 0);
    wec : out std_logic_vector((1 - 1) downto 0);
    we18 : out std_logic_vector((1 - 1) downto 0);
    we1c : out std_logic_vector((1 - 1) downto 0);
    we20 : out std_logic_vector((1 - 1) downto 0);
    we2c : out std_logic_vector((1 - 1) downto 0);
    we34 : out std_logic_vector((1 - 1) downto 0);
    we40 : out std_logic_vector((1 - 1) downto 0);
    we48 : out std_logic_vector((1 - 1) downto 0);
    awready : out std_logic_vector((1 - 1) downto 0);
    wready : out std_logic_vector((1 - 1) downto 0);
    bvalid : out std_logic_vector((1 - 1) downto 0);
    bresp : out std_logic_vector((2 - 1) downto 0);
    arready : out std_logic_vector((1 - 1) downto 0);
    rvalid : out std_logic_vector((1 - 1) downto 0);
    rdata : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end sysgen_mcode_block_5e15e30d39;
architecture behavior of sysgen_mcode_block_5e15e30d39
is
  signal txlo_lock_2_5: unsigned((1 - 1) downto 0);
  signal rxlo_lock_3_5: unsigned((1 - 1) downto 0);
  signal lmk_lock_4_5: unsigned((1 - 1) downto 0);
  signal awvalid_5_5: boolean;
  signal awaddr_6_5: unsigned((8 - 1) downto 0);
  signal wvalid_7_5: boolean;
  signal wdata_8_5: unsigned((32 - 1) downto 0);
  signal bready_9_5: boolean;
  signal arvalid_10_5: boolean;
  signal araddr_11_5: unsigned((8 - 1) downto 0);
  signal rready_12_5: boolean;
  signal aresetn_13_5: boolean;
  signal ver_14_5: unsigned((32 - 1) downto 0);
  signal temp_data_15_5: unsigned((32 - 1) downto 0);
  signal los0_16_5: unsigned((1 - 1) downto 0);
  signal los1_17_5: unsigned((1 - 1) downto 0);
  signal wrapper_read_data_18_5: unsigned((32 - 1) downto 0);
  signal tready_not_sync_19_5: unsigned((1 - 1) downto 0);
  signal register0_43_27_next: unsigned((32 - 1) downto 0);
  signal register0_43_27: unsigned((32 - 1) downto 0);
  signal register0_43_27_en: std_logic;
  signal register0_43_27_reg_i: std_logic_vector((32 - 1) downto 0);
  signal register0_43_27_reg_o: std_logic_vector((32 - 1) downto 0);
  signal register0_43_27_reg_ce: std_logic;
  signal register4_44_27_next: unsigned((32 - 1) downto 0);
  signal register4_44_27: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal register8_45_27_next: unsigned((32 - 1) downto 0);
  signal register8_45_27: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal register8_45_27_en: std_logic;
  signal registerc_46_27_next: unsigned((32 - 1) downto 0);
  signal registerc_46_27: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal registerc_46_27_en: std_logic;
  signal register10_47_28_next: unsigned((32 - 1) downto 0);
  signal register10_47_28: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal register14_48_28_next: unsigned((32 - 1) downto 0);
  signal register14_48_28: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal register14_48_28_en: std_logic;
  signal register18_49_28_next: unsigned((32 - 1) downto 0);
  signal register18_49_28: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal register1c_50_28_next: unsigned((32 - 1) downto 0);
  signal register1c_50_28: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal register20_51_28_next: unsigned((32 - 1) downto 0);
  signal register20_51_28: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal register20_51_28_en: std_logic;
  signal register24_52_28_next: unsigned((32 - 1) downto 0);
  signal register24_52_28: unsigned((32 - 1) downto 0);
  signal register24_52_28_en: std_logic;
  signal register24_52_28_reg_i: std_logic_vector((32 - 1) downto 0);
  signal register24_52_28_reg_o: std_logic_vector((32 - 1) downto 0);
  signal register24_52_28_reg_ce: std_logic;
  signal register28_53_28_next: unsigned((32 - 1) downto 0);
  signal register28_53_28: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal register2c_54_28_next: unsigned((32 - 1) downto 0);
  signal register2c_54_28: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal register2c_54_28_en: std_logic;
  signal register30_55_28_next: unsigned((32 - 1) downto 0);
  signal register30_55_28: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal register30_55_28_en: std_logic;
  signal register34_56_28_next: unsigned((32 - 1) downto 0);
  signal register34_56_28: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal register34_56_28_en: std_logic;
  signal register38_57_28_next: unsigned((32 - 1) downto 0);
  signal register38_57_28: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal register38_57_28_en: std_logic;
  signal register3c_58_28_next: unsigned((32 - 1) downto 0);
  signal register3c_58_28: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal register3c_58_28_en: std_logic;
  signal register40_59_28_next: unsigned((32 - 1) downto 0);
  signal register40_59_28: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal register40_59_28_en: std_logic;
  signal register44_60_28_next: unsigned((32 - 1) downto 0);
  signal register44_60_28: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal register44_60_28_en: std_logic;
  signal register48_61_28_next: unsigned((32 - 1) downto 0);
  signal register48_61_28: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal register48_61_28_en: std_logic;
  signal register4c_62_28_next: unsigned((32 - 1) downto 0);
  signal register4c_62_28: unsigned((32 - 1) downto 0);
  signal register4c_62_28_en: std_logic;
  signal register4c_62_28_reg_i: std_logic_vector((32 - 1) downto 0);
  signal register4c_62_28_reg_o: std_logic_vector((32 - 1) downto 0);
  signal register4c_62_28_reg_ce: std_logic;
  signal channel_state_65_31_next: unsigned((32 - 1) downto 0);
  signal channel_state_65_31: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal cast_cast_88_18: unsigned((17 - 1) downto 0);
  signal cast_cast_88_31: unsigned((13 - 1) downto 0);
  signal cast_cast_88_43: unsigned((9 - 1) downto 0);
  signal cast_cast_88_59: unsigned((5 - 1) downto 0);
  signal cast_88_18: unsigned((21 - 1) downto 0);
  signal cast_88_31: unsigned((21 - 1) downto 0);
  signal cast_88_43: unsigned((21 - 1) downto 0);
  signal cast_88_59: unsigned((21 - 1) downto 0);
  signal cast_88_74: unsigned((21 - 1) downto 0);
  signal register18_88_5_addsub: unsigned((21 - 1) downto 0);
  signal bit_124_37: unsigned((32 - 1) downto 0);
  signal cast_cast_124_60: unsigned((2 - 1) downto 0);
  signal cast_124_37: unsigned((33 - 1) downto 0);
  signal cast_124_60: unsigned((33 - 1) downto 0);
  signal addsub_124_36: unsigned((33 - 1) downto 0);
  signal rdata_124_13_slice: unsigned((32 - 1) downto 0);
  signal rdata_join_94_5: unsigned((32 - 1) downto 0);
  signal rel_159_20: boolean;
  signal channel_state_join_159_17: unsigned((32 - 1) downto 0);
  signal rel_156_16: boolean;
  signal channel_state_join_156_13: unsigned((32 - 1) downto 0);
  signal register0_join_170_17: unsigned((32 - 1) downto 0);
  signal register0_join_170_17_en: std_logic;
  signal we2c_join_170_17: boolean;
  signal we1c_join_170_17: boolean;
  signal we34_join_170_17: boolean;
  signal we18_join_170_17: boolean;
  signal we20_join_170_17: boolean;
  signal wec_join_170_17: boolean;
  signal we40_join_170_17: boolean;
  signal we4_join_170_17: boolean;
  signal we48_join_170_17: boolean;
  signal register8_join_170_17: unsigned((32 - 1) downto 0);
  signal register8_join_170_17_en: std_logic;
  signal registerc_join_170_17: unsigned((32 - 1) downto 0);
  signal registerc_join_170_17_en: std_logic;
  signal register14_join_170_17: unsigned((32 - 1) downto 0);
  signal register14_join_170_17_en: std_logic;
  signal register20_join_170_17: unsigned((32 - 1) downto 0);
  signal register20_join_170_17_en: std_logic;
  signal register24_join_170_17: unsigned((32 - 1) downto 0);
  signal register24_join_170_17_en: std_logic;
  signal register2c_join_170_17: unsigned((32 - 1) downto 0);
  signal register2c_join_170_17_en: std_logic;
  signal register30_join_170_17: unsigned((32 - 1) downto 0);
  signal register30_join_170_17_en: std_logic;
  signal register34_join_170_17: unsigned((32 - 1) downto 0);
  signal register34_join_170_17_en: std_logic;
  signal register38_join_170_17: unsigned((32 - 1) downto 0);
  signal register38_join_170_17_en: std_logic;
  signal register3c_join_170_17: unsigned((32 - 1) downto 0);
  signal register3c_join_170_17_en: std_logic;
  signal register40_join_170_17: unsigned((32 - 1) downto 0);
  signal register40_join_170_17_en: std_logic;
  signal register44_join_170_17: unsigned((32 - 1) downto 0);
  signal register44_join_170_17_en: std_logic;
  signal register48_join_170_17: unsigned((32 - 1) downto 0);
  signal register48_join_170_17_en: std_logic;
  signal register4c_join_170_17: unsigned((32 - 1) downto 0);
  signal register4c_join_170_17_en: std_logic;
  signal rel_169_16: boolean;
  signal register0_join_169_13: unsigned((32 - 1) downto 0);
  signal register0_join_169_13_en: std_logic;
  signal we2c_join_169_13: boolean;
  signal we1c_join_169_13: boolean;
  signal register8_join_169_13: unsigned((32 - 1) downto 0);
  signal register8_join_169_13_en: std_logic;
  signal register14_join_169_13: unsigned((32 - 1) downto 0);
  signal register14_join_169_13_en: std_logic;
  signal we34_join_169_13: boolean;
  signal register38_join_169_13: unsigned((32 - 1) downto 0);
  signal register38_join_169_13_en: std_logic;
  signal register3c_join_169_13: unsigned((32 - 1) downto 0);
  signal register3c_join_169_13_en: std_logic;
  signal channel_state_join_169_13: unsigned((32 - 1) downto 0);
  signal register30_join_169_13: unsigned((32 - 1) downto 0);
  signal register30_join_169_13_en: std_logic;
  signal register24_join_169_13: unsigned((32 - 1) downto 0);
  signal register24_join_169_13_en: std_logic;
  signal we18_join_169_13: boolean;
  signal we20_join_169_13: boolean;
  signal wec_join_169_13: boolean;
  signal we40_join_169_13: boolean;
  signal registerc_join_169_13: unsigned((32 - 1) downto 0);
  signal registerc_join_169_13_en: std_logic;
  signal register20_join_169_13: unsigned((32 - 1) downto 0);
  signal register20_join_169_13_en: std_logic;
  signal register34_join_169_13: unsigned((32 - 1) downto 0);
  signal register34_join_169_13_en: std_logic;
  signal register44_join_169_13: unsigned((32 - 1) downto 0);
  signal register44_join_169_13_en: std_logic;
  signal we4_join_169_13: boolean;
  signal register40_join_169_13: unsigned((32 - 1) downto 0);
  signal register40_join_169_13_en: std_logic;
  signal register2c_join_169_13: unsigned((32 - 1) downto 0);
  signal register2c_join_169_13_en: std_logic;
  signal register4c_join_169_13: unsigned((32 - 1) downto 0);
  signal register4c_join_169_13_en: std_logic;
  signal we48_join_169_13: boolean;
  signal register48_join_169_13: unsigned((32 - 1) downto 0);
  signal register48_join_169_13_en: std_logic;
  signal rel_430_16: boolean;
  signal channel_state_join_430_13: unsigned((32 - 1) downto 0);
  signal channel_state_join_448_13: unsigned((32 - 1) downto 0);
  signal we2c_join_140_5: boolean;
  signal wready_join_140_5: boolean;
  signal we1c_join_140_5: boolean;
  signal bvalid_join_140_5: boolean;
  signal we34_join_140_5: boolean;
  signal channel_state_join_140_5: unsigned((32 - 1) downto 0);
  signal we18_join_140_5: boolean;
  signal we20_join_140_5: boolean;
  signal wec_join_140_5: boolean;
  signal we40_join_140_5: boolean;
  signal awready_join_140_5: boolean;
  signal we4_join_140_5: boolean;
  signal rvalid_join_140_5: boolean;
  signal arready_join_140_5: boolean;
  signal we48_join_140_5: boolean;
  signal register0_join_140_5: unsigned((32 - 1) downto 0);
  signal register0_join_140_5_en: std_logic;
  signal register8_join_140_5: unsigned((32 - 1) downto 0);
  signal register8_join_140_5_en: std_logic;
  signal register14_join_140_5: unsigned((32 - 1) downto 0);
  signal register14_join_140_5_en: std_logic;
  signal register38_join_140_5: unsigned((32 - 1) downto 0);
  signal register38_join_140_5_en: std_logic;
  signal register3c_join_140_5: unsigned((32 - 1) downto 0);
  signal register3c_join_140_5_en: std_logic;
  signal register30_join_140_5: unsigned((32 - 1) downto 0);
  signal register30_join_140_5_en: std_logic;
  signal register24_join_140_5: unsigned((32 - 1) downto 0);
  signal register24_join_140_5_en: std_logic;
  signal registerc_join_140_5: unsigned((32 - 1) downto 0);
  signal registerc_join_140_5_en: std_logic;
  signal register20_join_140_5: unsigned((32 - 1) downto 0);
  signal register20_join_140_5_en: std_logic;
  signal register34_join_140_5: unsigned((32 - 1) downto 0);
  signal register34_join_140_5_en: std_logic;
  signal register44_join_140_5: unsigned((32 - 1) downto 0);
  signal register44_join_140_5_en: std_logic;
  signal register40_join_140_5: unsigned((32 - 1) downto 0);
  signal register40_join_140_5_en: std_logic;
  signal register2c_join_140_5: unsigned((32 - 1) downto 0);
  signal register2c_join_140_5_en: std_logic;
  signal register4c_join_140_5: unsigned((32 - 1) downto 0);
  signal register4c_join_140_5_en: std_logic;
  signal register48_join_140_5: unsigned((32 - 1) downto 0);
  signal register48_join_140_5_en: std_logic;
  signal cast_register18_49_28_next: unsigned((32 - 1) downto 0);
begin
  txlo_lock_2_5 <= std_logic_vector_to_unsigned(txlo_lock);
  rxlo_lock_3_5 <= std_logic_vector_to_unsigned(rxlo_lock);
  lmk_lock_4_5 <= std_logic_vector_to_unsigned(lmk_lock);
  awvalid_5_5 <= ((awvalid) = "1");
  awaddr_6_5 <= std_logic_vector_to_unsigned(awaddr);
  wvalid_7_5 <= ((wvalid) = "1");
  wdata_8_5 <= std_logic_vector_to_unsigned(wdata);
  bready_9_5 <= ((bready) = "1");
  arvalid_10_5 <= ((arvalid) = "1");
  araddr_11_5 <= std_logic_vector_to_unsigned(araddr);
  rready_12_5 <= ((rready) = "1");
  aresetn_13_5 <= ((aresetn) = "1");
  ver_14_5 <= std_logic_vector_to_unsigned(ver);
  temp_data_15_5 <= std_logic_vector_to_unsigned(temp_data);
  los0_16_5 <= std_logic_vector_to_unsigned(los0);
  los1_17_5 <= std_logic_vector_to_unsigned(los1);
  wrapper_read_data_18_5 <= std_logic_vector_to_unsigned(wrapper_read_data);
  tready_not_sync_19_5 <= std_logic_vector_to_unsigned(tready_not_sync);
  register0_43_27_reg_i <= unsigned_to_std_logic_vector(register0_43_27_next);
  register0_43_27 <= std_logic_vector_to_unsigned(register0_43_27_reg_o);
  register0_43_27_reg_ce <= (ce and register0_43_27_en);
  register0_43_27_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"00000000000000000000000000001111", 
      latency => 1, 
      width => 32)
    port map (
      ce => register0_43_27_reg_ce, 
      clk => clk, 
      clr => clr, 
      i => register0_43_27_reg_i, 
      o => register0_43_27_reg_o);
  proc_register4_44_27: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        register4_44_27 <= register4_44_27_next;
      end if;
    end if;
  end process proc_register4_44_27;
  proc_register8_45_27: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (register8_45_27_en = '1')) then
        register8_45_27 <= register8_45_27_next;
      end if;
    end if;
  end process proc_register8_45_27;
  proc_registerc_46_27: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (registerc_46_27_en = '1')) then
        registerc_46_27 <= registerc_46_27_next;
      end if;
    end if;
  end process proc_registerc_46_27;
  proc_register10_47_28: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        register10_47_28 <= register10_47_28_next;
      end if;
    end if;
  end process proc_register10_47_28;
  proc_register14_48_28: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (register14_48_28_en = '1')) then
        register14_48_28 <= register14_48_28_next;
      end if;
    end if;
  end process proc_register14_48_28;
  proc_register18_49_28: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        register18_49_28 <= register18_49_28_next;
      end if;
    end if;
  end process proc_register18_49_28;
  proc_register1c_50_28: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        register1c_50_28 <= register1c_50_28_next;
      end if;
    end if;
  end process proc_register1c_50_28;
  proc_register20_51_28: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (register20_51_28_en = '1')) then
        register20_51_28 <= register20_51_28_next;
      end if;
    end if;
  end process proc_register20_51_28;
  register24_52_28_reg_i <= unsigned_to_std_logic_vector(register24_52_28_next);
  register24_52_28 <= std_logic_vector_to_unsigned(register24_52_28_reg_o);
  register24_52_28_reg_ce <= (ce and register24_52_28_en);
  register24_52_28_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"00000000000000001111111111111111", 
      latency => 1, 
      width => 32)
    port map (
      ce => register24_52_28_reg_ce, 
      clk => clk, 
      clr => clr, 
      i => register24_52_28_reg_i, 
      o => register24_52_28_reg_o);
  proc_register28_53_28: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        register28_53_28 <= register28_53_28_next;
      end if;
    end if;
  end process proc_register28_53_28;
  proc_register2c_54_28: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (register2c_54_28_en = '1')) then
        register2c_54_28 <= register2c_54_28_next;
      end if;
    end if;
  end process proc_register2c_54_28;
  proc_register30_55_28: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (register30_55_28_en = '1')) then
        register30_55_28 <= register30_55_28_next;
      end if;
    end if;
  end process proc_register30_55_28;
  proc_register34_56_28: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (register34_56_28_en = '1')) then
        register34_56_28 <= register34_56_28_next;
      end if;
    end if;
  end process proc_register34_56_28;
  proc_register38_57_28: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (register38_57_28_en = '1')) then
        register38_57_28 <= register38_57_28_next;
      end if;
    end if;
  end process proc_register38_57_28;
  proc_register3c_58_28: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (register3c_58_28_en = '1')) then
        register3c_58_28 <= register3c_58_28_next;
      end if;
    end if;
  end process proc_register3c_58_28;
  proc_register40_59_28: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (register40_59_28_en = '1')) then
        register40_59_28 <= register40_59_28_next;
      end if;
    end if;
  end process proc_register40_59_28;
  proc_register44_60_28: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (register44_60_28_en = '1')) then
        register44_60_28 <= register44_60_28_next;
      end if;
    end if;
  end process proc_register44_60_28;
  proc_register48_61_28: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (register48_61_28_en = '1')) then
        register48_61_28 <= register48_61_28_next;
      end if;
    end if;
  end process proc_register48_61_28;
  register4c_62_28_reg_i <= unsigned_to_std_logic_vector(register4c_62_28_next);
  register4c_62_28 <= std_logic_vector_to_unsigned(register4c_62_28_reg_o);
  register4c_62_28_reg_ce <= (ce and register4c_62_28_en);
  register4c_62_28_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"00000000000000001111111111111111", 
      latency => 1, 
      width => 32)
    port map (
      ce => register4c_62_28_reg_ce, 
      clk => clk, 
      clr => clr, 
      i => register4c_62_28_reg_i, 
      o => register4c_62_28_reg_o);
  proc_channel_state_65_31: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        channel_state_65_31 <= channel_state_65_31_next;
      end if;
    end if;
  end process proc_channel_state_65_31;
  cast_cast_88_18 <= u2u_cast(los1_17_5, 0, 17, 16);
  cast_cast_88_31 <= u2u_cast(los0_16_5, 0, 13, 12);
  cast_cast_88_43 <= u2u_cast(txlo_lock_2_5, 0, 9, 8);
  cast_cast_88_59 <= u2u_cast(rxlo_lock_3_5, 0, 5, 4);
  cast_88_18 <= u2u_cast(cast_cast_88_18, 0, 21, 0);
  cast_88_31 <= u2u_cast(cast_cast_88_31, 0, 21, 0);
  cast_88_43 <= u2u_cast(cast_cast_88_43, 0, 21, 0);
  cast_88_59 <= u2u_cast(cast_cast_88_59, 0, 21, 0);
  cast_88_74 <= u2u_cast(lmk_lock_4_5, 0, 21, 0);
  register18_88_5_addsub <= cast_88_18 + cast_88_31 + cast_88_43 + cast_88_59 + cast_88_74;
  bit_124_37 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(register38_57_28) and unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("11111111111111111111111111111101")));
  cast_cast_124_60 <= u2u_cast(tready_not_sync_19_5, 0, 2, 1);
  cast_124_37 <= u2u_cast(bit_124_37, 0, 33, 0);
  cast_124_60 <= u2u_cast(cast_cast_124_60, 0, 33, 0);
  addsub_124_36 <= cast_124_37 + cast_124_60;
  rdata_124_13_slice <= u2u_slice(addsub_124_36, 31, 0);
  proc_switch_94_5: process (araddr_11_5, rdata_124_13_slice, register0_43_27, register10_47_28, register14_48_28, register18_88_5_addsub, register1c_50_28, register20_51_28, register24_52_28, register30_55_28, register34_56_28, register3c_58_28, register40_59_28, register44_60_28, register48_61_28, register4c_62_28, register8_45_27, registerc_46_27, temp_data_15_5, ver_14_5, wrapper_read_data_18_5)
  is
  begin
    case araddr_11_5 is 
      when "00000000" =>
        rdata_join_94_5 <= register0_43_27;
      when "00000100" =>
        rdata_join_94_5 <= temp_data_15_5;
      when "00001000" =>
        rdata_join_94_5 <= register8_45_27;
      when "00001100" =>
        rdata_join_94_5 <= registerc_46_27;
      when "00010000" =>
        rdata_join_94_5 <= register10_47_28;
      when "00010100" =>
        rdata_join_94_5 <= register14_48_28;
      when "00011000" =>
        rdata_join_94_5 <= u2u_cast(register18_88_5_addsub, 0, 32, 0);
      when "00011100" =>
        rdata_join_94_5 <= register1c_50_28;
      when "00100000" =>
        rdata_join_94_5 <= register20_51_28;
      when "00100100" =>
        rdata_join_94_5 <= register24_52_28;
      when "00101000" =>
        rdata_join_94_5 <= ver_14_5;
      when "00101100" =>
        rdata_join_94_5 <= wrapper_read_data_18_5;
      when "00110000" =>
        rdata_join_94_5 <= register30_55_28;
      when "00110100" =>
        rdata_join_94_5 <= register34_56_28;
      when "00111000" =>
        rdata_join_94_5 <= rdata_124_13_slice;
      when "00111100" =>
        rdata_join_94_5 <= register3c_58_28;
      when "01000000" =>
        rdata_join_94_5 <= register40_59_28;
      when "01000100" =>
        rdata_join_94_5 <= register44_60_28;
      when "01001000" =>
        rdata_join_94_5 <= register48_61_28;
      when "01001100" =>
        rdata_join_94_5 <= register4c_62_28;
      when others =>
        rdata_join_94_5 <= std_logic_vector_to_unsigned("00000000000000000000000000000000");
    end case;
  end process proc_switch_94_5;
  rel_159_20 <= arvalid_10_5 = true;
  proc_if_159_17: process (channel_state_65_31, rel_159_20)
  is
  begin
    if rel_159_20 then
      channel_state_join_159_17 <= std_logic_vector_to_unsigned("00000000000000000000000000000100");
    else 
      channel_state_join_159_17 <= channel_state_65_31;
    end if;
  end process proc_if_159_17;
  rel_156_16 <= awvalid_5_5 = true;
  proc_if_156_13: process (channel_state_join_159_17, rel_156_16)
  is
  begin
    if rel_156_16 then
      channel_state_join_156_13 <= std_logic_vector_to_unsigned("00000000000000000000000000000001");
    else 
      channel_state_join_156_13 <= channel_state_join_159_17;
    end if;
  end process proc_if_156_13;
  proc_switch_170_17: process (awaddr_6_5, wdata_8_5)
  is
  begin
    case awaddr_6_5 is 
      when "00000000" =>
        register0_join_170_17_en <= '1';
      when "00000100" =>
        register0_join_170_17_en <= '0';
      when "00001000" =>
        register0_join_170_17_en <= '0';
      when "00001100" =>
        register0_join_170_17_en <= '0';
      when "00010000" =>
        register0_join_170_17_en <= '0';
      when "00010100" =>
        register0_join_170_17_en <= '0';
      when "00011000" =>
        register0_join_170_17_en <= '0';
      when "00011100" =>
        register0_join_170_17_en <= '0';
      when "00100000" =>
        register0_join_170_17_en <= '0';
      when "00100100" =>
        register0_join_170_17_en <= '0';
      when "00101000" =>
        register0_join_170_17_en <= '0';
      when "00101100" =>
        register0_join_170_17_en <= '0';
      when "00110000" =>
        register0_join_170_17_en <= '0';
      when "00110100" =>
        register0_join_170_17_en <= '0';
      when "00111000" =>
        register0_join_170_17_en <= '0';
      when "00111100" =>
        register0_join_170_17_en <= '0';
      when "01000000" =>
        register0_join_170_17_en <= '0';
      when "01000100" =>
        register0_join_170_17_en <= '0';
      when "01001000" =>
        register0_join_170_17_en <= '0';
      when "01001100" =>
        register0_join_170_17_en <= '0';
      when others =>
        register0_join_170_17_en <= '0';
    end case;
    register0_join_170_17 <= wdata_8_5;
    case awaddr_6_5 is 
      when "00000000" =>
        register8_join_170_17_en <= '0';
      when "00000100" =>
        register8_join_170_17_en <= '0';
      when "00001000" =>
        register8_join_170_17_en <= '1';
      when "00001100" =>
        register8_join_170_17_en <= '0';
      when "00010000" =>
        register8_join_170_17_en <= '0';
      when "00010100" =>
        register8_join_170_17_en <= '0';
      when "00011000" =>
        register8_join_170_17_en <= '0';
      when "00011100" =>
        register8_join_170_17_en <= '0';
      when "00100000" =>
        register8_join_170_17_en <= '0';
      when "00100100" =>
        register8_join_170_17_en <= '0';
      when "00101000" =>
        register8_join_170_17_en <= '0';
      when "00101100" =>
        register8_join_170_17_en <= '0';
      when "00110000" =>
        register8_join_170_17_en <= '0';
      when "00110100" =>
        register8_join_170_17_en <= '0';
      when "00111000" =>
        register8_join_170_17_en <= '0';
      when "00111100" =>
        register8_join_170_17_en <= '0';
      when "01000000" =>
        register8_join_170_17_en <= '0';
      when "01000100" =>
        register8_join_170_17_en <= '0';
      when "01001000" =>
        register8_join_170_17_en <= '0';
      when "01001100" =>
        register8_join_170_17_en <= '0';
      when others =>
        register8_join_170_17_en <= '0';
    end case;
    register8_join_170_17 <= wdata_8_5;
    case awaddr_6_5 is 
      when "00000000" =>
        registerc_join_170_17_en <= '0';
      when "00000100" =>
        registerc_join_170_17_en <= '0';
      when "00001000" =>
        registerc_join_170_17_en <= '0';
      when "00001100" =>
        registerc_join_170_17_en <= '1';
      when "00010000" =>
        registerc_join_170_17_en <= '0';
      when "00010100" =>
        registerc_join_170_17_en <= '0';
      when "00011000" =>
        registerc_join_170_17_en <= '0';
      when "00011100" =>
        registerc_join_170_17_en <= '0';
      when "00100000" =>
        registerc_join_170_17_en <= '0';
      when "00100100" =>
        registerc_join_170_17_en <= '0';
      when "00101000" =>
        registerc_join_170_17_en <= '0';
      when "00101100" =>
        registerc_join_170_17_en <= '0';
      when "00110000" =>
        registerc_join_170_17_en <= '0';
      when "00110100" =>
        registerc_join_170_17_en <= '0';
      when "00111000" =>
        registerc_join_170_17_en <= '0';
      when "00111100" =>
        registerc_join_170_17_en <= '0';
      when "01000000" =>
        registerc_join_170_17_en <= '0';
      when "01000100" =>
        registerc_join_170_17_en <= '0';
      when "01001000" =>
        registerc_join_170_17_en <= '0';
      when "01001100" =>
        registerc_join_170_17_en <= '0';
      when others =>
        registerc_join_170_17_en <= '0';
    end case;
    registerc_join_170_17 <= wdata_8_5;
    case awaddr_6_5 is 
      when "00000000" =>
        register14_join_170_17_en <= '0';
      when "00000100" =>
        register14_join_170_17_en <= '0';
      when "00001000" =>
        register14_join_170_17_en <= '0';
      when "00001100" =>
        register14_join_170_17_en <= '0';
      when "00010000" =>
        register14_join_170_17_en <= '0';
      when "00010100" =>
        register14_join_170_17_en <= '1';
      when "00011000" =>
        register14_join_170_17_en <= '0';
      when "00011100" =>
        register14_join_170_17_en <= '0';
      when "00100000" =>
        register14_join_170_17_en <= '0';
      when "00100100" =>
        register14_join_170_17_en <= '0';
      when "00101000" =>
        register14_join_170_17_en <= '0';
      when "00101100" =>
        register14_join_170_17_en <= '0';
      when "00110000" =>
        register14_join_170_17_en <= '0';
      when "00110100" =>
        register14_join_170_17_en <= '0';
      when "00111000" =>
        register14_join_170_17_en <= '0';
      when "00111100" =>
        register14_join_170_17_en <= '0';
      when "01000000" =>
        register14_join_170_17_en <= '0';
      when "01000100" =>
        register14_join_170_17_en <= '0';
      when "01001000" =>
        register14_join_170_17_en <= '0';
      when "01001100" =>
        register14_join_170_17_en <= '0';
      when others =>
        register14_join_170_17_en <= '0';
    end case;
    register14_join_170_17 <= wdata_8_5;
    case awaddr_6_5 is 
      when "00000000" =>
        register20_join_170_17_en <= '0';
      when "00000100" =>
        register20_join_170_17_en <= '0';
      when "00001000" =>
        register20_join_170_17_en <= '0';
      when "00001100" =>
        register20_join_170_17_en <= '0';
      when "00010000" =>
        register20_join_170_17_en <= '0';
      when "00010100" =>
        register20_join_170_17_en <= '0';
      when "00011000" =>
        register20_join_170_17_en <= '0';
      when "00011100" =>
        register20_join_170_17_en <= '0';
      when "00100000" =>
        register20_join_170_17_en <= '1';
      when "00100100" =>
        register20_join_170_17_en <= '0';
      when "00101000" =>
        register20_join_170_17_en <= '0';
      when "00101100" =>
        register20_join_170_17_en <= '0';
      when "00110000" =>
        register20_join_170_17_en <= '0';
      when "00110100" =>
        register20_join_170_17_en <= '0';
      when "00111000" =>
        register20_join_170_17_en <= '0';
      when "00111100" =>
        register20_join_170_17_en <= '0';
      when "01000000" =>
        register20_join_170_17_en <= '0';
      when "01000100" =>
        register20_join_170_17_en <= '0';
      when "01001000" =>
        register20_join_170_17_en <= '0';
      when "01001100" =>
        register20_join_170_17_en <= '0';
      when others =>
        register20_join_170_17_en <= '0';
    end case;
    register20_join_170_17 <= wdata_8_5;
    case awaddr_6_5 is 
      when "00000000" =>
        register24_join_170_17_en <= '0';
      when "00000100" =>
        register24_join_170_17_en <= '0';
      when "00001000" =>
        register24_join_170_17_en <= '0';
      when "00001100" =>
        register24_join_170_17_en <= '0';
      when "00010000" =>
        register24_join_170_17_en <= '0';
      when "00010100" =>
        register24_join_170_17_en <= '0';
      when "00011000" =>
        register24_join_170_17_en <= '0';
      when "00011100" =>
        register24_join_170_17_en <= '0';
      when "00100000" =>
        register24_join_170_17_en <= '0';
      when "00100100" =>
        register24_join_170_17_en <= '1';
      when "00101000" =>
        register24_join_170_17_en <= '0';
      when "00101100" =>
        register24_join_170_17_en <= '0';
      when "00110000" =>
        register24_join_170_17_en <= '0';
      when "00110100" =>
        register24_join_170_17_en <= '0';
      when "00111000" =>
        register24_join_170_17_en <= '0';
      when "00111100" =>
        register24_join_170_17_en <= '0';
      when "01000000" =>
        register24_join_170_17_en <= '0';
      when "01000100" =>
        register24_join_170_17_en <= '0';
      when "01001000" =>
        register24_join_170_17_en <= '0';
      when "01001100" =>
        register24_join_170_17_en <= '0';
      when others =>
        register24_join_170_17_en <= '0';
    end case;
    register24_join_170_17 <= wdata_8_5;
    case awaddr_6_5 is 
      when "00000000" =>
        register2c_join_170_17_en <= '0';
      when "00000100" =>
        register2c_join_170_17_en <= '0';
      when "00001000" =>
        register2c_join_170_17_en <= '0';
      when "00001100" =>
        register2c_join_170_17_en <= '0';
      when "00010000" =>
        register2c_join_170_17_en <= '0';
      when "00010100" =>
        register2c_join_170_17_en <= '0';
      when "00011000" =>
        register2c_join_170_17_en <= '0';
      when "00011100" =>
        register2c_join_170_17_en <= '0';
      when "00100000" =>
        register2c_join_170_17_en <= '0';
      when "00100100" =>
        register2c_join_170_17_en <= '0';
      when "00101000" =>
        register2c_join_170_17_en <= '0';
      when "00101100" =>
        register2c_join_170_17_en <= '1';
      when "00110000" =>
        register2c_join_170_17_en <= '0';
      when "00110100" =>
        register2c_join_170_17_en <= '0';
      when "00111000" =>
        register2c_join_170_17_en <= '0';
      when "00111100" =>
        register2c_join_170_17_en <= '0';
      when "01000000" =>
        register2c_join_170_17_en <= '0';
      when "01000100" =>
        register2c_join_170_17_en <= '0';
      when "01001000" =>
        register2c_join_170_17_en <= '0';
      when "01001100" =>
        register2c_join_170_17_en <= '0';
      when others =>
        register2c_join_170_17_en <= '0';
    end case;
    register2c_join_170_17 <= wdata_8_5;
    case awaddr_6_5 is 
      when "00000000" =>
        register30_join_170_17_en <= '0';
      when "00000100" =>
        register30_join_170_17_en <= '0';
      when "00001000" =>
        register30_join_170_17_en <= '0';
      when "00001100" =>
        register30_join_170_17_en <= '0';
      when "00010000" =>
        register30_join_170_17_en <= '0';
      when "00010100" =>
        register30_join_170_17_en <= '0';
      when "00011000" =>
        register30_join_170_17_en <= '0';
      when "00011100" =>
        register30_join_170_17_en <= '0';
      when "00100000" =>
        register30_join_170_17_en <= '0';
      when "00100100" =>
        register30_join_170_17_en <= '0';
      when "00101000" =>
        register30_join_170_17_en <= '0';
      when "00101100" =>
        register30_join_170_17_en <= '0';
      when "00110000" =>
        register30_join_170_17_en <= '1';
      when "00110100" =>
        register30_join_170_17_en <= '0';
      when "00111000" =>
        register30_join_170_17_en <= '0';
      when "00111100" =>
        register30_join_170_17_en <= '0';
      when "01000000" =>
        register30_join_170_17_en <= '0';
      when "01000100" =>
        register30_join_170_17_en <= '0';
      when "01001000" =>
        register30_join_170_17_en <= '0';
      when "01001100" =>
        register30_join_170_17_en <= '0';
      when others =>
        register30_join_170_17_en <= '0';
    end case;
    register30_join_170_17 <= wdata_8_5;
    case awaddr_6_5 is 
      when "00000000" =>
        register34_join_170_17_en <= '0';
      when "00000100" =>
        register34_join_170_17_en <= '0';
      when "00001000" =>
        register34_join_170_17_en <= '0';
      when "00001100" =>
        register34_join_170_17_en <= '0';
      when "00010000" =>
        register34_join_170_17_en <= '0';
      when "00010100" =>
        register34_join_170_17_en <= '0';
      when "00011000" =>
        register34_join_170_17_en <= '0';
      when "00011100" =>
        register34_join_170_17_en <= '0';
      when "00100000" =>
        register34_join_170_17_en <= '0';
      when "00100100" =>
        register34_join_170_17_en <= '0';
      when "00101000" =>
        register34_join_170_17_en <= '0';
      when "00101100" =>
        register34_join_170_17_en <= '0';
      when "00110000" =>
        register34_join_170_17_en <= '0';
      when "00110100" =>
        register34_join_170_17_en <= '1';
      when "00111000" =>
        register34_join_170_17_en <= '0';
      when "00111100" =>
        register34_join_170_17_en <= '0';
      when "01000000" =>
        register34_join_170_17_en <= '0';
      when "01000100" =>
        register34_join_170_17_en <= '0';
      when "01001000" =>
        register34_join_170_17_en <= '0';
      when "01001100" =>
        register34_join_170_17_en <= '0';
      when others =>
        register34_join_170_17_en <= '0';
    end case;
    register34_join_170_17 <= wdata_8_5;
    case awaddr_6_5 is 
      when "00000000" =>
        register38_join_170_17_en <= '0';
      when "00000100" =>
        register38_join_170_17_en <= '0';
      when "00001000" =>
        register38_join_170_17_en <= '0';
      when "00001100" =>
        register38_join_170_17_en <= '0';
      when "00010000" =>
        register38_join_170_17_en <= '0';
      when "00010100" =>
        register38_join_170_17_en <= '0';
      when "00011000" =>
        register38_join_170_17_en <= '0';
      when "00011100" =>
        register38_join_170_17_en <= '0';
      when "00100000" =>
        register38_join_170_17_en <= '0';
      when "00100100" =>
        register38_join_170_17_en <= '0';
      when "00101000" =>
        register38_join_170_17_en <= '0';
      when "00101100" =>
        register38_join_170_17_en <= '0';
      when "00110000" =>
        register38_join_170_17_en <= '0';
      when "00110100" =>
        register38_join_170_17_en <= '0';
      when "00111000" =>
        register38_join_170_17_en <= '1';
      when "00111100" =>
        register38_join_170_17_en <= '0';
      when "01000000" =>
        register38_join_170_17_en <= '0';
      when "01000100" =>
        register38_join_170_17_en <= '0';
      when "01001000" =>
        register38_join_170_17_en <= '0';
      when "01001100" =>
        register38_join_170_17_en <= '0';
      when others =>
        register38_join_170_17_en <= '0';
    end case;
    register38_join_170_17 <= wdata_8_5;
    case awaddr_6_5 is 
      when "00000000" =>
        register3c_join_170_17_en <= '0';
      when "00000100" =>
        register3c_join_170_17_en <= '0';
      when "00001000" =>
        register3c_join_170_17_en <= '0';
      when "00001100" =>
        register3c_join_170_17_en <= '0';
      when "00010000" =>
        register3c_join_170_17_en <= '0';
      when "00010100" =>
        register3c_join_170_17_en <= '0';
      when "00011000" =>
        register3c_join_170_17_en <= '0';
      when "00011100" =>
        register3c_join_170_17_en <= '0';
      when "00100000" =>
        register3c_join_170_17_en <= '0';
      when "00100100" =>
        register3c_join_170_17_en <= '0';
      when "00101000" =>
        register3c_join_170_17_en <= '0';
      when "00101100" =>
        register3c_join_170_17_en <= '0';
      when "00110000" =>
        register3c_join_170_17_en <= '0';
      when "00110100" =>
        register3c_join_170_17_en <= '0';
      when "00111000" =>
        register3c_join_170_17_en <= '0';
      when "00111100" =>
        register3c_join_170_17_en <= '1';
      when "01000000" =>
        register3c_join_170_17_en <= '0';
      when "01000100" =>
        register3c_join_170_17_en <= '0';
      when "01001000" =>
        register3c_join_170_17_en <= '0';
      when "01001100" =>
        register3c_join_170_17_en <= '0';
      when others =>
        register3c_join_170_17_en <= '0';
    end case;
    register3c_join_170_17 <= wdata_8_5;
    case awaddr_6_5 is 
      when "00000000" =>
        register40_join_170_17_en <= '0';
      when "00000100" =>
        register40_join_170_17_en <= '0';
      when "00001000" =>
        register40_join_170_17_en <= '0';
      when "00001100" =>
        register40_join_170_17_en <= '0';
      when "00010000" =>
        register40_join_170_17_en <= '0';
      when "00010100" =>
        register40_join_170_17_en <= '0';
      when "00011000" =>
        register40_join_170_17_en <= '0';
      when "00011100" =>
        register40_join_170_17_en <= '0';
      when "00100000" =>
        register40_join_170_17_en <= '0';
      when "00100100" =>
        register40_join_170_17_en <= '0';
      when "00101000" =>
        register40_join_170_17_en <= '0';
      when "00101100" =>
        register40_join_170_17_en <= '0';
      when "00110000" =>
        register40_join_170_17_en <= '0';
      when "00110100" =>
        register40_join_170_17_en <= '0';
      when "00111000" =>
        register40_join_170_17_en <= '0';
      when "00111100" =>
        register40_join_170_17_en <= '0';
      when "01000000" =>
        register40_join_170_17_en <= '1';
      when "01000100" =>
        register40_join_170_17_en <= '0';
      when "01001000" =>
        register40_join_170_17_en <= '0';
      when "01001100" =>
        register40_join_170_17_en <= '0';
      when others =>
        register40_join_170_17_en <= '0';
    end case;
    register40_join_170_17 <= wdata_8_5;
    case awaddr_6_5 is 
      when "00000000" =>
        register44_join_170_17_en <= '0';
      when "00000100" =>
        register44_join_170_17_en <= '0';
      when "00001000" =>
        register44_join_170_17_en <= '0';
      when "00001100" =>
        register44_join_170_17_en <= '0';
      when "00010000" =>
        register44_join_170_17_en <= '0';
      when "00010100" =>
        register44_join_170_17_en <= '0';
      when "00011000" =>
        register44_join_170_17_en <= '0';
      when "00011100" =>
        register44_join_170_17_en <= '0';
      when "00100000" =>
        register44_join_170_17_en <= '0';
      when "00100100" =>
        register44_join_170_17_en <= '0';
      when "00101000" =>
        register44_join_170_17_en <= '0';
      when "00101100" =>
        register44_join_170_17_en <= '0';
      when "00110000" =>
        register44_join_170_17_en <= '0';
      when "00110100" =>
        register44_join_170_17_en <= '0';
      when "00111000" =>
        register44_join_170_17_en <= '0';
      when "00111100" =>
        register44_join_170_17_en <= '0';
      when "01000000" =>
        register44_join_170_17_en <= '0';
      when "01000100" =>
        register44_join_170_17_en <= '1';
      when "01001000" =>
        register44_join_170_17_en <= '0';
      when "01001100" =>
        register44_join_170_17_en <= '0';
      when others =>
        register44_join_170_17_en <= '0';
    end case;
    register44_join_170_17 <= wdata_8_5;
    case awaddr_6_5 is 
      when "00000000" =>
        register48_join_170_17_en <= '0';
      when "00000100" =>
        register48_join_170_17_en <= '0';
      when "00001000" =>
        register48_join_170_17_en <= '0';
      when "00001100" =>
        register48_join_170_17_en <= '0';
      when "00010000" =>
        register48_join_170_17_en <= '0';
      when "00010100" =>
        register48_join_170_17_en <= '0';
      when "00011000" =>
        register48_join_170_17_en <= '0';
      when "00011100" =>
        register48_join_170_17_en <= '0';
      when "00100000" =>
        register48_join_170_17_en <= '0';
      when "00100100" =>
        register48_join_170_17_en <= '0';
      when "00101000" =>
        register48_join_170_17_en <= '0';
      when "00101100" =>
        register48_join_170_17_en <= '0';
      when "00110000" =>
        register48_join_170_17_en <= '0';
      when "00110100" =>
        register48_join_170_17_en <= '0';
      when "00111000" =>
        register48_join_170_17_en <= '0';
      when "00111100" =>
        register48_join_170_17_en <= '0';
      when "01000000" =>
        register48_join_170_17_en <= '0';
      when "01000100" =>
        register48_join_170_17_en <= '0';
      when "01001000" =>
        register48_join_170_17_en <= '1';
      when "01001100" =>
        register48_join_170_17_en <= '0';
      when others =>
        register48_join_170_17_en <= '0';
    end case;
    register48_join_170_17 <= wdata_8_5;
    case awaddr_6_5 is 
      when "00000000" =>
        register4c_join_170_17_en <= '0';
      when "00000100" =>
        register4c_join_170_17_en <= '0';
      when "00001000" =>
        register4c_join_170_17_en <= '0';
      when "00001100" =>
        register4c_join_170_17_en <= '0';
      when "00010000" =>
        register4c_join_170_17_en <= '0';
      when "00010100" =>
        register4c_join_170_17_en <= '0';
      when "00011000" =>
        register4c_join_170_17_en <= '0';
      when "00011100" =>
        register4c_join_170_17_en <= '0';
      when "00100000" =>
        register4c_join_170_17_en <= '0';
      when "00100100" =>
        register4c_join_170_17_en <= '0';
      when "00101000" =>
        register4c_join_170_17_en <= '0';
      when "00101100" =>
        register4c_join_170_17_en <= '0';
      when "00110000" =>
        register4c_join_170_17_en <= '0';
      when "00110100" =>
        register4c_join_170_17_en <= '0';
      when "00111000" =>
        register4c_join_170_17_en <= '0';
      when "00111100" =>
        register4c_join_170_17_en <= '0';
      when "01000000" =>
        register4c_join_170_17_en <= '0';
      when "01000100" =>
        register4c_join_170_17_en <= '0';
      when "01001000" =>
        register4c_join_170_17_en <= '0';
      when "01001100" =>
        register4c_join_170_17_en <= '1';
      when others =>
        register4c_join_170_17_en <= '0';
    end case;
    register4c_join_170_17 <= wdata_8_5;
    case awaddr_6_5 is 
      when "00000000" =>
        we2c_join_170_17 <= false;
        we1c_join_170_17 <= false;
        we34_join_170_17 <= false;
        we18_join_170_17 <= false;
        we20_join_170_17 <= false;
        wec_join_170_17 <= false;
        we40_join_170_17 <= false;
        we4_join_170_17 <= false;
        we48_join_170_17 <= false;
      when "00000100" =>
        we2c_join_170_17 <= false;
        we1c_join_170_17 <= false;
        we34_join_170_17 <= false;
        we18_join_170_17 <= false;
        we20_join_170_17 <= false;
        wec_join_170_17 <= false;
        we40_join_170_17 <= false;
        we4_join_170_17 <= true;
        we48_join_170_17 <= false;
      when "00001000" =>
        we2c_join_170_17 <= false;
        we1c_join_170_17 <= false;
        we34_join_170_17 <= false;
        we18_join_170_17 <= false;
        we20_join_170_17 <= false;
        wec_join_170_17 <= false;
        we40_join_170_17 <= false;
        we4_join_170_17 <= false;
        we48_join_170_17 <= false;
      when "00001100" =>
        we2c_join_170_17 <= false;
        we1c_join_170_17 <= false;
        we34_join_170_17 <= false;
        we18_join_170_17 <= false;
        we20_join_170_17 <= false;
        wec_join_170_17 <= true;
        we40_join_170_17 <= false;
        we4_join_170_17 <= false;
        we48_join_170_17 <= false;
      when "00010000" =>
        we2c_join_170_17 <= false;
        we1c_join_170_17 <= false;
        we34_join_170_17 <= false;
        we18_join_170_17 <= false;
        we20_join_170_17 <= false;
        wec_join_170_17 <= false;
        we40_join_170_17 <= false;
        we4_join_170_17 <= false;
        we48_join_170_17 <= false;
      when "00010100" =>
        we2c_join_170_17 <= false;
        we1c_join_170_17 <= false;
        we34_join_170_17 <= false;
        we18_join_170_17 <= false;
        we20_join_170_17 <= false;
        wec_join_170_17 <= false;
        we40_join_170_17 <= false;
        we4_join_170_17 <= false;
        we48_join_170_17 <= false;
      when "00011000" =>
        we2c_join_170_17 <= false;
        we1c_join_170_17 <= false;
        we34_join_170_17 <= false;
        we18_join_170_17 <= true;
        we20_join_170_17 <= false;
        wec_join_170_17 <= false;
        we40_join_170_17 <= false;
        we4_join_170_17 <= false;
        we48_join_170_17 <= false;
      when "00011100" =>
        we2c_join_170_17 <= false;
        we1c_join_170_17 <= true;
        we34_join_170_17 <= false;
        we18_join_170_17 <= false;
        we20_join_170_17 <= false;
        wec_join_170_17 <= false;
        we40_join_170_17 <= false;
        we4_join_170_17 <= false;
        we48_join_170_17 <= false;
      when "00100000" =>
        we2c_join_170_17 <= false;
        we1c_join_170_17 <= false;
        we34_join_170_17 <= false;
        we18_join_170_17 <= false;
        we20_join_170_17 <= true;
        wec_join_170_17 <= true;
        we40_join_170_17 <= false;
        we4_join_170_17 <= false;
        we48_join_170_17 <= false;
      when "00100100" =>
        we2c_join_170_17 <= false;
        we1c_join_170_17 <= false;
        we34_join_170_17 <= false;
        we18_join_170_17 <= false;
        we20_join_170_17 <= false;
        wec_join_170_17 <= false;
        we40_join_170_17 <= false;
        we4_join_170_17 <= false;
        we48_join_170_17 <= false;
      when "00101000" =>
        we2c_join_170_17 <= false;
        we1c_join_170_17 <= false;
        we34_join_170_17 <= false;
        we18_join_170_17 <= false;
        we20_join_170_17 <= false;
        wec_join_170_17 <= false;
        we40_join_170_17 <= false;
        we4_join_170_17 <= false;
        we48_join_170_17 <= false;
      when "00101100" =>
        we2c_join_170_17 <= true;
        we1c_join_170_17 <= false;
        we34_join_170_17 <= false;
        we18_join_170_17 <= false;
        we20_join_170_17 <= false;
        wec_join_170_17 <= true;
        we40_join_170_17 <= false;
        we4_join_170_17 <= false;
        we48_join_170_17 <= false;
      when "00110000" =>
        we2c_join_170_17 <= false;
        we1c_join_170_17 <= false;
        we34_join_170_17 <= false;
        we18_join_170_17 <= false;
        we20_join_170_17 <= false;
        wec_join_170_17 <= false;
        we40_join_170_17 <= false;
        we4_join_170_17 <= false;
        we48_join_170_17 <= false;
      when "00110100" =>
        we2c_join_170_17 <= false;
        we1c_join_170_17 <= false;
        we34_join_170_17 <= true;
        we18_join_170_17 <= false;
        we20_join_170_17 <= false;
        wec_join_170_17 <= true;
        we40_join_170_17 <= false;
        we4_join_170_17 <= false;
        we48_join_170_17 <= false;
      when "00111000" =>
        we2c_join_170_17 <= false;
        we1c_join_170_17 <= false;
        we34_join_170_17 <= false;
        we18_join_170_17 <= false;
        we20_join_170_17 <= false;
        wec_join_170_17 <= false;
        we40_join_170_17 <= false;
        we4_join_170_17 <= false;
        we48_join_170_17 <= false;
      when "00111100" =>
        we2c_join_170_17 <= false;
        we1c_join_170_17 <= false;
        we34_join_170_17 <= false;
        we18_join_170_17 <= false;
        we20_join_170_17 <= false;
        wec_join_170_17 <= false;
        we40_join_170_17 <= false;
        we4_join_170_17 <= false;
        we48_join_170_17 <= false;
      when "01000000" =>
        we2c_join_170_17 <= false;
        we1c_join_170_17 <= false;
        we34_join_170_17 <= false;
        we18_join_170_17 <= false;
        we20_join_170_17 <= false;
        wec_join_170_17 <= true;
        we40_join_170_17 <= true;
        we4_join_170_17 <= false;
        we48_join_170_17 <= false;
      when "01000100" =>
        we2c_join_170_17 <= false;
        we1c_join_170_17 <= false;
        we34_join_170_17 <= false;
        we18_join_170_17 <= false;
        we20_join_170_17 <= false;
        wec_join_170_17 <= false;
        we40_join_170_17 <= false;
        we4_join_170_17 <= false;
        we48_join_170_17 <= false;
      when "01001000" =>
        we2c_join_170_17 <= false;
        we1c_join_170_17 <= false;
        we34_join_170_17 <= false;
        we18_join_170_17 <= false;
        we20_join_170_17 <= false;
        wec_join_170_17 <= true;
        we40_join_170_17 <= false;
        we4_join_170_17 <= false;
        we48_join_170_17 <= true;
      when "01001100" =>
        we2c_join_170_17 <= false;
        we1c_join_170_17 <= false;
        we34_join_170_17 <= false;
        we18_join_170_17 <= false;
        we20_join_170_17 <= false;
        wec_join_170_17 <= false;
        we40_join_170_17 <= false;
        we4_join_170_17 <= false;
        we48_join_170_17 <= false;
      when others =>
        we2c_join_170_17 <= false;
        we1c_join_170_17 <= false;
        we34_join_170_17 <= false;
        we18_join_170_17 <= false;
        we20_join_170_17 <= false;
        wec_join_170_17 <= false;
        we40_join_170_17 <= false;
        we4_join_170_17 <= false;
        we48_join_170_17 <= false;
    end case;
  end process proc_switch_170_17;
  rel_169_16 <= wvalid_7_5 = true;
  proc_if_169_13: process (channel_state_65_31, register0_join_170_17, register0_join_170_17_en, register14_join_170_17, register14_join_170_17_en, register20_join_170_17, register20_join_170_17_en, register24_join_170_17, register24_join_170_17_en, register2c_join_170_17, register2c_join_170_17_en, register30_join_170_17, register30_join_170_17_en, register34_join_170_17, register34_join_170_17_en, register38_join_170_17, register38_join_170_17_en, register3c_join_170_17, register3c_join_170_17_en, register40_join_170_17, register40_join_170_17_en, register44_join_170_17, register44_join_170_17_en, register48_join_170_17, register48_join_170_17_en, register4c_join_170_17, register4c_join_170_17_en, register8_join_170_17, register8_join_170_17_en, registerc_join_170_17, registerc_join_170_17_en, rel_169_16, we18_join_170_17, we1c_join_170_17, we20_join_170_17, we2c_join_170_17, we34_join_170_17, we40_join_170_17, we48_join_170_17, we4_join_170_17, wec_join_170_17)
  is
  begin
    if rel_169_16 then
      register0_join_169_13_en <= register0_join_170_17_en;
    else 
      register0_join_169_13_en <= '0';
    end if;
    register0_join_169_13 <= register0_join_170_17;
    if rel_169_16 then
      register8_join_169_13_en <= register8_join_170_17_en;
    else 
      register8_join_169_13_en <= '0';
    end if;
    register8_join_169_13 <= register8_join_170_17;
    if rel_169_16 then
      register14_join_169_13_en <= register14_join_170_17_en;
    else 
      register14_join_169_13_en <= '0';
    end if;
    register14_join_169_13 <= register14_join_170_17;
    if rel_169_16 then
      register38_join_169_13_en <= register38_join_170_17_en;
    else 
      register38_join_169_13_en <= '0';
    end if;
    register38_join_169_13 <= register38_join_170_17;
    if rel_169_16 then
      register3c_join_169_13_en <= register3c_join_170_17_en;
    else 
      register3c_join_169_13_en <= '0';
    end if;
    register3c_join_169_13 <= register3c_join_170_17;
    if rel_169_16 then
      register30_join_169_13_en <= register30_join_170_17_en;
    else 
      register30_join_169_13_en <= '0';
    end if;
    register30_join_169_13 <= register30_join_170_17;
    if rel_169_16 then
      register24_join_169_13_en <= register24_join_170_17_en;
    else 
      register24_join_169_13_en <= '0';
    end if;
    register24_join_169_13 <= register24_join_170_17;
    if rel_169_16 then
      registerc_join_169_13_en <= registerc_join_170_17_en;
    else 
      registerc_join_169_13_en <= '0';
    end if;
    registerc_join_169_13 <= registerc_join_170_17;
    if rel_169_16 then
      register20_join_169_13_en <= register20_join_170_17_en;
    else 
      register20_join_169_13_en <= '0';
    end if;
    register20_join_169_13 <= register20_join_170_17;
    if rel_169_16 then
      register34_join_169_13_en <= register34_join_170_17_en;
    else 
      register34_join_169_13_en <= '0';
    end if;
    register34_join_169_13 <= register34_join_170_17;
    if rel_169_16 then
      register44_join_169_13_en <= register44_join_170_17_en;
    else 
      register44_join_169_13_en <= '0';
    end if;
    register44_join_169_13 <= register44_join_170_17;
    if rel_169_16 then
      register40_join_169_13_en <= register40_join_170_17_en;
    else 
      register40_join_169_13_en <= '0';
    end if;
    register40_join_169_13 <= register40_join_170_17;
    if rel_169_16 then
      register2c_join_169_13_en <= register2c_join_170_17_en;
    else 
      register2c_join_169_13_en <= '0';
    end if;
    register2c_join_169_13 <= register2c_join_170_17;
    if rel_169_16 then
      register4c_join_169_13_en <= register4c_join_170_17_en;
    else 
      register4c_join_169_13_en <= '0';
    end if;
    register4c_join_169_13 <= register4c_join_170_17;
    if rel_169_16 then
      register48_join_169_13_en <= register48_join_170_17_en;
    else 
      register48_join_169_13_en <= '0';
    end if;
    register48_join_169_13 <= register48_join_170_17;
    if rel_169_16 then
      we2c_join_169_13 <= we2c_join_170_17;
      we1c_join_169_13 <= we1c_join_170_17;
      we34_join_169_13 <= we34_join_170_17;
      channel_state_join_169_13 <= std_logic_vector_to_unsigned("00000000000000000000000000000010");
      we18_join_169_13 <= we18_join_170_17;
      we20_join_169_13 <= we20_join_170_17;
      wec_join_169_13 <= wec_join_170_17;
      we40_join_169_13 <= we40_join_170_17;
      we4_join_169_13 <= we4_join_170_17;
      we48_join_169_13 <= we48_join_170_17;
    else 
      we2c_join_169_13 <= false;
      we1c_join_169_13 <= false;
      we34_join_169_13 <= false;
      channel_state_join_169_13 <= channel_state_65_31;
      we18_join_169_13 <= false;
      we20_join_169_13 <= false;
      wec_join_169_13 <= false;
      we40_join_169_13 <= false;
      we4_join_169_13 <= false;
      we48_join_169_13 <= false;
    end if;
  end process proc_if_169_13;
  rel_430_16 <= bready_9_5 = true;
  proc_if_430_13: process (channel_state_65_31, rel_430_16)
  is
  begin
    if rel_430_16 then
      channel_state_join_430_13 <= std_logic_vector_to_unsigned("00000000000000000000000000000000");
    else 
      channel_state_join_430_13 <= channel_state_65_31;
    end if;
  end process proc_if_430_13;
  proc_if_448_13: process (channel_state_65_31, rready_12_5)
  is
  begin
    if rready_12_5 then
      channel_state_join_448_13 <= std_logic_vector_to_unsigned("00000000000000000000000000000000");
    else 
      channel_state_join_448_13 <= channel_state_65_31;
    end if;
  end process proc_if_448_13;
  proc_switch_140_5: process (channel_state_65_31, channel_state_join_156_13, channel_state_join_169_13, channel_state_join_430_13, channel_state_join_448_13, register0_join_169_13, register0_join_169_13_en, register14_join_169_13, register14_join_169_13_en, register20_join_169_13, register20_join_169_13_en, register24_join_169_13, register24_join_169_13_en, register2c_join_169_13, register2c_join_169_13_en, register30_join_169_13, register30_join_169_13_en, register34_join_169_13, register34_join_169_13_en, register38_join_169_13, register38_join_169_13_en, register3c_join_169_13, register3c_join_169_13_en, register40_join_169_13, register40_join_169_13_en, register44_join_169_13, register44_join_169_13_en, register48_join_169_13, register48_join_169_13_en, register4c_join_169_13, register4c_join_169_13_en, register8_join_169_13, register8_join_169_13_en, registerc_join_169_13, registerc_join_169_13_en, we18_join_169_13, we1c_join_169_13, we20_join_169_13, we2c_join_169_13, we34_join_169_13, we40_join_169_13, we48_join_169_13, we4_join_169_13, wec_join_169_13)
  is
  begin
    case channel_state_65_31 is 
      when "00000000000000000000000000000000" =>
        register0_join_140_5_en <= '0';
      when "00000000000000000000000000000001" =>
        register0_join_140_5_en <= register0_join_169_13_en;
      when "00000000000000000000000000000010" =>
        register0_join_140_5_en <= '0';
      when "00000000000000000000000000000100" =>
        register0_join_140_5_en <= '0';
      when others =>
        register0_join_140_5_en <= '0';
    end case;
    register0_join_140_5 <= register0_join_169_13;
    case channel_state_65_31 is 
      when "00000000000000000000000000000000" =>
        register8_join_140_5_en <= '0';
      when "00000000000000000000000000000001" =>
        register8_join_140_5_en <= register8_join_169_13_en;
      when "00000000000000000000000000000010" =>
        register8_join_140_5_en <= '0';
      when "00000000000000000000000000000100" =>
        register8_join_140_5_en <= '0';
      when others =>
        register8_join_140_5_en <= '0';
    end case;
    register8_join_140_5 <= register8_join_169_13;
    case channel_state_65_31 is 
      when "00000000000000000000000000000000" =>
        register14_join_140_5_en <= '0';
      when "00000000000000000000000000000001" =>
        register14_join_140_5_en <= register14_join_169_13_en;
      when "00000000000000000000000000000010" =>
        register14_join_140_5_en <= '0';
      when "00000000000000000000000000000100" =>
        register14_join_140_5_en <= '0';
      when others =>
        register14_join_140_5_en <= '0';
    end case;
    register14_join_140_5 <= register14_join_169_13;
    case channel_state_65_31 is 
      when "00000000000000000000000000000000" =>
        register38_join_140_5_en <= '0';
      when "00000000000000000000000000000001" =>
        register38_join_140_5_en <= register38_join_169_13_en;
      when "00000000000000000000000000000010" =>
        register38_join_140_5_en <= '0';
      when "00000000000000000000000000000100" =>
        register38_join_140_5_en <= '0';
      when others =>
        register38_join_140_5_en <= '0';
    end case;
    register38_join_140_5 <= register38_join_169_13;
    case channel_state_65_31 is 
      when "00000000000000000000000000000000" =>
        register3c_join_140_5_en <= '0';
      when "00000000000000000000000000000001" =>
        register3c_join_140_5_en <= register3c_join_169_13_en;
      when "00000000000000000000000000000010" =>
        register3c_join_140_5_en <= '0';
      when "00000000000000000000000000000100" =>
        register3c_join_140_5_en <= '0';
      when others =>
        register3c_join_140_5_en <= '0';
    end case;
    register3c_join_140_5 <= register3c_join_169_13;
    case channel_state_65_31 is 
      when "00000000000000000000000000000000" =>
        register30_join_140_5_en <= '0';
      when "00000000000000000000000000000001" =>
        register30_join_140_5_en <= register30_join_169_13_en;
      when "00000000000000000000000000000010" =>
        register30_join_140_5_en <= '0';
      when "00000000000000000000000000000100" =>
        register30_join_140_5_en <= '0';
      when others =>
        register30_join_140_5_en <= '0';
    end case;
    register30_join_140_5 <= register30_join_169_13;
    case channel_state_65_31 is 
      when "00000000000000000000000000000000" =>
        register24_join_140_5_en <= '0';
      when "00000000000000000000000000000001" =>
        register24_join_140_5_en <= register24_join_169_13_en;
      when "00000000000000000000000000000010" =>
        register24_join_140_5_en <= '0';
      when "00000000000000000000000000000100" =>
        register24_join_140_5_en <= '0';
      when others =>
        register24_join_140_5_en <= '0';
    end case;
    register24_join_140_5 <= register24_join_169_13;
    case channel_state_65_31 is 
      when "00000000000000000000000000000000" =>
        registerc_join_140_5_en <= '0';
      when "00000000000000000000000000000001" =>
        registerc_join_140_5_en <= registerc_join_169_13_en;
      when "00000000000000000000000000000010" =>
        registerc_join_140_5_en <= '0';
      when "00000000000000000000000000000100" =>
        registerc_join_140_5_en <= '0';
      when others =>
        registerc_join_140_5_en <= '0';
    end case;
    registerc_join_140_5 <= registerc_join_169_13;
    case channel_state_65_31 is 
      when "00000000000000000000000000000000" =>
        register20_join_140_5_en <= '0';
      when "00000000000000000000000000000001" =>
        register20_join_140_5_en <= register20_join_169_13_en;
      when "00000000000000000000000000000010" =>
        register20_join_140_5_en <= '0';
      when "00000000000000000000000000000100" =>
        register20_join_140_5_en <= '0';
      when others =>
        register20_join_140_5_en <= '0';
    end case;
    register20_join_140_5 <= register20_join_169_13;
    case channel_state_65_31 is 
      when "00000000000000000000000000000000" =>
        register34_join_140_5_en <= '0';
      when "00000000000000000000000000000001" =>
        register34_join_140_5_en <= register34_join_169_13_en;
      when "00000000000000000000000000000010" =>
        register34_join_140_5_en <= '0';
      when "00000000000000000000000000000100" =>
        register34_join_140_5_en <= '0';
      when others =>
        register34_join_140_5_en <= '0';
    end case;
    register34_join_140_5 <= register34_join_169_13;
    case channel_state_65_31 is 
      when "00000000000000000000000000000000" =>
        register44_join_140_5_en <= '0';
      when "00000000000000000000000000000001" =>
        register44_join_140_5_en <= register44_join_169_13_en;
      when "00000000000000000000000000000010" =>
        register44_join_140_5_en <= '0';
      when "00000000000000000000000000000100" =>
        register44_join_140_5_en <= '0';
      when others =>
        register44_join_140_5_en <= '0';
    end case;
    register44_join_140_5 <= register44_join_169_13;
    case channel_state_65_31 is 
      when "00000000000000000000000000000000" =>
        register40_join_140_5_en <= '0';
      when "00000000000000000000000000000001" =>
        register40_join_140_5_en <= register40_join_169_13_en;
      when "00000000000000000000000000000010" =>
        register40_join_140_5_en <= '0';
      when "00000000000000000000000000000100" =>
        register40_join_140_5_en <= '0';
      when others =>
        register40_join_140_5_en <= '0';
    end case;
    register40_join_140_5 <= register40_join_169_13;
    case channel_state_65_31 is 
      when "00000000000000000000000000000000" =>
        register2c_join_140_5_en <= '0';
      when "00000000000000000000000000000001" =>
        register2c_join_140_5_en <= register2c_join_169_13_en;
      when "00000000000000000000000000000010" =>
        register2c_join_140_5_en <= '0';
      when "00000000000000000000000000000100" =>
        register2c_join_140_5_en <= '0';
      when others =>
        register2c_join_140_5_en <= '0';
    end case;
    register2c_join_140_5 <= register2c_join_169_13;
    case channel_state_65_31 is 
      when "00000000000000000000000000000000" =>
        register4c_join_140_5_en <= '0';
      when "00000000000000000000000000000001" =>
        register4c_join_140_5_en <= register4c_join_169_13_en;
      when "00000000000000000000000000000010" =>
        register4c_join_140_5_en <= '0';
      when "00000000000000000000000000000100" =>
        register4c_join_140_5_en <= '0';
      when others =>
        register4c_join_140_5_en <= '0';
    end case;
    register4c_join_140_5 <= register4c_join_169_13;
    case channel_state_65_31 is 
      when "00000000000000000000000000000000" =>
        register48_join_140_5_en <= '0';
      when "00000000000000000000000000000001" =>
        register48_join_140_5_en <= register48_join_169_13_en;
      when "00000000000000000000000000000010" =>
        register48_join_140_5_en <= '0';
      when "00000000000000000000000000000100" =>
        register48_join_140_5_en <= '0';
      when others =>
        register48_join_140_5_en <= '0';
    end case;
    register48_join_140_5 <= register48_join_169_13;
    case channel_state_65_31 is 
      when "00000000000000000000000000000000" =>
        we2c_join_140_5 <= false;
        wready_join_140_5 <= false;
        we1c_join_140_5 <= false;
        bvalid_join_140_5 <= false;
        we34_join_140_5 <= false;
        channel_state_join_140_5 <= channel_state_join_156_13;
        we18_join_140_5 <= false;
        we20_join_140_5 <= false;
        wec_join_140_5 <= false;
        we40_join_140_5 <= false;
        awready_join_140_5 <= true;
        we4_join_140_5 <= false;
        rvalid_join_140_5 <= false;
        arready_join_140_5 <= true;
        we48_join_140_5 <= false;
      when "00000000000000000000000000000001" =>
        we2c_join_140_5 <= we2c_join_169_13;
        wready_join_140_5 <= true;
        we1c_join_140_5 <= we1c_join_169_13;
        bvalid_join_140_5 <= false;
        we34_join_140_5 <= we34_join_169_13;
        channel_state_join_140_5 <= channel_state_join_169_13;
        we18_join_140_5 <= we18_join_169_13;
        we20_join_140_5 <= we20_join_169_13;
        wec_join_140_5 <= wec_join_169_13;
        we40_join_140_5 <= we40_join_169_13;
        awready_join_140_5 <= false;
        we4_join_140_5 <= we4_join_169_13;
        rvalid_join_140_5 <= false;
        arready_join_140_5 <= false;
        we48_join_140_5 <= we48_join_169_13;
      when "00000000000000000000000000000010" =>
        we2c_join_140_5 <= false;
        wready_join_140_5 <= false;
        we1c_join_140_5 <= false;
        bvalid_join_140_5 <= true;
        we34_join_140_5 <= false;
        channel_state_join_140_5 <= channel_state_join_430_13;
        we18_join_140_5 <= false;
        we20_join_140_5 <= false;
        wec_join_140_5 <= false;
        we40_join_140_5 <= false;
        awready_join_140_5 <= false;
        we4_join_140_5 <= false;
        rvalid_join_140_5 <= false;
        arready_join_140_5 <= false;
        we48_join_140_5 <= false;
      when "00000000000000000000000000000100" =>
        we2c_join_140_5 <= false;
        wready_join_140_5 <= false;
        we1c_join_140_5 <= false;
        bvalid_join_140_5 <= false;
        we34_join_140_5 <= false;
        channel_state_join_140_5 <= channel_state_join_448_13;
        we18_join_140_5 <= false;
        we20_join_140_5 <= false;
        wec_join_140_5 <= false;
        we40_join_140_5 <= false;
        awready_join_140_5 <= false;
        we4_join_140_5 <= false;
        rvalid_join_140_5 <= true;
        arready_join_140_5 <= false;
        we48_join_140_5 <= false;
      when others =>
        we2c_join_140_5 <= false;
        wready_join_140_5 <= false;
        we1c_join_140_5 <= false;
        bvalid_join_140_5 <= false;
        we34_join_140_5 <= false;
        channel_state_join_140_5 <= channel_state_65_31;
        we18_join_140_5 <= false;
        we20_join_140_5 <= false;
        wec_join_140_5 <= false;
        we40_join_140_5 <= false;
        awready_join_140_5 <= false;
        we4_join_140_5 <= false;
        rvalid_join_140_5 <= false;
        arready_join_140_5 <= false;
        we48_join_140_5 <= false;
    end case;
  end process proc_switch_140_5;
  register0_43_27_next <= register0_join_140_5;
  register0_43_27_en <= register0_join_140_5_en;
  register4_44_27_next <= temp_data_15_5;
  register8_45_27_next <= register8_join_140_5;
  register8_45_27_en <= register8_join_140_5_en;
  registerc_46_27_next <= registerc_join_140_5;
  registerc_46_27_en <= registerc_join_140_5_en;
  register10_47_28_next <= register10_47_28;
  register14_48_28_next <= register14_join_140_5;
  register14_48_28_en <= register14_join_140_5_en;
  cast_register18_49_28_next <= u2u_cast(register18_88_5_addsub, 0, 32, 0);
  register18_49_28_next <= cast_register18_49_28_next;
  register1c_50_28_next <= register1c_50_28;
  register20_51_28_next <= register20_join_140_5;
  register20_51_28_en <= register20_join_140_5_en;
  register24_52_28_next <= register24_join_140_5;
  register24_52_28_en <= register24_join_140_5_en;
  register28_53_28_next <= ver_14_5;
  register2c_54_28_next <= register2c_join_140_5;
  register2c_54_28_en <= register2c_join_140_5_en;
  register30_55_28_next <= register30_join_140_5;
  register30_55_28_en <= register30_join_140_5_en;
  register34_56_28_next <= register34_join_140_5;
  register34_56_28_en <= register34_join_140_5_en;
  register38_57_28_next <= register38_join_140_5;
  register38_57_28_en <= register38_join_140_5_en;
  register3c_58_28_next <= register3c_join_140_5;
  register3c_58_28_en <= register3c_join_140_5_en;
  register40_59_28_next <= register40_join_140_5;
  register40_59_28_en <= register40_join_140_5_en;
  register44_60_28_next <= register44_join_140_5;
  register44_60_28_en <= register44_join_140_5_en;
  register48_61_28_next <= register48_join_140_5;
  register48_61_28_en <= register48_join_140_5_en;
  register4c_62_28_next <= register4c_join_140_5;
  register4c_62_28_en <= register4c_join_140_5_en;
  channel_state_65_31_next <= channel_state_join_140_5;
  reg0 <= unsigned_to_std_logic_vector(register0_43_27);
  reg4 <= unsigned_to_std_logic_vector(register4_44_27);
  reg8 <= unsigned_to_std_logic_vector(register8_45_27);
  regc <= unsigned_to_std_logic_vector(registerc_46_27);
  reg10 <= unsigned_to_std_logic_vector(register10_47_28);
  reg14 <= unsigned_to_std_logic_vector(register14_48_28);
  reg18 <= unsigned_to_std_logic_vector(register18_49_28);
  reg1c <= unsigned_to_std_logic_vector(register1c_50_28);
  reg20 <= unsigned_to_std_logic_vector(register20_51_28);
  reg24 <= unsigned_to_std_logic_vector(register24_52_28);
  reg28 <= unsigned_to_std_logic_vector(register28_53_28);
  reg2c <= unsigned_to_std_logic_vector(register2c_54_28);
  reg30 <= unsigned_to_std_logic_vector(register30_55_28);
  reg34 <= unsigned_to_std_logic_vector(register34_56_28);
  reg38 <= unsigned_to_std_logic_vector(register38_57_28);
  reg3c <= unsigned_to_std_logic_vector(register3c_58_28);
  reg40 <= unsigned_to_std_logic_vector(register40_59_28);
  reg44 <= unsigned_to_std_logic_vector(register44_60_28);
  reg48 <= unsigned_to_std_logic_vector(register48_61_28);
  reg4c <= unsigned_to_std_logic_vector(register4c_62_28);
  we4 <= boolean_to_vector(we4_join_140_5);
  wec <= boolean_to_vector(wec_join_140_5);
  we18 <= boolean_to_vector(we18_join_140_5);
  we1c <= boolean_to_vector(we1c_join_140_5);
  we20 <= boolean_to_vector(we20_join_140_5);
  we2c <= boolean_to_vector(we2c_join_140_5);
  we34 <= boolean_to_vector(we34_join_140_5);
  we40 <= boolean_to_vector(we40_join_140_5);
  we48 <= boolean_to_vector(we48_join_140_5);
  awready <= boolean_to_vector(awready_join_140_5);
  wready <= boolean_to_vector(wready_join_140_5);
  bvalid <= boolean_to_vector(bvalid_join_140_5);
  bresp <= "00";
  arready <= boolean_to_vector(arready_join_140_5);
  rvalid <= boolean_to_vector(rvalid_join_140_5);
  rdata <= unsigned_to_std_logic_vector(rdata_join_94_5);
end behavior;

library work;
use work.conv_pkg.all;

---------------------------------------------------------------------
--
--  Filename      : xlslice.vhd
--
--  Description   : VHDL description of a block that sets the output to a
--                  specified range of the input bits. The output is always
--                  set to an unsigned type with it's binary point at zero.
--
---------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
library work;
use work.conv_pkg.all;

entity xlslice_hw_control is
    generic (
        new_msb      : integer := 9;           -- position of new msb
        new_lsb      : integer := 1;           -- position of new lsb
        x_width      : integer := 16;          -- Width of x input
        y_width      : integer := 8);          -- Width of y output
    port (
        x : in std_logic_vector (x_width-1 downto 0);
        y : out std_logic_vector (y_width-1 downto 0));
end xlslice_hw_control;

architecture behavior of xlslice_hw_control is
begin
    y <= x(new_msb downto new_lsb);
end  behavior;

