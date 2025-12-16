// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sun Dec 14 17:39:57 2025
// Host        : murtyms-Z270X-Gaming-7 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/murtyms/Radar/HarrisFMCWRadar/HarrisFMCWRadar.gen/sources_1/bd/design_1/ip/design_1_gpmc_axi_bridge_0_1/design_1_gpmc_axi_bridge_0_1_stub.v
// Design      : design_1_gpmc_axi_bridge_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tffg1156-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_gpmc_axi_bridge_0_1,gpmc_axi_bridge,{}" *) (* core_generation_info = "design_1_gpmc_axi_bridge_0_1,gpmc_axi_bridge,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=gpmc_axi_bridge,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "gpmc_axi_bridge,Vivado 2025.2" *) 
module design_1_gpmc_axi_bridge_0_1(clk, m_axi_lite_wready, m_axi_lite_rvalid, 
  m_axi_lite_rresp, m_axi_lite_rdata, m_axi_lite_bvalid, m_axi_lite_bresp, 
  m_axi_lite_awready, m_axi_lite_arready, m_axi_lite_aresetn, csn, wen, oen, a_d, advn, a, 
  m_axi_lite_araddr, m_axi_lite_arvalid, m_axi_lite_awaddr, m_axi_lite_awvalid, 
  m_axi_lite_bready, m_axi_lite_rready, m_axi_lite_wdata, m_axi_lite_wvalid, read_data_out, 
  status, latched_addr_out)
/* synthesis syn_black_box black_box_pad_pin="m_axi_lite_wready,m_axi_lite_rvalid,m_axi_lite_rresp[1:0],m_axi_lite_rdata[31:0],m_axi_lite_bvalid,m_axi_lite_bresp[1:0],m_axi_lite_awready,m_axi_lite_arready,m_axi_lite_aresetn,csn,wen,oen,a_d[15:0],advn,a[2:0],m_axi_lite_araddr[18:0],m_axi_lite_arvalid,m_axi_lite_awaddr[18:0],m_axi_lite_awvalid,m_axi_lite_bready,m_axi_lite_rready,m_axi_lite_wdata[31:0],m_axi_lite_wvalid,read_data_out[15:0],status[3:0],latched_addr_out[18:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axi_lite, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lite WREADY" *) (* x_interface_mode = "master m_axi_lite" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi_lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 19, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input m_axi_lite_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lite RVALID" *) input m_axi_lite_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lite RRESP" *) input [1:0]m_axi_lite_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lite RDATA" *) input [31:0]m_axi_lite_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lite BVALID" *) input m_axi_lite_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lite BRESP" *) input [1:0]m_axi_lite_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lite AWREADY" *) input m_axi_lite_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lite ARREADY" *) input m_axi_lite_arready;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 m_axi_lite_aresetn RST" *) (* x_interface_mode = "slave m_axi_lite_aresetn" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi_lite_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_axi_lite_aresetn;
  input csn;
  input wen;
  input oen;
  input [15:0]a_d;
  input advn;
  input [2:0]a;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lite ARADDR" *) output [18:0]m_axi_lite_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lite ARVALID" *) output m_axi_lite_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lite AWADDR" *) output [18:0]m_axi_lite_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lite AWVALID" *) output m_axi_lite_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lite BREADY" *) output m_axi_lite_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lite RREADY" *) output m_axi_lite_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lite WDATA" *) output [31:0]m_axi_lite_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 m_axi_lite WVALID" *) output m_axi_lite_wvalid;
  output [15:0]read_data_out;
  output [3:0]status;
  output [18:0]latched_addr_out;
endmodule
