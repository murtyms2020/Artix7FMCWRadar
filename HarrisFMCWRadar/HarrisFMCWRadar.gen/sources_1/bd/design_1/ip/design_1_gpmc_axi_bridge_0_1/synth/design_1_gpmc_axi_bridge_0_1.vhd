-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
-- 
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

-- IP VLNV: xilinx.com:module_ref:gpmc_axi_bridge:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_gpmc_axi_bridge_0_1 IS
  PORT (
    clk : IN STD_LOGIC;
    m_axi_lite_wready : IN STD_LOGIC;
    m_axi_lite_rvalid : IN STD_LOGIC;
    m_axi_lite_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_lite_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_lite_bvalid : IN STD_LOGIC;
    m_axi_lite_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_lite_awready : IN STD_LOGIC;
    m_axi_lite_arready : IN STD_LOGIC;
    m_axi_lite_aresetn : IN STD_LOGIC;
    csn : IN STD_LOGIC;
    wen : IN STD_LOGIC;
    oen : IN STD_LOGIC;
    a_d : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    advn : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_lite_araddr : OUT STD_LOGIC_VECTOR(18 DOWNTO 0);
    m_axi_lite_arvalid : OUT STD_LOGIC;
    m_axi_lite_awaddr : OUT STD_LOGIC_VECTOR(18 DOWNTO 0);
    m_axi_lite_awvalid : OUT STD_LOGIC;
    m_axi_lite_bready : OUT STD_LOGIC;
    m_axi_lite_rready : OUT STD_LOGIC;
    m_axi_lite_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_lite_wvalid : OUT STD_LOGIC;
    read_data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    status : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    latched_addr_out : OUT STD_LOGIC_VECTOR(18 DOWNTO 0)
  );
END design_1_gpmc_axi_bridge_0_1;

ARCHITECTURE design_1_gpmc_axi_bridge_0_1_arch OF design_1_gpmc_axi_bridge_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_gpmc_axi_bridge_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT gpmc_axi_bridge IS
    PORT (
      clk : IN STD_LOGIC;
      m_axi_lite_wready : IN STD_LOGIC;
      m_axi_lite_rvalid : IN STD_LOGIC;
      m_axi_lite_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_lite_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_lite_bvalid : IN STD_LOGIC;
      m_axi_lite_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_lite_awready : IN STD_LOGIC;
      m_axi_lite_arready : IN STD_LOGIC;
      m_axi_lite_aresetn : IN STD_LOGIC;
      csn : IN STD_LOGIC;
      wen : IN STD_LOGIC;
      oen : IN STD_LOGIC;
      a_d : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      advn : IN STD_LOGIC;
      a : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_lite_araddr : OUT STD_LOGIC_VECTOR(18 DOWNTO 0);
      m_axi_lite_arvalid : OUT STD_LOGIC;
      m_axi_lite_awaddr : OUT STD_LOGIC_VECTOR(18 DOWNTO 0);
      m_axi_lite_awvalid : OUT STD_LOGIC;
      m_axi_lite_bready : OUT STD_LOGIC;
      m_axi_lite_rready : OUT STD_LOGIC;
      m_axi_lite_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_lite_wvalid : OUT STD_LOGIC;
      read_data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      status : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      latched_addr_out : OUT STD_LOGIC_VECTOR(18 DOWNTO 0)
    );
  END COMPONENT gpmc_axi_bridge;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_gpmc_axi_bridge_0_1_arch: ARCHITECTURE IS "gpmc_axi_bridge,Vivado 2025.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_gpmc_axi_bridge_0_1_arch : ARCHITECTURE IS "design_1_gpmc_axi_bridge_0_1,gpmc_axi_bridge,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_gpmc_axi_bridge_0_1_arch: ARCHITECTURE IS "design_1_gpmc_axi_bridge_0_1,gpmc_axi_bridge,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=gpmc_axi_bridge,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_gpmc_axi_bridge_0_1_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_MODE : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_MODE OF clk: SIGNAL IS "slave clk";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axi_lite, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lite_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lite ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lite_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 m_axi_lite_aresetn RST";
  ATTRIBUTE X_INTERFACE_MODE OF m_axi_lite_aresetn: SIGNAL IS "slave m_axi_lite_aresetn";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_lite_aresetn: SIGNAL IS "XIL_INTERFACENAME m_axi_lite_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lite_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lite ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lite_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lite ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lite_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lite AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lite_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lite AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lite_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lite AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lite_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lite BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lite_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lite BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lite_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lite BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lite_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lite RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lite_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lite RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lite_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lite RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lite_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lite RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lite_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lite WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lite_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lite WREADY";
  ATTRIBUTE X_INTERFACE_MODE OF m_axi_lite_wready: SIGNAL IS "master m_axi_lite";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_lite_wready: SIGNAL IS "XIL_INTERFACENAME m_axi_lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 19, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THRE" & 
"ADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_lite_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_lite WVALID";
BEGIN
  U0 : gpmc_axi_bridge
    PORT MAP (
      clk => clk,
      m_axi_lite_wready => m_axi_lite_wready,
      m_axi_lite_rvalid => m_axi_lite_rvalid,
      m_axi_lite_rresp => m_axi_lite_rresp,
      m_axi_lite_rdata => m_axi_lite_rdata,
      m_axi_lite_bvalid => m_axi_lite_bvalid,
      m_axi_lite_bresp => m_axi_lite_bresp,
      m_axi_lite_awready => m_axi_lite_awready,
      m_axi_lite_arready => m_axi_lite_arready,
      m_axi_lite_aresetn => m_axi_lite_aresetn,
      csn => csn,
      wen => wen,
      oen => oen,
      a_d => a_d,
      advn => advn,
      a => a,
      m_axi_lite_araddr => m_axi_lite_araddr,
      m_axi_lite_arvalid => m_axi_lite_arvalid,
      m_axi_lite_awaddr => m_axi_lite_awaddr,
      m_axi_lite_awvalid => m_axi_lite_awvalid,
      m_axi_lite_bready => m_axi_lite_bready,
      m_axi_lite_rready => m_axi_lite_rready,
      m_axi_lite_wdata => m_axi_lite_wdata,
      m_axi_lite_wvalid => m_axi_lite_wvalid,
      read_data_out => read_data_out,
      status => status,
      latched_addr_out => latched_addr_out
    );
END design_1_gpmc_axi_bridge_0_1_arch;
