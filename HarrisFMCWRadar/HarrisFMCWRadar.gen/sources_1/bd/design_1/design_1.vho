-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- -------------------------------------------------------------------------------
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-- DO NOT MODIFY THIS FILE.

-- MODULE VLNV: amd.com:blockdesign:design_1:1.0

-- The following code must appear in the VHDL architecture header.

-- COMP_TAG     ------ Begin cut for COMPONENT Declaration ------
COMPONENT design_1
  PORT (
    advn : IN STD_LOGIC;
    wen : IN STD_LOGIC;
    oen : IN STD_LOGIC;
    a_d : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    csn : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    CSN_0 : OUT STD_LOGIC;
    MISO_0 : IN STD_LOGIC;
    MOSI_0 : OUT STD_LOGIC;
    SCLK_0 : OUT STD_LOGIC;
    MISO_1 : IN STD_LOGIC;
    MOSI_1 : OUT STD_LOGIC;
    SCLK_1 : OUT STD_LOGIC;
    CSN_1 : OUT STD_LOGIC;
    MISO_2 : IN STD_LOGIC;
    SCLK_2 : OUT STD_LOGIC;
    MOSI_2 : OUT STD_LOGIC;
    CSN_2 : OUT STD_LOGIC;
    SCLK_3 : OUT STD_LOGIC;
    MOSI_3 : OUT STD_LOGIC;
    MISO_3 : IN STD_LOGIC;
    CSN_3 : OUT STD_LOGIC;
    SCLK_4 : OUT STD_LOGIC;
    MOSI_4 : OUT STD_LOGIC;
    MISO_4 : IN STD_LOGIC;
    CSN_4 : OUT STD_LOGIC;
    clk_25MHZ : IN STD_LOGIC;
    ext_reset_in_0 : IN STD_LOGIC;
    read_data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    fpga_led : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------  End cut for COMPONENT Declaration  ------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

-- INST_TAG     ------ Begin cut for INSTANTIATION Template ------
your_instance_name : design_1
  PORT MAP (
    advn => advn,
    wen => wen,
    oen => oen,
    a_d => a_d,
    csn => csn,
    a => a,
    CSN_0 => CSN_0,
    MISO_0 => MISO_0,
    MOSI_0 => MOSI_0,
    SCLK_0 => SCLK_0,
    MISO_1 => MISO_1,
    MOSI_1 => MOSI_1,
    SCLK_1 => SCLK_1,
    CSN_1 => CSN_1,
    MISO_2 => MISO_2,
    SCLK_2 => SCLK_2,
    MOSI_2 => MOSI_2,
    CSN_2 => CSN_2,
    SCLK_3 => SCLK_3,
    MOSI_3 => MOSI_3,
    MISO_3 => MISO_3,
    CSN_3 => CSN_3,
    SCLK_4 => SCLK_4,
    MOSI_4 => MOSI_4,
    MISO_4 => MISO_4,
    CSN_4 => CSN_4,
    clk_25MHZ => clk_25MHZ,
    ext_reset_in_0 => ext_reset_in_0,
    read_data_out => read_data_out,
    fpga_led => fpga_led
  );
-- INST_TAG_END ------  End cut for INSTANTIATION Template  ------

-- You must compile the wrapper file design_1.vhd when simulating
-- the module, design_1. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.
