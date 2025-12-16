-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Sun Dec 14 17:39:57 2025
-- Host        : murtyms-Z270X-Gaming-7 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/murtyms/Radar/HarrisFMCWRadar/HarrisFMCWRadar.gen/sources_1/bd/design_1/ip/design_1_gpmc_axi_bridge_0_1/design_1_gpmc_axi_bridge_0_1_stub.vhdl
-- Design      : design_1_gpmc_axi_bridge_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tffg1156-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_gpmc_axi_bridge_0_1 is
  Port ( 
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

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_gpmc_axi_bridge_0_1 : entity is "design_1_gpmc_axi_bridge_0_1,gpmc_axi_bridge,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of design_1_gpmc_axi_bridge_0_1 : entity is "design_1_gpmc_axi_bridge_0_1,gpmc_axi_bridge,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=gpmc_axi_bridge,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_gpmc_axi_bridge_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_gpmc_axi_bridge_0_1 : entity is "module_ref";
end design_1_gpmc_axi_bridge_0_1;

architecture stub of design_1_gpmc_axi_bridge_0_1 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,m_axi_lite_wready,m_axi_lite_rvalid,m_axi_lite_rresp[1:0],m_axi_lite_rdata[31:0],m_axi_lite_bvalid,m_axi_lite_bresp[1:0],m_axi_lite_awready,m_axi_lite_arready,m_axi_lite_aresetn,csn,wen,oen,a_d[15:0],advn,a[2:0],m_axi_lite_araddr[18:0],m_axi_lite_arvalid,m_axi_lite_awaddr[18:0],m_axi_lite_awvalid,m_axi_lite_bready,m_axi_lite_rready,m_axi_lite_wdata[31:0],m_axi_lite_wvalid,read_data_out[15:0],status[3:0],latched_addr_out[18:0]";
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axi_lite, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of m_axi_lite_wready : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite WREADY";
  attribute x_interface_mode of m_axi_lite_wready : signal is "master m_axi_lite";
  attribute x_interface_parameter of m_axi_lite_wready : signal is "XIL_INTERFACENAME m_axi_lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 19, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of m_axi_lite_rvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite RVALID";
  attribute x_interface_info of m_axi_lite_rresp : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite RRESP";
  attribute x_interface_info of m_axi_lite_rdata : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite RDATA";
  attribute x_interface_info of m_axi_lite_bvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite BVALID";
  attribute x_interface_info of m_axi_lite_bresp : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite BRESP";
  attribute x_interface_info of m_axi_lite_awready : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite AWREADY";
  attribute x_interface_info of m_axi_lite_arready : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite ARREADY";
  attribute x_interface_info of m_axi_lite_aresetn : signal is "xilinx.com:signal:reset:1.0 m_axi_lite_aresetn RST";
  attribute x_interface_mode of m_axi_lite_aresetn : signal is "slave m_axi_lite_aresetn";
  attribute x_interface_parameter of m_axi_lite_aresetn : signal is "XIL_INTERFACENAME m_axi_lite_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axi_lite_araddr : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite ARADDR";
  attribute x_interface_info of m_axi_lite_arvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite ARVALID";
  attribute x_interface_info of m_axi_lite_awaddr : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite AWADDR";
  attribute x_interface_info of m_axi_lite_awvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite AWVALID";
  attribute x_interface_info of m_axi_lite_bready : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite BREADY";
  attribute x_interface_info of m_axi_lite_rready : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite RREADY";
  attribute x_interface_info of m_axi_lite_wdata : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite WDATA";
  attribute x_interface_info of m_axi_lite_wvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_lite WVALID";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "gpmc_axi_bridge,Vivado 2025.2";
begin
end;
