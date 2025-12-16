// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sun Dec 14 17:39:57 2025
// Host        : murtyms-Z270X-Gaming-7 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/murtyms/Radar/HarrisFMCWRadar/HarrisFMCWRadar.gen/sources_1/bd/design_1/ip/design_1_gpmc_axi_bridge_0_1/design_1_gpmc_axi_bridge_0_1_sim_netlist.v
// Design      : design_1_gpmc_axi_bridge_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tffg1156-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_gpmc_axi_bridge_0_1,gpmc_axi_bridge,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "gpmc_axi_bridge,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_gpmc_axi_bridge_0_1
   (clk,
    m_axi_lite_wready,
    m_axi_lite_rvalid,
    m_axi_lite_rresp,
    m_axi_lite_rdata,
    m_axi_lite_bvalid,
    m_axi_lite_bresp,
    m_axi_lite_awready,
    m_axi_lite_arready,
    m_axi_lite_aresetn,
    csn,
    wen,
    oen,
    a_d,
    advn,
    a,
    m_axi_lite_araddr,
    m_axi_lite_arvalid,
    m_axi_lite_awaddr,
    m_axi_lite_awvalid,
    m_axi_lite_bready,
    m_axi_lite_rready,
    m_axi_lite_wdata,
    m_axi_lite_wvalid,
    read_data_out,
    status,
    latched_addr_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axi_lite, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
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

  wire \<const0> ;
  wire [2:0]a;
  wire [15:0]a_d;
  wire advn;
  wire clk;
  wire csn;
  wire [18:0]latched_addr_out;
  wire m_axi_lite_aresetn;
  wire m_axi_lite_arready;
  wire m_axi_lite_arvalid;
  wire m_axi_lite_awready;
  wire m_axi_lite_awvalid;
  wire m_axi_lite_bready;
  wire [1:0]m_axi_lite_bresp;
  wire m_axi_lite_bvalid;
  wire [31:0]m_axi_lite_rdata;
  wire m_axi_lite_rready;
  wire [1:0]m_axi_lite_rresp;
  wire m_axi_lite_rvalid;
  wire [31:0]m_axi_lite_wdata;
  wire m_axi_lite_wready;
  wire m_axi_lite_wvalid;
  wire oen;
  wire [15:0]read_data_out;
  wire wen;

  assign m_axi_lite_araddr[18:2] = latched_addr_out[17:1];
  assign m_axi_lite_araddr[1] = \<const0> ;
  assign m_axi_lite_araddr[0] = \<const0> ;
  assign m_axi_lite_awaddr[18:2] = latched_addr_out[17:1];
  assign m_axi_lite_awaddr[1] = \<const0> ;
  assign m_axi_lite_awaddr[0] = \<const0> ;
  assign status[3:2] = m_axi_lite_bresp;
  assign status[1:0] = m_axi_lite_rresp;
  GND GND
       (.G(\<const0> ));
  design_1_gpmc_axi_bridge_0_1_gpmc_axi_bridge U0
       (.a(a),
        .a_d(a_d),
        .advn(advn),
        .clk(clk),
        .csn(csn),
        .latched_addr_out(latched_addr_out),
        .m_axi_lite_aresetn(m_axi_lite_aresetn),
        .m_axi_lite_arready(m_axi_lite_arready),
        .m_axi_lite_arvalid(m_axi_lite_arvalid),
        .m_axi_lite_awready(m_axi_lite_awready),
        .m_axi_lite_awvalid(m_axi_lite_awvalid),
        .m_axi_lite_bready(m_axi_lite_bready),
        .m_axi_lite_bvalid(m_axi_lite_bvalid),
        .m_axi_lite_rdata(m_axi_lite_rdata),
        .m_axi_lite_rready(m_axi_lite_rready),
        .m_axi_lite_rvalid(m_axi_lite_rvalid),
        .m_axi_lite_wdata(m_axi_lite_wdata),
        .m_axi_lite_wready(m_axi_lite_wready),
        .m_axi_lite_wvalid(m_axi_lite_wvalid),
        .oen(oen),
        .read_data_out(read_data_out),
        .wen(wen));
endmodule

(* ORIG_REF_NAME = "gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_gpmc_axi_bridge
   (latched_addr_out,
    m_axi_lite_awvalid,
    m_axi_lite_wvalid,
    m_axi_lite_arvalid,
    m_axi_lite_rready,
    m_axi_lite_bready,
    m_axi_lite_wdata,
    read_data_out,
    m_axi_lite_awready,
    m_axi_lite_aresetn,
    m_axi_lite_wready,
    m_axi_lite_arready,
    m_axi_lite_rvalid,
    m_axi_lite_bvalid,
    clk,
    a_d,
    a,
    m_axi_lite_rdata,
    csn,
    advn,
    wen,
    oen);
  output [18:0]latched_addr_out;
  output m_axi_lite_awvalid;
  output m_axi_lite_wvalid;
  output m_axi_lite_arvalid;
  output m_axi_lite_rready;
  output m_axi_lite_bready;
  output [31:0]m_axi_lite_wdata;
  output [15:0]read_data_out;
  input m_axi_lite_awready;
  input m_axi_lite_aresetn;
  input m_axi_lite_wready;
  input m_axi_lite_arready;
  input m_axi_lite_rvalid;
  input m_axi_lite_bvalid;
  input clk;
  input [15:0]a_d;
  input [2:0]a;
  input [31:0]m_axi_lite_rdata;
  input csn;
  input advn;
  input wen;
  input oen;

  wire [2:0]a;
  wire [15:0]a_d;
  wire advn;
  wire clk;
  wire csn;
  wire [18:0]latched_addr_out;
  wire m_axi_lite_aresetn;
  wire m_axi_lite_arready;
  wire m_axi_lite_arvalid;
  wire m_axi_lite_awready;
  wire m_axi_lite_awvalid;
  wire m_axi_lite_bready;
  wire m_axi_lite_bvalid;
  wire [31:0]m_axi_lite_rdata;
  wire m_axi_lite_rready;
  wire m_axi_lite_rvalid;
  wire [31:0]m_axi_lite_wdata;
  wire m_axi_lite_wready;
  wire m_axi_lite_wvalid;
  wire oen;
  wire [15:0]read_data_out;
  wire wen;

  design_1_gpmc_axi_bridge_0_1_gpmc_axi_bridge_struct gpmc_axi_bridge_struct
       (.a(a),
        .a_d(a_d),
        .advn(advn),
        .clk(clk),
        .csn(csn),
        .m_axi_lite_aresetn(m_axi_lite_aresetn),
        .m_axi_lite_arready(m_axi_lite_arready),
        .m_axi_lite_arvalid(m_axi_lite_arvalid),
        .m_axi_lite_awready(m_axi_lite_awready),
        .m_axi_lite_awvalid(m_axi_lite_awvalid),
        .m_axi_lite_bready(m_axi_lite_bready),
        .m_axi_lite_bvalid(m_axi_lite_bvalid),
        .m_axi_lite_rdata(m_axi_lite_rdata),
        .m_axi_lite_rready(m_axi_lite_rready),
        .m_axi_lite_rvalid(m_axi_lite_rvalid),
        .m_axi_lite_wdata(m_axi_lite_wdata),
        .m_axi_lite_wready(m_axi_lite_wready),
        .m_axi_lite_wvalid(m_axi_lite_wvalid),
        .o(latched_addr_out),
        .oen(oen),
        .read_data_out(read_data_out),
        .wen(wen));
endmodule

(* ORIG_REF_NAME = "gpmc_axi_bridge_struct" *) 
module design_1_gpmc_axi_bridge_0_1_gpmc_axi_bridge_struct
   (o,
    m_axi_lite_awvalid,
    m_axi_lite_wvalid,
    m_axi_lite_arvalid,
    m_axi_lite_rready,
    m_axi_lite_bready,
    m_axi_lite_wdata,
    read_data_out,
    m_axi_lite_awready,
    m_axi_lite_aresetn,
    m_axi_lite_wready,
    m_axi_lite_arready,
    m_axi_lite_rvalid,
    m_axi_lite_bvalid,
    clk,
    a_d,
    a,
    m_axi_lite_rdata,
    csn,
    advn,
    wen,
    oen);
  output [18:0]o;
  output m_axi_lite_awvalid;
  output m_axi_lite_wvalid;
  output m_axi_lite_arvalid;
  output m_axi_lite_rready;
  output m_axi_lite_bready;
  output [31:0]m_axi_lite_wdata;
  output [15:0]read_data_out;
  input m_axi_lite_awready;
  input m_axi_lite_aresetn;
  input m_axi_lite_wready;
  input m_axi_lite_arready;
  input m_axi_lite_rvalid;
  input m_axi_lite_bvalid;
  input clk;
  input [15:0]a_d;
  input [2:0]a;
  input [31:0]m_axi_lite_rdata;
  input csn;
  input advn;
  input wen;
  input oen;

  wire [2:0]a;
  wire [15:0]a_d;
  wire advn;
  wire clk;
  wire csn;
  wire delay2_q_net_x0;
  wire logical12_y_net;
  wire logical13_y_net;
  wire logical14_y_net;
  wire logical2_y_net;
  wire logical_y_net;
  wire m_axi_lite_aresetn;
  wire m_axi_lite_arready;
  wire m_axi_lite_arvalid;
  wire m_axi_lite_awready;
  wire m_axi_lite_awvalid;
  wire m_axi_lite_bready;
  wire m_axi_lite_bvalid;
  wire [31:0]m_axi_lite_rdata;
  wire m_axi_lite_rready;
  wire m_axi_lite_rvalid;
  wire [31:0]m_axi_lite_wdata;
  wire m_axi_lite_wready;
  wire m_axi_lite_wvalid;
  wire [18:0]o;
  wire oen;
  wire [15:0]read_data_out;
  wire redge_det1_n_1;
  wire redge_det3_n_0;
  wire redge_det4_n_0;
  wire register10_q_net;
  wire register11_q_net;
  wire register12_q_net;
  wire register1_q_net;
  wire register2_q_net;
  wire register3_q_net;
  wire register4_q_net;
  wire [15:0]register5_q_net;
  wire [15:0]register6_q_net;
  wire [2:0]register7_q_net;
  wire [2:0]register8_q_net;
  wire register9_q_net;
  wire [31:0]wdata_lsw1_q_net;
  wire wen;

  design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized2 latched_addr
       (.ce(logical2_y_net),
        .clk(clk),
        .delay2_q_net_x0(delay2_q_net_x0),
        .\fd_prim_array[0].bit_is_0.fdre_comp (logical_y_net),
        .i({register8_q_net,register6_q_net}),
        .o(o),
        .register10_q_net(register10_q_net),
        .register4_q_net(register4_q_net));
  design_1_gpmc_axi_bridge_0_1_sysgen_mux_2dfa32ddae mux
       (.latched_addr_out(o[0]),
        .o(wdata_lsw1_q_net),
        .read_data_out(read_data_out));
  design_1_gpmc_axi_bridge_0_1_redge_det_f52227972b redge_det
       (.clk(clk),
        .logical13_y_net(logical13_y_net),
        .\reg_array[0].fde_used.u2 (logical_y_net),
        .register2_q_net(register2_q_net),
        .register4_q_net(register4_q_net));
  design_1_gpmc_axi_bridge_0_1_redge_det1_a880eba569 redge_det1
       (.clk(clk),
        .delay2_q_net_x0(delay2_q_net_x0),
        .logical12_y_net(logical12_y_net),
        .o(o[0]),
        .\reg_array[0].fde_used.u2 (redge_det1_n_1),
        .register10_q_net(register10_q_net),
        .register4_q_net(register4_q_net));
  design_1_gpmc_axi_bridge_0_1_redge_det2_7d56bee8e0 redge_det2
       (.clk(clk),
        .m_axi_lite_bready(m_axi_lite_bready),
        .m_axi_lite_bvalid(m_axi_lite_bvalid));
  design_1_gpmc_axi_bridge_0_1_redge_det3_74cd140bb8 redge_det3
       (.clk(clk),
        .logical14_y_net(logical14_y_net),
        .o(o[0]),
        .\reg_array[0].fde_used.u2 (redge_det3_n_0),
        .register11_q_net(register11_q_net),
        .register4_q_net(register4_q_net));
  design_1_gpmc_axi_bridge_0_1_redge_det4_cdc2ed7a05 redge_det4
       (.clk(clk),
        .m_axi_lite_arready(m_axi_lite_arready),
        .m_axi_lite_arready_0(redge_det4_n_0));
  design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge register1
       (.advn(advn),
        .clk(clk),
        .register1_q_net(register1_q_net));
  design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_0 register10
       (.clk(clk),
        .register10_q_net(register10_q_net),
        .register9_q_net(register9_q_net));
  design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_1 register11
       (.clk(clk),
        .register11_q_net(register11_q_net),
        .register12_q_net(register12_q_net));
  design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_2 register12
       (.clk(clk),
        .oen(oen),
        .register12_q_net(register12_q_net));
  design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_3 register2
       (.clk(clk),
        .register1_q_net(register1_q_net),
        .register2_q_net(register2_q_net));
  design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_4 register3
       (.clk(clk),
        .csn(csn),
        .register3_q_net(register3_q_net));
  design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_5 register4
       (.clk(clk),
        .logical12_y_net(logical12_y_net),
        .logical13_y_net(logical13_y_net),
        .logical14_y_net(logical14_y_net),
        .register10_q_net(register10_q_net),
        .register11_q_net(register11_q_net),
        .register2_q_net(register2_q_net),
        .register3_q_net(register3_q_net),
        .register4_q_net(register4_q_net));
  design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0 register5
       (.a_d(a_d),
        .clk(clk),
        .o(register5_q_net));
  design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0_6 register6
       (.clk(clk),
        .i(register5_q_net),
        .o(register6_q_net));
  design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized1 register7
       (.a(a),
        .clk(clk),
        .o(register7_q_net));
  design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized1_7 register8
       (.clk(clk),
        .i(register7_q_net),
        .o(register8_q_net));
  design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_8 register9
       (.clk(clk),
        .register9_q_net(register9_q_net),
        .wen(wen));
  design_1_gpmc_axi_bridge_0_1_sr_flop_27fd76287e sr_flop
       (.ce(logical2_y_net),
        .clk(clk),
        .m_axi_lite_aresetn(m_axi_lite_aresetn),
        .m_axi_lite_wready(m_axi_lite_wready),
        .m_axi_lite_wvalid(m_axi_lite_wvalid));
  design_1_gpmc_axi_bridge_0_1_sr_flop1_171797e57a sr_flop1
       (.ce(logical2_y_net),
        .clk(clk),
        .m_axi_lite_aresetn(m_axi_lite_aresetn),
        .m_axi_lite_awready(m_axi_lite_awready),
        .m_axi_lite_awvalid(m_axi_lite_awvalid));
  design_1_gpmc_axi_bridge_0_1_sr_flop2_88b8ff2137 sr_flop2
       (.clk(clk),
        .\fd_prim_array[0].bit_is_0.fdre_comp (redge_det3_n_0),
        .m_axi_lite_aresetn(m_axi_lite_aresetn),
        .m_axi_lite_arready(m_axi_lite_arready),
        .m_axi_lite_arvalid(m_axi_lite_arvalid));
  design_1_gpmc_axi_bridge_0_1_sr_flop3_37f193c616 sr_flop3
       (.clk(clk),
        .\fd_prim_array[0].bit_is_0.fdre_comp (redge_det4_n_0),
        .m_axi_lite_aresetn(m_axi_lite_aresetn),
        .m_axi_lite_rready(m_axi_lite_rready),
        .m_axi_lite_rvalid(m_axi_lite_rvalid));
  design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0_9 wdata_lsw
       (.clk(clk),
        .\fd_prim_array[15].bit_is_0.fdre_comp (redge_det1_n_1),
        .i(register6_q_net),
        .m_axi_lite_wdata(m_axi_lite_wdata[15:0]));
  design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized3 wdata_lsw1
       (.clk(clk),
        .m_axi_lite_rdata(m_axi_lite_rdata),
        .m_axi_lite_rvalid(m_axi_lite_rvalid),
        .o(wdata_lsw1_q_net));
  design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0_10 wdata_msw
       (.ce(logical2_y_net),
        .clk(clk),
        .i(register6_q_net),
        .m_axi_lite_wdata(m_axi_lite_wdata[31:16]));
endmodule

(* ORIG_REF_NAME = "redge_det1_a880eba569" *) 
module design_1_gpmc_axi_bridge_0_1_redge_det1_a880eba569
   (delay2_q_net_x0,
    \reg_array[0].fde_used.u2 ,
    logical12_y_net,
    clk,
    register4_q_net,
    register10_q_net,
    o);
  output delay2_q_net_x0;
  output \reg_array[0].fde_used.u2 ;
  input logical12_y_net;
  input clk;
  input register4_q_net;
  input register10_q_net;
  input [0:0]o;

  wire clk;
  wire delay2_q_net_x0;
  wire logical12_y_net;
  wire [0:0]o;
  wire \reg_array[0].fde_used.u2 ;
  wire register10_q_net;
  wire register4_q_net;

  design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_51 delay2
       (.clk(clk),
        .delay2_q_net_x0(delay2_q_net_x0),
        .logical12_y_net(logical12_y_net),
        .o(o),
        .\reg_array[0].fde_used.u2 (\reg_array[0].fde_used.u2 ),
        .register10_q_net(register10_q_net),
        .register4_q_net(register4_q_net));
endmodule

(* ORIG_REF_NAME = "redge_det2_7d56bee8e0" *) 
module design_1_gpmc_axi_bridge_0_1_redge_det2_7d56bee8e0
   (m_axi_lite_bready,
    m_axi_lite_bvalid,
    clk);
  output m_axi_lite_bready;
  input m_axi_lite_bvalid;
  input clk;

  wire clk;
  wire m_axi_lite_bready;
  wire m_axi_lite_bvalid;

  design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_48 delay2
       (.clk(clk),
        .m_axi_lite_bready(m_axi_lite_bready),
        .m_axi_lite_bvalid(m_axi_lite_bvalid));
endmodule

(* ORIG_REF_NAME = "redge_det3_74cd140bb8" *) 
module design_1_gpmc_axi_bridge_0_1_redge_det3_74cd140bb8
   (\reg_array[0].fde_used.u2 ,
    logical14_y_net,
    clk,
    register4_q_net,
    register11_q_net,
    o);
  output \reg_array[0].fde_used.u2 ;
  input logical14_y_net;
  input clk;
  input register4_q_net;
  input register11_q_net;
  input [0:0]o;

  wire clk;
  wire logical14_y_net;
  wire [0:0]o;
  wire \reg_array[0].fde_used.u2 ;
  wire register11_q_net;
  wire register4_q_net;

  design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_45 delay2
       (.clk(clk),
        .logical14_y_net(logical14_y_net),
        .o(o),
        .\reg_array[0].fde_used.u2 (\reg_array[0].fde_used.u2 ),
        .register11_q_net(register11_q_net),
        .register4_q_net(register4_q_net));
endmodule

(* ORIG_REF_NAME = "redge_det4_cdc2ed7a05" *) 
module design_1_gpmc_axi_bridge_0_1_redge_det4_cdc2ed7a05
   (m_axi_lite_arready_0,
    m_axi_lite_arready,
    clk);
  output m_axi_lite_arready_0;
  input m_axi_lite_arready;
  input clk;

  wire clk;
  wire m_axi_lite_arready;
  wire m_axi_lite_arready_0;

  design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge delay2
       (.clk(clk),
        .m_axi_lite_arready(m_axi_lite_arready),
        .m_axi_lite_arready_0(m_axi_lite_arready_0));
endmodule

(* ORIG_REF_NAME = "redge_det_f52227972b" *) 
module design_1_gpmc_axi_bridge_0_1_redge_det_f52227972b
   (\reg_array[0].fde_used.u2 ,
    logical13_y_net,
    clk,
    register4_q_net,
    register2_q_net);
  output \reg_array[0].fde_used.u2 ;
  input logical13_y_net;
  input clk;
  input register4_q_net;
  input register2_q_net;

  wire clk;
  wire logical13_y_net;
  wire \reg_array[0].fde_used.u2 ;
  wire register2_q_net;
  wire register4_q_net;

  design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_54 delay2
       (.clk(clk),
        .logical13_y_net(logical13_y_net),
        .\reg_array[0].fde_used.u2 (\reg_array[0].fde_used.u2 ),
        .register2_q_net(register2_q_net),
        .register4_q_net(register4_q_net));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_single_reg_w_init
   (m_axi_lite_rready,
    \fd_prim_array[0].bit_is_0.fdre_comp_0 ,
    clk,
    m_axi_lite_rvalid,
    m_axi_lite_aresetn);
  output m_axi_lite_rready;
  input \fd_prim_array[0].bit_is_0.fdre_comp_0 ;
  input clk;
  input m_axi_lite_rvalid;
  input m_axi_lite_aresetn;

  wire clk;
  wire \fd_prim_array[0].bit_is_0.fdre_comp_0 ;
  wire \fd_prim_array[0].bit_is_0.fdre_comp_i_1__6_n_0 ;
  wire m_axi_lite_aresetn;
  wire m_axi_lite_rready;
  wire m_axi_lite_rvalid;

  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[0].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .D(1'b1),
        .Q(m_axi_lite_rready),
        .R(\fd_prim_array[0].bit_is_0.fdre_comp_i_1__6_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \fd_prim_array[0].bit_is_0.fdre_comp_i_1__6 
       (.I0(m_axi_lite_rready),
        .I1(m_axi_lite_rvalid),
        .I2(m_axi_lite_aresetn),
        .O(\fd_prim_array[0].bit_is_0.fdre_comp_i_1__6_n_0 ));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_single_reg_w_init_16
   (m_axi_lite_arvalid,
    \fd_prim_array[0].bit_is_0.fdre_comp_0 ,
    clk,
    m_axi_lite_arready,
    m_axi_lite_aresetn);
  output m_axi_lite_arvalid;
  input \fd_prim_array[0].bit_is_0.fdre_comp_0 ;
  input clk;
  input m_axi_lite_arready;
  input m_axi_lite_aresetn;

  wire clk;
  wire \fd_prim_array[0].bit_is_0.fdre_comp_0 ;
  wire \fd_prim_array[0].bit_is_0.fdre_comp_i_1__5_n_0 ;
  wire m_axi_lite_aresetn;
  wire m_axi_lite_arready;
  wire m_axi_lite_arvalid;

  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[0].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .D(1'b1),
        .Q(m_axi_lite_arvalid),
        .R(\fd_prim_array[0].bit_is_0.fdre_comp_i_1__5_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \fd_prim_array[0].bit_is_0.fdre_comp_i_1__5 
       (.I0(m_axi_lite_arvalid),
        .I1(m_axi_lite_arready),
        .I2(m_axi_lite_aresetn),
        .O(\fd_prim_array[0].bit_is_0.fdre_comp_i_1__5_n_0 ));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_single_reg_w_init_19
   (m_axi_lite_awvalid,
    ce,
    clk,
    m_axi_lite_awready,
    m_axi_lite_aresetn);
  output m_axi_lite_awvalid;
  input ce;
  input clk;
  input m_axi_lite_awready;
  input m_axi_lite_aresetn;

  wire ce;
  wire clk;
  wire \fd_prim_array[0].bit_is_0.fdre_comp_i_1__3_n_0 ;
  wire m_axi_lite_aresetn;
  wire m_axi_lite_awready;
  wire m_axi_lite_awvalid;

  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[0].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(ce),
        .D(1'b1),
        .Q(m_axi_lite_awvalid),
        .R(\fd_prim_array[0].bit_is_0.fdre_comp_i_1__3_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \fd_prim_array[0].bit_is_0.fdre_comp_i_1__3 
       (.I0(m_axi_lite_awvalid),
        .I1(m_axi_lite_awready),
        .I2(m_axi_lite_aresetn),
        .O(\fd_prim_array[0].bit_is_0.fdre_comp_i_1__3_n_0 ));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_single_reg_w_init_22
   (m_axi_lite_wvalid,
    ce,
    clk,
    m_axi_lite_wready,
    m_axi_lite_aresetn);
  output m_axi_lite_wvalid;
  input ce;
  input clk;
  input m_axi_lite_wready;
  input m_axi_lite_aresetn;

  wire ce;
  wire clk;
  wire \fd_prim_array[0].bit_is_0.fdre_comp_i_1__4_n_0 ;
  wire m_axi_lite_aresetn;
  wire m_axi_lite_wready;
  wire m_axi_lite_wvalid;

  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[0].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(ce),
        .D(1'b1),
        .Q(m_axi_lite_wvalid),
        .R(\fd_prim_array[0].bit_is_0.fdre_comp_i_1__4_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \fd_prim_array[0].bit_is_0.fdre_comp_i_1__4 
       (.I0(m_axi_lite_wvalid),
        .I1(m_axi_lite_wready),
        .I2(m_axi_lite_aresetn),
        .O(\fd_prim_array[0].bit_is_0.fdre_comp_i_1__4_n_0 ));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_single_reg_w_init_24
   (register9_q_net,
    clk,
    wen);
  output register9_q_net;
  input clk;
  input wen;

  wire clk;
  wire inverter2_op_net;
  wire register9_q_net;
  wire wen;

  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[0].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(inverter2_op_net),
        .Q(register9_q_net),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \fd_prim_array[0].bit_is_0.fdre_comp_i_1__1 
       (.I0(wen),
        .O(inverter2_op_net));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_single_reg_w_init_32
   (\fd_prim_array[0].bit_is_0.fdre_comp_0 ,
    logical12_y_net,
    logical13_y_net,
    logical14_y_net,
    register3_q_net,
    clk,
    register10_q_net,
    register2_q_net,
    register11_q_net);
  output \fd_prim_array[0].bit_is_0.fdre_comp_0 ;
  output logical12_y_net;
  output logical13_y_net;
  output logical14_y_net;
  input register3_q_net;
  input clk;
  input register10_q_net;
  input register2_q_net;
  input register11_q_net;

  wire clk;
  wire \fd_prim_array[0].bit_is_0.fdre_comp_0 ;
  wire logical12_y_net;
  wire logical13_y_net;
  wire logical14_y_net;
  wire register10_q_net;
  wire register11_q_net;
  wire register2_q_net;
  wire register3_q_net;

  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[0].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(register3_q_net),
        .Q(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg_array[0].fde_used.u2_i_1 
       (.I0(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .I1(register10_q_net),
        .O(logical12_y_net));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg_array[0].fde_used.u2_i_1__0 
       (.I0(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .I1(register2_q_net),
        .O(logical13_y_net));
  LUT2 #(
    .INIT(4'h8)) 
    \reg_array[0].fde_used.u2_i_1__1 
       (.I0(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .I1(register11_q_net),
        .O(logical14_y_net));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_single_reg_w_init_34
   (register3_q_net,
    clk,
    csn);
  output register3_q_net;
  input clk;
  input csn;

  wire clk;
  wire csn;
  wire inverter_op_net;
  wire register3_q_net;

  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[0].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(inverter_op_net),
        .Q(register3_q_net),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \fd_prim_array[0].bit_is_0.fdre_comp_i_1 
       (.I0(csn),
        .O(inverter_op_net));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_single_reg_w_init_36
   (register2_q_net,
    register1_q_net,
    clk);
  output register2_q_net;
  input register1_q_net;
  input clk;

  wire clk;
  wire register1_q_net;
  wire register2_q_net;

  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[0].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(register1_q_net),
        .Q(register2_q_net),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_single_reg_w_init_38
   (register12_q_net,
    clk,
    oen);
  output register12_q_net;
  input clk;
  input oen;

  wire clk;
  wire inverter4_op_net;
  wire oen;
  wire register12_q_net;

  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[0].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(inverter4_op_net),
        .Q(register12_q_net),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \fd_prim_array[0].bit_is_0.fdre_comp_i_1__2 
       (.I0(oen),
        .O(inverter4_op_net));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_single_reg_w_init_40
   (register11_q_net,
    register12_q_net,
    clk);
  output register11_q_net;
  input register12_q_net;
  input clk;

  wire clk;
  wire register11_q_net;
  wire register12_q_net;

  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[0].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(register12_q_net),
        .Q(register11_q_net),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_single_reg_w_init_42
   (register10_q_net,
    register9_q_net,
    clk);
  output register10_q_net;
  input register9_q_net;
  input clk;

  wire clk;
  wire register10_q_net;
  wire register9_q_net;

  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[0].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(register9_q_net),
        .Q(register10_q_net),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_single_reg_w_init_44
   (register1_q_net,
    clk,
    advn);
  output register1_q_net;
  input clk;
  input advn;

  wire advn;
  wire clk;
  wire inverter1_op_net;
  wire register1_q_net;

  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[0].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(inverter1_op_net),
        .Q(register1_q_net),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \fd_prim_array[0].bit_is_0.fdre_comp_i_1__0 
       (.I0(advn),
        .O(inverter1_op_net));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1
   (m_axi_lite_wdata,
    ce,
    i,
    clk);
  output [15:0]m_axi_lite_wdata;
  input ce;
  input [15:0]i;
  input clk;

  wire ce;
  wire clk;
  wire [15:0]i;
  wire [15:0]m_axi_lite_wdata;

  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[0].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(ce),
        .D(i[0]),
        .Q(m_axi_lite_wdata[0]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[10].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(ce),
        .D(i[10]),
        .Q(m_axi_lite_wdata[10]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[11].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(ce),
        .D(i[11]),
        .Q(m_axi_lite_wdata[11]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[12].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(ce),
        .D(i[12]),
        .Q(m_axi_lite_wdata[12]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[13].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(ce),
        .D(i[13]),
        .Q(m_axi_lite_wdata[13]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[14].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(ce),
        .D(i[14]),
        .Q(m_axi_lite_wdata[14]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[15].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(ce),
        .D(i[15]),
        .Q(m_axi_lite_wdata[15]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[1].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(ce),
        .D(i[1]),
        .Q(m_axi_lite_wdata[1]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[2].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(ce),
        .D(i[2]),
        .Q(m_axi_lite_wdata[2]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[3].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(ce),
        .D(i[3]),
        .Q(m_axi_lite_wdata[3]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[4].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(ce),
        .D(i[4]),
        .Q(m_axi_lite_wdata[4]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[5].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(ce),
        .D(i[5]),
        .Q(m_axi_lite_wdata[5]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[6].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(ce),
        .D(i[6]),
        .Q(m_axi_lite_wdata[6]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[7].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(ce),
        .D(i[7]),
        .Q(m_axi_lite_wdata[7]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[8].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(ce),
        .D(i[8]),
        .Q(m_axi_lite_wdata[8]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[9].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(ce),
        .D(i[9]),
        .Q(m_axi_lite_wdata[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1_12
   (m_axi_lite_wdata,
    \fd_prim_array[15].bit_is_0.fdre_comp_0 ,
    i,
    clk);
  output [15:0]m_axi_lite_wdata;
  input \fd_prim_array[15].bit_is_0.fdre_comp_0 ;
  input [15:0]i;
  input clk;

  wire clk;
  wire \fd_prim_array[15].bit_is_0.fdre_comp_0 ;
  wire [15:0]i;
  wire [15:0]m_axi_lite_wdata;

  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[0].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[15].bit_is_0.fdre_comp_0 ),
        .D(i[0]),
        .Q(m_axi_lite_wdata[0]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[10].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[15].bit_is_0.fdre_comp_0 ),
        .D(i[10]),
        .Q(m_axi_lite_wdata[10]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[11].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[15].bit_is_0.fdre_comp_0 ),
        .D(i[11]),
        .Q(m_axi_lite_wdata[11]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[12].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[15].bit_is_0.fdre_comp_0 ),
        .D(i[12]),
        .Q(m_axi_lite_wdata[12]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[13].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[15].bit_is_0.fdre_comp_0 ),
        .D(i[13]),
        .Q(m_axi_lite_wdata[13]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[14].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[15].bit_is_0.fdre_comp_0 ),
        .D(i[14]),
        .Q(m_axi_lite_wdata[14]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[15].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[15].bit_is_0.fdre_comp_0 ),
        .D(i[15]),
        .Q(m_axi_lite_wdata[15]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[1].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[15].bit_is_0.fdre_comp_0 ),
        .D(i[1]),
        .Q(m_axi_lite_wdata[1]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[2].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[15].bit_is_0.fdre_comp_0 ),
        .D(i[2]),
        .Q(m_axi_lite_wdata[2]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[3].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[15].bit_is_0.fdre_comp_0 ),
        .D(i[3]),
        .Q(m_axi_lite_wdata[3]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[4].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[15].bit_is_0.fdre_comp_0 ),
        .D(i[4]),
        .Q(m_axi_lite_wdata[4]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[5].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[15].bit_is_0.fdre_comp_0 ),
        .D(i[5]),
        .Q(m_axi_lite_wdata[5]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[6].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[15].bit_is_0.fdre_comp_0 ),
        .D(i[6]),
        .Q(m_axi_lite_wdata[6]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[7].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[15].bit_is_0.fdre_comp_0 ),
        .D(i[7]),
        .Q(m_axi_lite_wdata[7]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[8].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[15].bit_is_0.fdre_comp_0 ),
        .D(i[8]),
        .Q(m_axi_lite_wdata[8]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[9].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[15].bit_is_0.fdre_comp_0 ),
        .D(i[9]),
        .Q(m_axi_lite_wdata[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1_28
   (o,
    i,
    clk);
  output [15:0]o;
  input [15:0]i;
  input clk;

  wire clk;
  wire [15:0]i;
  wire [15:0]o;

  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[0].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[0]),
        .Q(o[0]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[10].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[10]),
        .Q(o[10]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[11].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[11]),
        .Q(o[11]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[12].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[12]),
        .Q(o[12]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[13].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[13]),
        .Q(o[13]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[14].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[14]),
        .Q(o[14]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[15].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[15]),
        .Q(o[15]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[1].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[1]),
        .Q(o[1]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[2].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[2]),
        .Q(o[2]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[3].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[3]),
        .Q(o[3]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[4].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[4]),
        .Q(o[4]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[5].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[5]),
        .Q(o[5]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[6].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[6]),
        .Q(o[6]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[7].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[7]),
        .Q(o[7]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[8].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[8]),
        .Q(o[8]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[9].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[9]),
        .Q(o[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1_30
   (o,
    a_d,
    clk);
  output [15:0]o;
  input [15:0]a_d;
  input clk;

  wire [15:0]a_d;
  wire clk;
  wire [15:0]o;

  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[0].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(a_d[0]),
        .Q(o[0]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[10].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(a_d[10]),
        .Q(o[10]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[11].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(a_d[11]),
        .Q(o[11]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[12].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(a_d[12]),
        .Q(o[12]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[13].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(a_d[13]),
        .Q(o[13]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[14].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(a_d[14]),
        .Q(o[14]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[15].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(a_d[15]),
        .Q(o[15]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[1].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(a_d[1]),
        .Q(o[1]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[2].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(a_d[2]),
        .Q(o[2]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[3].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(a_d[3]),
        .Q(o[3]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[4].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(a_d[4]),
        .Q(o[4]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[5].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(a_d[5]),
        .Q(o[5]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[6].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(a_d[6]),
        .Q(o[6]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[7].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(a_d[7]),
        .Q(o[7]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[8].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(a_d[8]),
        .Q(o[8]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[9].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(a_d[9]),
        .Q(o[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized3
   (o,
    i,
    clk);
  output [2:0]o;
  input [2:0]i;
  input clk;

  wire clk;
  wire [2:0]i;
  wire [2:0]o;

  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[0].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[0]),
        .Q(o[0]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[1].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[1]),
        .Q(o[1]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[2].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(i[2]),
        .Q(o[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized3_26
   (o,
    a,
    clk);
  output [2:0]o;
  input [2:0]a;
  input clk;

  wire [2:0]a;
  wire clk;
  wire [2:0]o;

  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[0].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(a[0]),
        .Q(o[0]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[1].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(a[1]),
        .Q(o[1]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[2].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(1'b1),
        .D(a[2]),
        .Q(o[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized5
   (ce,
    o,
    delay2_q_net_x0,
    register4_q_net,
    register10_q_net,
    \fd_prim_array[0].bit_is_0.fdre_comp_0 ,
    i,
    clk);
  output ce;
  output [18:0]o;
  input delay2_q_net_x0;
  input register4_q_net;
  input register10_q_net;
  input \fd_prim_array[0].bit_is_0.fdre_comp_0 ;
  input [18:0]i;
  input clk;

  wire ce;
  wire clk;
  wire delay2_q_net_x0;
  wire \fd_prim_array[0].bit_is_0.fdre_comp_0 ;
  wire [18:0]i;
  wire [18:0]o;
  wire register10_q_net;
  wire register4_q_net;

  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[0].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .D(i[0]),
        .Q(o[0]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2000)) 
    \fd_prim_array[0].bit_is_0.fdre_comp_i_2 
       (.I0(o[0]),
        .I1(delay2_q_net_x0),
        .I2(register4_q_net),
        .I3(register10_q_net),
        .O(ce));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[10].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .D(i[10]),
        .Q(o[10]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[11].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .D(i[11]),
        .Q(o[11]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[12].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .D(i[12]),
        .Q(o[12]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[13].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .D(i[13]),
        .Q(o[13]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[14].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .D(i[14]),
        .Q(o[14]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[15].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .D(i[15]),
        .Q(o[15]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[16].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .D(i[16]),
        .Q(o[16]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[17].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .D(i[17]),
        .Q(o[17]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[18].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .D(i[18]),
        .Q(o[18]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[1].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .D(i[1]),
        .Q(o[1]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[2].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .D(i[2]),
        .Q(o[2]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[3].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .D(i[3]),
        .Q(o[3]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[4].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .D(i[4]),
        .Q(o[4]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[5].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .D(i[5]),
        .Q(o[5]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[6].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .D(i[6]),
        .Q(o[6]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[7].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .D(i[7]),
        .Q(o[7]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[8].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .D(i[8]),
        .Q(o[8]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[9].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(\fd_prim_array[0].bit_is_0.fdre_comp_0 ),
        .D(i[9]),
        .Q(o[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "single_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized7
   (o,
    m_axi_lite_rvalid,
    m_axi_lite_rdata,
    clk);
  output [31:0]o;
  input m_axi_lite_rvalid;
  input [31:0]m_axi_lite_rdata;
  input clk;

  wire clk;
  wire [31:0]m_axi_lite_rdata;
  wire m_axi_lite_rvalid;
  wire [31:0]o;

  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[0].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[0]),
        .Q(o[0]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[10].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[10]),
        .Q(o[10]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[11].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[11]),
        .Q(o[11]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[12].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[12]),
        .Q(o[12]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[13].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[13]),
        .Q(o[13]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[14].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[14]),
        .Q(o[14]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[15].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[15]),
        .Q(o[15]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[16].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[16]),
        .Q(o[16]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[17].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[17]),
        .Q(o[17]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[18].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[18]),
        .Q(o[18]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[19].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[19]),
        .Q(o[19]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[1].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[1]),
        .Q(o[1]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[20].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[20]),
        .Q(o[20]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[21].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[21]),
        .Q(o[21]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[22].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[22]),
        .Q(o[22]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[23].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[23]),
        .Q(o[23]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[24].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[24]),
        .Q(o[24]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[25].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[25]),
        .Q(o[25]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[26].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[26]),
        .Q(o[26]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[27].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[27]),
        .Q(o[27]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[28].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[28]),
        .Q(o[28]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[29].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[29]),
        .Q(o[29]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[2].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[2]),
        .Q(o[2]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[30].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[30]),
        .Q(o[30]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[31].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[31]),
        .Q(o[31]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[3].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[3]),
        .Q(o[3]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[4].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[4]),
        .Q(o[4]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[5].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[5]),
        .Q(o[5]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[6].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[6]),
        .Q(o[6]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[7].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[7]),
        .Q(o[7]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[8].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[8]),
        .Q(o[8]),
        .R(1'b0));
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE \fd_prim_array[9].bit_is_0.fdre_comp 
       (.C(clk),
        .CE(m_axi_lite_rvalid),
        .D(m_axi_lite_rdata[9]),
        .Q(o[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sr_flop1_171797e57a" *) 
module design_1_gpmc_axi_bridge_0_1_sr_flop1_171797e57a
   (m_axi_lite_awvalid,
    ce,
    clk,
    m_axi_lite_awready,
    m_axi_lite_aresetn);
  output m_axi_lite_awvalid;
  input ce;
  input clk;
  input m_axi_lite_awready;
  input m_axi_lite_aresetn;

  wire ce;
  wire clk;
  wire m_axi_lite_aresetn;
  wire m_axi_lite_awready;
  wire m_axi_lite_awvalid;

  design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_17 register_x0
       (.ce(ce),
        .clk(clk),
        .m_axi_lite_aresetn(m_axi_lite_aresetn),
        .m_axi_lite_awready(m_axi_lite_awready),
        .m_axi_lite_awvalid(m_axi_lite_awvalid));
endmodule

(* ORIG_REF_NAME = "sr_flop2_88b8ff2137" *) 
module design_1_gpmc_axi_bridge_0_1_sr_flop2_88b8ff2137
   (m_axi_lite_arvalid,
    \fd_prim_array[0].bit_is_0.fdre_comp ,
    clk,
    m_axi_lite_arready,
    m_axi_lite_aresetn);
  output m_axi_lite_arvalid;
  input \fd_prim_array[0].bit_is_0.fdre_comp ;
  input clk;
  input m_axi_lite_arready;
  input m_axi_lite_aresetn;

  wire clk;
  wire \fd_prim_array[0].bit_is_0.fdre_comp ;
  wire m_axi_lite_aresetn;
  wire m_axi_lite_arready;
  wire m_axi_lite_arvalid;

  design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_14 register_x0
       (.clk(clk),
        .\fd_prim_array[0].bit_is_0.fdre_comp (\fd_prim_array[0].bit_is_0.fdre_comp ),
        .m_axi_lite_aresetn(m_axi_lite_aresetn),
        .m_axi_lite_arready(m_axi_lite_arready),
        .m_axi_lite_arvalid(m_axi_lite_arvalid));
endmodule

(* ORIG_REF_NAME = "sr_flop3_37f193c616" *) 
module design_1_gpmc_axi_bridge_0_1_sr_flop3_37f193c616
   (m_axi_lite_rready,
    \fd_prim_array[0].bit_is_0.fdre_comp ,
    clk,
    m_axi_lite_rvalid,
    m_axi_lite_aresetn);
  output m_axi_lite_rready;
  input \fd_prim_array[0].bit_is_0.fdre_comp ;
  input clk;
  input m_axi_lite_rvalid;
  input m_axi_lite_aresetn;

  wire clk;
  wire \fd_prim_array[0].bit_is_0.fdre_comp ;
  wire m_axi_lite_aresetn;
  wire m_axi_lite_rready;
  wire m_axi_lite_rvalid;

  design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_13 register_x0
       (.clk(clk),
        .\fd_prim_array[0].bit_is_0.fdre_comp (\fd_prim_array[0].bit_is_0.fdre_comp ),
        .m_axi_lite_aresetn(m_axi_lite_aresetn),
        .m_axi_lite_rready(m_axi_lite_rready),
        .m_axi_lite_rvalid(m_axi_lite_rvalid));
endmodule

(* ORIG_REF_NAME = "sr_flop_27fd76287e" *) 
module design_1_gpmc_axi_bridge_0_1_sr_flop_27fd76287e
   (m_axi_lite_wvalid,
    ce,
    clk,
    m_axi_lite_wready,
    m_axi_lite_aresetn);
  output m_axi_lite_wvalid;
  input ce;
  input clk;
  input m_axi_lite_wready;
  input m_axi_lite_aresetn;

  wire ce;
  wire clk;
  wire m_axi_lite_aresetn;
  wire m_axi_lite_wready;
  wire m_axi_lite_wvalid;

  design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_20 register_x0
       (.ce(ce),
        .clk(clk),
        .m_axi_lite_aresetn(m_axi_lite_aresetn),
        .m_axi_lite_wready(m_axi_lite_wready),
        .m_axi_lite_wvalid(m_axi_lite_wvalid));
endmodule

(* ORIG_REF_NAME = "srl17e" *) 
module design_1_gpmc_axi_bridge_0_1_srl17e
   (m_axi_lite_arready_0,
    m_axi_lite_arready,
    clk);
  output m_axi_lite_arready_0;
  input m_axi_lite_arready;
  input clk;

  wire clk;
  wire delay2_q_net_x3;
  wire m_axi_lite_arready;
  wire m_axi_lite_arready_0;

  LUT2 #(
    .INIT(4'h2)) 
    \fd_prim_array[0].bit_is_0.fdre_comp_i_2__1 
       (.I0(m_axi_lite_arready),
        .I1(delay2_q_net_x3),
        .O(m_axi_lite_arready_0));
  (* XILINX_LEGACY_PRIM = "FDE" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:R" *) 
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_array[0].fde_used.u2 
       (.C(clk),
        .CE(1'b1),
        .D(m_axi_lite_arready),
        .Q(delay2_q_net_x3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "srl17e" *) 
module design_1_gpmc_axi_bridge_0_1_srl17e_47
   (\reg_array[0].fde_used.u2_0 ,
    logical14_y_net,
    clk,
    register4_q_net,
    register11_q_net,
    o);
  output \reg_array[0].fde_used.u2_0 ;
  input logical14_y_net;
  input clk;
  input register4_q_net;
  input register11_q_net;
  input [0:0]o;

  wire clk;
  wire delay2_q_net_x2;
  wire logical14_y_net;
  wire [0:0]o;
  wire \reg_array[0].fde_used.u2_0 ;
  wire register11_q_net;
  wire register4_q_net;

  LUT4 #(
    .INIT(16'h0040)) 
    \fd_prim_array[0].bit_is_0.fdre_comp_i_2__0 
       (.I0(delay2_q_net_x2),
        .I1(register4_q_net),
        .I2(register11_q_net),
        .I3(o),
        .O(\reg_array[0].fde_used.u2_0 ));
  (* XILINX_LEGACY_PRIM = "FDE" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:R" *) 
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_array[0].fde_used.u2 
       (.C(clk),
        .CE(1'b1),
        .D(logical14_y_net),
        .Q(delay2_q_net_x2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "srl17e" *) 
module design_1_gpmc_axi_bridge_0_1_srl17e_50
   (m_axi_lite_bready,
    m_axi_lite_bvalid,
    clk);
  output m_axi_lite_bready;
  input m_axi_lite_bvalid;
  input clk;

  wire clk;
  wire delay2_q_net_x1;
  wire m_axi_lite_bready;
  wire m_axi_lite_bvalid;

  LUT2 #(
    .INIT(4'h2)) 
    m_axi_lite_bready_INST_0
       (.I0(m_axi_lite_bvalid),
        .I1(delay2_q_net_x1),
        .O(m_axi_lite_bready));
  (* XILINX_LEGACY_PRIM = "FDE" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:R" *) 
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_array[0].fde_used.u2 
       (.C(clk),
        .CE(1'b1),
        .D(m_axi_lite_bvalid),
        .Q(delay2_q_net_x1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "srl17e" *) 
module design_1_gpmc_axi_bridge_0_1_srl17e_53
   (delay2_q_net_x0,
    \reg_array[0].fde_used.u2_0 ,
    logical12_y_net,
    clk,
    register4_q_net,
    register10_q_net,
    o);
  output delay2_q_net_x0;
  output \reg_array[0].fde_used.u2_0 ;
  input logical12_y_net;
  input clk;
  input register4_q_net;
  input register10_q_net;
  input [0:0]o;

  wire clk;
  wire delay2_q_net_x0;
  wire logical12_y_net;
  wire [0:0]o;
  wire \reg_array[0].fde_used.u2_0 ;
  wire register10_q_net;
  wire register4_q_net;

  LUT4 #(
    .INIT(16'h0040)) 
    \fd_prim_array[15].bit_is_0.fdre_comp_i_1 
       (.I0(delay2_q_net_x0),
        .I1(register4_q_net),
        .I2(register10_q_net),
        .I3(o),
        .O(\reg_array[0].fde_used.u2_0 ));
  (* XILINX_LEGACY_PRIM = "FDE" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:R" *) 
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_array[0].fde_used.u2 
       (.C(clk),
        .CE(1'b1),
        .D(logical12_y_net),
        .Q(delay2_q_net_x0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "srl17e" *) 
module design_1_gpmc_axi_bridge_0_1_srl17e_56
   (\reg_array[0].fde_used.u2_0 ,
    logical13_y_net,
    clk,
    register4_q_net,
    register2_q_net);
  output \reg_array[0].fde_used.u2_0 ;
  input logical13_y_net;
  input clk;
  input register4_q_net;
  input register2_q_net;

  wire clk;
  wire delay2_q_net;
  wire logical13_y_net;
  wire \reg_array[0].fde_used.u2_0 ;
  wire register2_q_net;
  wire register4_q_net;

  LUT3 #(
    .INIT(8'h40)) 
    \fd_prim_array[17].bit_is_0.fdre_comp_i_1 
       (.I0(delay2_q_net),
        .I1(register4_q_net),
        .I2(register2_q_net),
        .O(\reg_array[0].fde_used.u2_0 ));
  (* XILINX_LEGACY_PRIM = "FDE" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:R" *) 
  (* fpga_dont_touch = "true" *) 
  (* syn_black_box = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \reg_array[0].fde_used.u2 
       (.C(clk),
        .CE(1'b1),
        .D(logical13_y_net),
        .Q(delay2_q_net),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "synth_reg" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg
   (m_axi_lite_arready_0,
    m_axi_lite_arready,
    clk);
  output m_axi_lite_arready_0;
  input m_axi_lite_arready;
  input clk;

  wire clk;
  wire m_axi_lite_arready;
  wire m_axi_lite_arready_0;

  design_1_gpmc_axi_bridge_0_1_srl17e \partial_one.last_srl17e 
       (.clk(clk),
        .m_axi_lite_arready(m_axi_lite_arready),
        .m_axi_lite_arready_0(m_axi_lite_arready_0));
endmodule

(* ORIG_REF_NAME = "synth_reg" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_46
   (\reg_array[0].fde_used.u2 ,
    logical14_y_net,
    clk,
    register4_q_net,
    register11_q_net,
    o);
  output \reg_array[0].fde_used.u2 ;
  input logical14_y_net;
  input clk;
  input register4_q_net;
  input register11_q_net;
  input [0:0]o;

  wire clk;
  wire logical14_y_net;
  wire [0:0]o;
  wire \reg_array[0].fde_used.u2 ;
  wire register11_q_net;
  wire register4_q_net;

  design_1_gpmc_axi_bridge_0_1_srl17e_47 \partial_one.last_srl17e 
       (.clk(clk),
        .logical14_y_net(logical14_y_net),
        .o(o),
        .\reg_array[0].fde_used.u2_0 (\reg_array[0].fde_used.u2 ),
        .register11_q_net(register11_q_net),
        .register4_q_net(register4_q_net));
endmodule

(* ORIG_REF_NAME = "synth_reg" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_49
   (m_axi_lite_bready,
    m_axi_lite_bvalid,
    clk);
  output m_axi_lite_bready;
  input m_axi_lite_bvalid;
  input clk;

  wire clk;
  wire m_axi_lite_bready;
  wire m_axi_lite_bvalid;

  design_1_gpmc_axi_bridge_0_1_srl17e_50 \partial_one.last_srl17e 
       (.clk(clk),
        .m_axi_lite_bready(m_axi_lite_bready),
        .m_axi_lite_bvalid(m_axi_lite_bvalid));
endmodule

(* ORIG_REF_NAME = "synth_reg" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_52
   (delay2_q_net_x0,
    \reg_array[0].fde_used.u2 ,
    logical12_y_net,
    clk,
    register4_q_net,
    register10_q_net,
    o);
  output delay2_q_net_x0;
  output \reg_array[0].fde_used.u2 ;
  input logical12_y_net;
  input clk;
  input register4_q_net;
  input register10_q_net;
  input [0:0]o;

  wire clk;
  wire delay2_q_net_x0;
  wire logical12_y_net;
  wire [0:0]o;
  wire \reg_array[0].fde_used.u2 ;
  wire register10_q_net;
  wire register4_q_net;

  design_1_gpmc_axi_bridge_0_1_srl17e_53 \partial_one.last_srl17e 
       (.clk(clk),
        .delay2_q_net_x0(delay2_q_net_x0),
        .logical12_y_net(logical12_y_net),
        .o(o),
        .\reg_array[0].fde_used.u2_0 (\reg_array[0].fde_used.u2 ),
        .register10_q_net(register10_q_net),
        .register4_q_net(register4_q_net));
endmodule

(* ORIG_REF_NAME = "synth_reg" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_55
   (\reg_array[0].fde_used.u2 ,
    logical13_y_net,
    clk,
    register4_q_net,
    register2_q_net);
  output \reg_array[0].fde_used.u2 ;
  input logical13_y_net;
  input clk;
  input register4_q_net;
  input register2_q_net;

  wire clk;
  wire logical13_y_net;
  wire \reg_array[0].fde_used.u2 ;
  wire register2_q_net;
  wire register4_q_net;

  design_1_gpmc_axi_bridge_0_1_srl17e_56 \partial_one.last_srl17e 
       (.clk(clk),
        .logical13_y_net(logical13_y_net),
        .\reg_array[0].fde_used.u2_0 (\reg_array[0].fde_used.u2 ),
        .register2_q_net(register2_q_net),
        .register4_q_net(register4_q_net));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_w_init
   (m_axi_lite_rready,
    \fd_prim_array[0].bit_is_0.fdre_comp ,
    clk,
    m_axi_lite_rvalid,
    m_axi_lite_aresetn);
  output m_axi_lite_rready;
  input \fd_prim_array[0].bit_is_0.fdre_comp ;
  input clk;
  input m_axi_lite_rvalid;
  input m_axi_lite_aresetn;

  wire clk;
  wire \fd_prim_array[0].bit_is_0.fdre_comp ;
  wire m_axi_lite_aresetn;
  wire m_axi_lite_rready;
  wire m_axi_lite_rvalid;

  design_1_gpmc_axi_bridge_0_1_single_reg_w_init \latency_gt_0.fd_array[1].reg_comp 
       (.clk(clk),
        .\fd_prim_array[0].bit_is_0.fdre_comp_0 (\fd_prim_array[0].bit_is_0.fdre_comp ),
        .m_axi_lite_aresetn(m_axi_lite_aresetn),
        .m_axi_lite_rready(m_axi_lite_rready),
        .m_axi_lite_rvalid(m_axi_lite_rvalid));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_15
   (m_axi_lite_arvalid,
    \fd_prim_array[0].bit_is_0.fdre_comp ,
    clk,
    m_axi_lite_arready,
    m_axi_lite_aresetn);
  output m_axi_lite_arvalid;
  input \fd_prim_array[0].bit_is_0.fdre_comp ;
  input clk;
  input m_axi_lite_arready;
  input m_axi_lite_aresetn;

  wire clk;
  wire \fd_prim_array[0].bit_is_0.fdre_comp ;
  wire m_axi_lite_aresetn;
  wire m_axi_lite_arready;
  wire m_axi_lite_arvalid;

  design_1_gpmc_axi_bridge_0_1_single_reg_w_init_16 \latency_gt_0.fd_array[1].reg_comp 
       (.clk(clk),
        .\fd_prim_array[0].bit_is_0.fdre_comp_0 (\fd_prim_array[0].bit_is_0.fdre_comp ),
        .m_axi_lite_aresetn(m_axi_lite_aresetn),
        .m_axi_lite_arready(m_axi_lite_arready),
        .m_axi_lite_arvalid(m_axi_lite_arvalid));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_18
   (m_axi_lite_awvalid,
    ce,
    clk,
    m_axi_lite_awready,
    m_axi_lite_aresetn);
  output m_axi_lite_awvalid;
  input ce;
  input clk;
  input m_axi_lite_awready;
  input m_axi_lite_aresetn;

  wire ce;
  wire clk;
  wire m_axi_lite_aresetn;
  wire m_axi_lite_awready;
  wire m_axi_lite_awvalid;

  design_1_gpmc_axi_bridge_0_1_single_reg_w_init_19 \latency_gt_0.fd_array[1].reg_comp 
       (.ce(ce),
        .clk(clk),
        .m_axi_lite_aresetn(m_axi_lite_aresetn),
        .m_axi_lite_awready(m_axi_lite_awready),
        .m_axi_lite_awvalid(m_axi_lite_awvalid));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_21
   (m_axi_lite_wvalid,
    ce,
    clk,
    m_axi_lite_wready,
    m_axi_lite_aresetn);
  output m_axi_lite_wvalid;
  input ce;
  input clk;
  input m_axi_lite_wready;
  input m_axi_lite_aresetn;

  wire ce;
  wire clk;
  wire m_axi_lite_aresetn;
  wire m_axi_lite_wready;
  wire m_axi_lite_wvalid;

  design_1_gpmc_axi_bridge_0_1_single_reg_w_init_22 \latency_gt_0.fd_array[1].reg_comp 
       (.ce(ce),
        .clk(clk),
        .m_axi_lite_aresetn(m_axi_lite_aresetn),
        .m_axi_lite_wready(m_axi_lite_wready),
        .m_axi_lite_wvalid(m_axi_lite_wvalid));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_23
   (register9_q_net,
    clk,
    wen);
  output register9_q_net;
  input clk;
  input wen;

  wire clk;
  wire register9_q_net;
  wire wen;

  design_1_gpmc_axi_bridge_0_1_single_reg_w_init_24 \latency_gt_0.fd_array[1].reg_comp 
       (.clk(clk),
        .register9_q_net(register9_q_net),
        .wen(wen));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_31
   (\fd_prim_array[0].bit_is_0.fdre_comp ,
    logical12_y_net,
    logical13_y_net,
    logical14_y_net,
    register3_q_net,
    clk,
    register10_q_net,
    register2_q_net,
    register11_q_net);
  output \fd_prim_array[0].bit_is_0.fdre_comp ;
  output logical12_y_net;
  output logical13_y_net;
  output logical14_y_net;
  input register3_q_net;
  input clk;
  input register10_q_net;
  input register2_q_net;
  input register11_q_net;

  wire clk;
  wire \fd_prim_array[0].bit_is_0.fdre_comp ;
  wire logical12_y_net;
  wire logical13_y_net;
  wire logical14_y_net;
  wire register10_q_net;
  wire register11_q_net;
  wire register2_q_net;
  wire register3_q_net;

  design_1_gpmc_axi_bridge_0_1_single_reg_w_init_32 \latency_gt_0.fd_array[1].reg_comp 
       (.clk(clk),
        .\fd_prim_array[0].bit_is_0.fdre_comp_0 (\fd_prim_array[0].bit_is_0.fdre_comp ),
        .logical12_y_net(logical12_y_net),
        .logical13_y_net(logical13_y_net),
        .logical14_y_net(logical14_y_net),
        .register10_q_net(register10_q_net),
        .register11_q_net(register11_q_net),
        .register2_q_net(register2_q_net),
        .register3_q_net(register3_q_net));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_33
   (register3_q_net,
    clk,
    csn);
  output register3_q_net;
  input clk;
  input csn;

  wire clk;
  wire csn;
  wire register3_q_net;

  design_1_gpmc_axi_bridge_0_1_single_reg_w_init_34 \latency_gt_0.fd_array[1].reg_comp 
       (.clk(clk),
        .csn(csn),
        .register3_q_net(register3_q_net));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_35
   (register2_q_net,
    register1_q_net,
    clk);
  output register2_q_net;
  input register1_q_net;
  input clk;

  wire clk;
  wire register1_q_net;
  wire register2_q_net;

  design_1_gpmc_axi_bridge_0_1_single_reg_w_init_36 \latency_gt_0.fd_array[1].reg_comp 
       (.clk(clk),
        .register1_q_net(register1_q_net),
        .register2_q_net(register2_q_net));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_37
   (register12_q_net,
    clk,
    oen);
  output register12_q_net;
  input clk;
  input oen;

  wire clk;
  wire oen;
  wire register12_q_net;

  design_1_gpmc_axi_bridge_0_1_single_reg_w_init_38 \latency_gt_0.fd_array[1].reg_comp 
       (.clk(clk),
        .oen(oen),
        .register12_q_net(register12_q_net));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_39
   (register11_q_net,
    register12_q_net,
    clk);
  output register11_q_net;
  input register12_q_net;
  input clk;

  wire clk;
  wire register11_q_net;
  wire register12_q_net;

  design_1_gpmc_axi_bridge_0_1_single_reg_w_init_40 \latency_gt_0.fd_array[1].reg_comp 
       (.clk(clk),
        .register11_q_net(register11_q_net),
        .register12_q_net(register12_q_net));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_41
   (register10_q_net,
    register9_q_net,
    clk);
  output register10_q_net;
  input register9_q_net;
  input clk;

  wire clk;
  wire register10_q_net;
  wire register9_q_net;

  design_1_gpmc_axi_bridge_0_1_single_reg_w_init_42 \latency_gt_0.fd_array[1].reg_comp 
       (.clk(clk),
        .register10_q_net(register10_q_net),
        .register9_q_net(register9_q_net));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_43
   (register1_q_net,
    clk,
    advn);
  output register1_q_net;
  input clk;
  input advn;

  wire advn;
  wire clk;
  wire register1_q_net;

  design_1_gpmc_axi_bridge_0_1_single_reg_w_init_44 \latency_gt_0.fd_array[1].reg_comp 
       (.advn(advn),
        .clk(clk),
        .register1_q_net(register1_q_net));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1
   (m_axi_lite_wdata,
    ce,
    i,
    clk);
  output [15:0]m_axi_lite_wdata;
  input ce;
  input [15:0]i;
  input clk;

  wire ce;
  wire clk;
  wire [15:0]i;
  wire [15:0]m_axi_lite_wdata;

  design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1 \latency_gt_0.fd_array[1].reg_comp 
       (.ce(ce),
        .clk(clk),
        .i(i),
        .m_axi_lite_wdata(m_axi_lite_wdata));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1_11
   (m_axi_lite_wdata,
    \fd_prim_array[15].bit_is_0.fdre_comp ,
    i,
    clk);
  output [15:0]m_axi_lite_wdata;
  input \fd_prim_array[15].bit_is_0.fdre_comp ;
  input [15:0]i;
  input clk;

  wire clk;
  wire \fd_prim_array[15].bit_is_0.fdre_comp ;
  wire [15:0]i;
  wire [15:0]m_axi_lite_wdata;

  design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1_12 \latency_gt_0.fd_array[1].reg_comp 
       (.clk(clk),
        .\fd_prim_array[15].bit_is_0.fdre_comp_0 (\fd_prim_array[15].bit_is_0.fdre_comp ),
        .i(i),
        .m_axi_lite_wdata(m_axi_lite_wdata));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1_27
   (o,
    i,
    clk);
  output [15:0]o;
  input [15:0]i;
  input clk;

  wire clk;
  wire [15:0]i;
  wire [15:0]o;

  design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1_28 \latency_gt_0.fd_array[1].reg_comp 
       (.clk(clk),
        .i(i),
        .o(o));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1_29
   (o,
    a_d,
    clk);
  output [15:0]o;
  input [15:0]a_d;
  input clk;

  wire [15:0]a_d;
  wire clk;
  wire [15:0]o;

  design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized1_30 \latency_gt_0.fd_array[1].reg_comp 
       (.a_d(a_d),
        .clk(clk),
        .o(o));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized3
   (o,
    i,
    clk);
  output [2:0]o;
  input [2:0]i;
  input clk;

  wire clk;
  wire [2:0]i;
  wire [2:0]o;

  design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized3 \latency_gt_0.fd_array[1].reg_comp 
       (.clk(clk),
        .i(i),
        .o(o));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized3_25
   (o,
    a,
    clk);
  output [2:0]o;
  input [2:0]a;
  input clk;

  wire [2:0]a;
  wire clk;
  wire [2:0]o;

  design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized3_26 \latency_gt_0.fd_array[1].reg_comp 
       (.a(a),
        .clk(clk),
        .o(o));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized5
   (ce,
    o,
    delay2_q_net_x0,
    register4_q_net,
    register10_q_net,
    \fd_prim_array[0].bit_is_0.fdre_comp ,
    i,
    clk);
  output ce;
  output [18:0]o;
  input delay2_q_net_x0;
  input register4_q_net;
  input register10_q_net;
  input \fd_prim_array[0].bit_is_0.fdre_comp ;
  input [18:0]i;
  input clk;

  wire ce;
  wire clk;
  wire delay2_q_net_x0;
  wire \fd_prim_array[0].bit_is_0.fdre_comp ;
  wire [18:0]i;
  wire [18:0]o;
  wire register10_q_net;
  wire register4_q_net;

  design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized5 \latency_gt_0.fd_array[1].reg_comp 
       (.ce(ce),
        .clk(clk),
        .delay2_q_net_x0(delay2_q_net_x0),
        .\fd_prim_array[0].bit_is_0.fdre_comp_0 (\fd_prim_array[0].bit_is_0.fdre_comp ),
        .i(i),
        .o(o),
        .register10_q_net(register10_q_net),
        .register4_q_net(register4_q_net));
endmodule

(* ORIG_REF_NAME = "synth_reg_w_init" *) 
module design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized7
   (o,
    m_axi_lite_rvalid,
    m_axi_lite_rdata,
    clk);
  output [31:0]o;
  input m_axi_lite_rvalid;
  input [31:0]m_axi_lite_rdata;
  input clk;

  wire clk;
  wire [31:0]m_axi_lite_rdata;
  wire m_axi_lite_rvalid;
  wire [31:0]o;

  design_1_gpmc_axi_bridge_0_1_single_reg_w_init__parameterized7 \latency_gt_0.fd_array[1].reg_comp 
       (.clk(clk),
        .m_axi_lite_rdata(m_axi_lite_rdata),
        .m_axi_lite_rvalid(m_axi_lite_rvalid),
        .o(o));
endmodule

(* ORIG_REF_NAME = "sysgen_mux_2dfa32ddae" *) 
module design_1_gpmc_axi_bridge_0_1_sysgen_mux_2dfa32ddae
   (read_data_out,
    o,
    latched_addr_out);
  output [15:0]read_data_out;
  input [31:0]o;
  input [0:0]latched_addr_out;

  wire [0:0]latched_addr_out;
  wire [31:0]o;
  wire [15:0]read_data_out;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_out[0]_INST_0 
       (.I0(o[16]),
        .I1(latched_addr_out),
        .I2(o[0]),
        .O(read_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_out[10]_INST_0 
       (.I0(o[26]),
        .I1(latched_addr_out),
        .I2(o[10]),
        .O(read_data_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_out[11]_INST_0 
       (.I0(o[27]),
        .I1(latched_addr_out),
        .I2(o[11]),
        .O(read_data_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_out[12]_INST_0 
       (.I0(o[28]),
        .I1(latched_addr_out),
        .I2(o[12]),
        .O(read_data_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_out[13]_INST_0 
       (.I0(o[29]),
        .I1(latched_addr_out),
        .I2(o[13]),
        .O(read_data_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_out[14]_INST_0 
       (.I0(o[30]),
        .I1(latched_addr_out),
        .I2(o[14]),
        .O(read_data_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_out[15]_INST_0 
       (.I0(o[31]),
        .I1(latched_addr_out),
        .I2(o[15]),
        .O(read_data_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_out[1]_INST_0 
       (.I0(o[17]),
        .I1(latched_addr_out),
        .I2(o[1]),
        .O(read_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_out[2]_INST_0 
       (.I0(o[18]),
        .I1(latched_addr_out),
        .I2(o[2]),
        .O(read_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_out[3]_INST_0 
       (.I0(o[19]),
        .I1(latched_addr_out),
        .I2(o[3]),
        .O(read_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_out[4]_INST_0 
       (.I0(o[20]),
        .I1(latched_addr_out),
        .I2(o[4]),
        .O(read_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_out[5]_INST_0 
       (.I0(o[21]),
        .I1(latched_addr_out),
        .I2(o[5]),
        .O(read_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_out[6]_INST_0 
       (.I0(o[22]),
        .I1(latched_addr_out),
        .I2(o[6]),
        .O(read_data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_out[7]_INST_0 
       (.I0(o[23]),
        .I1(latched_addr_out),
        .I2(o[7]),
        .O(read_data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_out[8]_INST_0 
       (.I0(o[24]),
        .I1(latched_addr_out),
        .I2(o[8]),
        .O(read_data_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \read_data_out[9]_INST_0 
       (.I0(o[25]),
        .I1(latched_addr_out),
        .I2(o[9]),
        .O(read_data_out[9]));
endmodule

(* ORIG_REF_NAME = "xldelay_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge
   (m_axi_lite_arready_0,
    m_axi_lite_arready,
    clk);
  output m_axi_lite_arready_0;
  input m_axi_lite_arready;
  input clk;

  wire clk;
  wire m_axi_lite_arready;
  wire m_axi_lite_arready_0;

  design_1_gpmc_axi_bridge_0_1_synth_reg \srl_delay.synth_reg_srl_inst 
       (.clk(clk),
        .m_axi_lite_arready(m_axi_lite_arready),
        .m_axi_lite_arready_0(m_axi_lite_arready_0));
endmodule

(* ORIG_REF_NAME = "xldelay_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_45
   (\reg_array[0].fde_used.u2 ,
    logical14_y_net,
    clk,
    register4_q_net,
    register11_q_net,
    o);
  output \reg_array[0].fde_used.u2 ;
  input logical14_y_net;
  input clk;
  input register4_q_net;
  input register11_q_net;
  input [0:0]o;

  wire clk;
  wire logical14_y_net;
  wire [0:0]o;
  wire \reg_array[0].fde_used.u2 ;
  wire register11_q_net;
  wire register4_q_net;

  design_1_gpmc_axi_bridge_0_1_synth_reg_46 \srl_delay.synth_reg_srl_inst 
       (.clk(clk),
        .logical14_y_net(logical14_y_net),
        .o(o),
        .\reg_array[0].fde_used.u2 (\reg_array[0].fde_used.u2 ),
        .register11_q_net(register11_q_net),
        .register4_q_net(register4_q_net));
endmodule

(* ORIG_REF_NAME = "xldelay_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_48
   (m_axi_lite_bready,
    m_axi_lite_bvalid,
    clk);
  output m_axi_lite_bready;
  input m_axi_lite_bvalid;
  input clk;

  wire clk;
  wire m_axi_lite_bready;
  wire m_axi_lite_bvalid;

  design_1_gpmc_axi_bridge_0_1_synth_reg_49 \srl_delay.synth_reg_srl_inst 
       (.clk(clk),
        .m_axi_lite_bready(m_axi_lite_bready),
        .m_axi_lite_bvalid(m_axi_lite_bvalid));
endmodule

(* ORIG_REF_NAME = "xldelay_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_51
   (delay2_q_net_x0,
    \reg_array[0].fde_used.u2 ,
    logical12_y_net,
    clk,
    register4_q_net,
    register10_q_net,
    o);
  output delay2_q_net_x0;
  output \reg_array[0].fde_used.u2 ;
  input logical12_y_net;
  input clk;
  input register4_q_net;
  input register10_q_net;
  input [0:0]o;

  wire clk;
  wire delay2_q_net_x0;
  wire logical12_y_net;
  wire [0:0]o;
  wire \reg_array[0].fde_used.u2 ;
  wire register10_q_net;
  wire register4_q_net;

  design_1_gpmc_axi_bridge_0_1_synth_reg_52 \srl_delay.synth_reg_srl_inst 
       (.clk(clk),
        .delay2_q_net_x0(delay2_q_net_x0),
        .logical12_y_net(logical12_y_net),
        .o(o),
        .\reg_array[0].fde_used.u2 (\reg_array[0].fde_used.u2 ),
        .register10_q_net(register10_q_net),
        .register4_q_net(register4_q_net));
endmodule

(* ORIG_REF_NAME = "xldelay_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xldelay_gpmc_axi_bridge_54
   (\reg_array[0].fde_used.u2 ,
    logical13_y_net,
    clk,
    register4_q_net,
    register2_q_net);
  output \reg_array[0].fde_used.u2 ;
  input logical13_y_net;
  input clk;
  input register4_q_net;
  input register2_q_net;

  wire clk;
  wire logical13_y_net;
  wire \reg_array[0].fde_used.u2 ;
  wire register2_q_net;
  wire register4_q_net;

  design_1_gpmc_axi_bridge_0_1_synth_reg_55 \srl_delay.synth_reg_srl_inst 
       (.clk(clk),
        .logical13_y_net(logical13_y_net),
        .\reg_array[0].fde_used.u2 (\reg_array[0].fde_used.u2 ),
        .register2_q_net(register2_q_net),
        .register4_q_net(register4_q_net));
endmodule

(* ORIG_REF_NAME = "xlregister_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge
   (register1_q_net,
    clk,
    advn);
  output register1_q_net;
  input clk;
  input advn;

  wire advn;
  wire clk;
  wire register1_q_net;

  design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_43 synth_reg_inst
       (.advn(advn),
        .clk(clk),
        .register1_q_net(register1_q_net));
endmodule

(* ORIG_REF_NAME = "xlregister_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_0
   (register10_q_net,
    register9_q_net,
    clk);
  output register10_q_net;
  input register9_q_net;
  input clk;

  wire clk;
  wire register10_q_net;
  wire register9_q_net;

  design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_41 synth_reg_inst
       (.clk(clk),
        .register10_q_net(register10_q_net),
        .register9_q_net(register9_q_net));
endmodule

(* ORIG_REF_NAME = "xlregister_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_1
   (register11_q_net,
    register12_q_net,
    clk);
  output register11_q_net;
  input register12_q_net;
  input clk;

  wire clk;
  wire register11_q_net;
  wire register12_q_net;

  design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_39 synth_reg_inst
       (.clk(clk),
        .register11_q_net(register11_q_net),
        .register12_q_net(register12_q_net));
endmodule

(* ORIG_REF_NAME = "xlregister_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_13
   (m_axi_lite_rready,
    \fd_prim_array[0].bit_is_0.fdre_comp ,
    clk,
    m_axi_lite_rvalid,
    m_axi_lite_aresetn);
  output m_axi_lite_rready;
  input \fd_prim_array[0].bit_is_0.fdre_comp ;
  input clk;
  input m_axi_lite_rvalid;
  input m_axi_lite_aresetn;

  wire clk;
  wire \fd_prim_array[0].bit_is_0.fdre_comp ;
  wire m_axi_lite_aresetn;
  wire m_axi_lite_rready;
  wire m_axi_lite_rvalid;

  design_1_gpmc_axi_bridge_0_1_synth_reg_w_init synth_reg_inst
       (.clk(clk),
        .\fd_prim_array[0].bit_is_0.fdre_comp (\fd_prim_array[0].bit_is_0.fdre_comp ),
        .m_axi_lite_aresetn(m_axi_lite_aresetn),
        .m_axi_lite_rready(m_axi_lite_rready),
        .m_axi_lite_rvalid(m_axi_lite_rvalid));
endmodule

(* ORIG_REF_NAME = "xlregister_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_14
   (m_axi_lite_arvalid,
    \fd_prim_array[0].bit_is_0.fdre_comp ,
    clk,
    m_axi_lite_arready,
    m_axi_lite_aresetn);
  output m_axi_lite_arvalid;
  input \fd_prim_array[0].bit_is_0.fdre_comp ;
  input clk;
  input m_axi_lite_arready;
  input m_axi_lite_aresetn;

  wire clk;
  wire \fd_prim_array[0].bit_is_0.fdre_comp ;
  wire m_axi_lite_aresetn;
  wire m_axi_lite_arready;
  wire m_axi_lite_arvalid;

  design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_15 synth_reg_inst
       (.clk(clk),
        .\fd_prim_array[0].bit_is_0.fdre_comp (\fd_prim_array[0].bit_is_0.fdre_comp ),
        .m_axi_lite_aresetn(m_axi_lite_aresetn),
        .m_axi_lite_arready(m_axi_lite_arready),
        .m_axi_lite_arvalid(m_axi_lite_arvalid));
endmodule

(* ORIG_REF_NAME = "xlregister_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_17
   (m_axi_lite_awvalid,
    ce,
    clk,
    m_axi_lite_awready,
    m_axi_lite_aresetn);
  output m_axi_lite_awvalid;
  input ce;
  input clk;
  input m_axi_lite_awready;
  input m_axi_lite_aresetn;

  wire ce;
  wire clk;
  wire m_axi_lite_aresetn;
  wire m_axi_lite_awready;
  wire m_axi_lite_awvalid;

  design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_18 synth_reg_inst
       (.ce(ce),
        .clk(clk),
        .m_axi_lite_aresetn(m_axi_lite_aresetn),
        .m_axi_lite_awready(m_axi_lite_awready),
        .m_axi_lite_awvalid(m_axi_lite_awvalid));
endmodule

(* ORIG_REF_NAME = "xlregister_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_2
   (register12_q_net,
    clk,
    oen);
  output register12_q_net;
  input clk;
  input oen;

  wire clk;
  wire oen;
  wire register12_q_net;

  design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_37 synth_reg_inst
       (.clk(clk),
        .oen(oen),
        .register12_q_net(register12_q_net));
endmodule

(* ORIG_REF_NAME = "xlregister_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_20
   (m_axi_lite_wvalid,
    ce,
    clk,
    m_axi_lite_wready,
    m_axi_lite_aresetn);
  output m_axi_lite_wvalid;
  input ce;
  input clk;
  input m_axi_lite_wready;
  input m_axi_lite_aresetn;

  wire ce;
  wire clk;
  wire m_axi_lite_aresetn;
  wire m_axi_lite_wready;
  wire m_axi_lite_wvalid;

  design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_21 synth_reg_inst
       (.ce(ce),
        .clk(clk),
        .m_axi_lite_aresetn(m_axi_lite_aresetn),
        .m_axi_lite_wready(m_axi_lite_wready),
        .m_axi_lite_wvalid(m_axi_lite_wvalid));
endmodule

(* ORIG_REF_NAME = "xlregister_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_3
   (register2_q_net,
    register1_q_net,
    clk);
  output register2_q_net;
  input register1_q_net;
  input clk;

  wire clk;
  wire register1_q_net;
  wire register2_q_net;

  design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_35 synth_reg_inst
       (.clk(clk),
        .register1_q_net(register1_q_net),
        .register2_q_net(register2_q_net));
endmodule

(* ORIG_REF_NAME = "xlregister_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_4
   (register3_q_net,
    clk,
    csn);
  output register3_q_net;
  input clk;
  input csn;

  wire clk;
  wire csn;
  wire register3_q_net;

  design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_33 synth_reg_inst
       (.clk(clk),
        .csn(csn),
        .register3_q_net(register3_q_net));
endmodule

(* ORIG_REF_NAME = "xlregister_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_5
   (register4_q_net,
    logical12_y_net,
    logical13_y_net,
    logical14_y_net,
    register3_q_net,
    clk,
    register10_q_net,
    register2_q_net,
    register11_q_net);
  output register4_q_net;
  output logical12_y_net;
  output logical13_y_net;
  output logical14_y_net;
  input register3_q_net;
  input clk;
  input register10_q_net;
  input register2_q_net;
  input register11_q_net;

  wire clk;
  wire logical12_y_net;
  wire logical13_y_net;
  wire logical14_y_net;
  wire register10_q_net;
  wire register11_q_net;
  wire register2_q_net;
  wire register3_q_net;
  wire register4_q_net;

  design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_31 synth_reg_inst
       (.clk(clk),
        .\fd_prim_array[0].bit_is_0.fdre_comp (register4_q_net),
        .logical12_y_net(logical12_y_net),
        .logical13_y_net(logical13_y_net),
        .logical14_y_net(logical14_y_net),
        .register10_q_net(register10_q_net),
        .register11_q_net(register11_q_net),
        .register2_q_net(register2_q_net),
        .register3_q_net(register3_q_net));
endmodule

(* ORIG_REF_NAME = "xlregister_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge_8
   (register9_q_net,
    clk,
    wen);
  output register9_q_net;
  input clk;
  input wen;

  wire clk;
  wire register9_q_net;
  wire wen;

  design_1_gpmc_axi_bridge_0_1_synth_reg_w_init_23 synth_reg_inst
       (.clk(clk),
        .register9_q_net(register9_q_net),
        .wen(wen));
endmodule

(* ORIG_REF_NAME = "xlregister_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0
   (o,
    a_d,
    clk);
  output [15:0]o;
  input [15:0]a_d;
  input clk;

  wire [15:0]a_d;
  wire clk;
  wire [15:0]o;

  design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1_29 synth_reg_inst
       (.a_d(a_d),
        .clk(clk),
        .o(o));
endmodule

(* ORIG_REF_NAME = "xlregister_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0_10
   (m_axi_lite_wdata,
    ce,
    i,
    clk);
  output [15:0]m_axi_lite_wdata;
  input ce;
  input [15:0]i;
  input clk;

  wire ce;
  wire clk;
  wire [15:0]i;
  wire [15:0]m_axi_lite_wdata;

  design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1 synth_reg_inst
       (.ce(ce),
        .clk(clk),
        .i(i),
        .m_axi_lite_wdata(m_axi_lite_wdata));
endmodule

(* ORIG_REF_NAME = "xlregister_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0_6
   (o,
    i,
    clk);
  output [15:0]o;
  input [15:0]i;
  input clk;

  wire clk;
  wire [15:0]i;
  wire [15:0]o;

  design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1_27 synth_reg_inst
       (.clk(clk),
        .i(i),
        .o(o));
endmodule

(* ORIG_REF_NAME = "xlregister_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized0_9
   (m_axi_lite_wdata,
    \fd_prim_array[15].bit_is_0.fdre_comp ,
    i,
    clk);
  output [15:0]m_axi_lite_wdata;
  input \fd_prim_array[15].bit_is_0.fdre_comp ;
  input [15:0]i;
  input clk;

  wire clk;
  wire \fd_prim_array[15].bit_is_0.fdre_comp ;
  wire [15:0]i;
  wire [15:0]m_axi_lite_wdata;

  design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized1_11 synth_reg_inst
       (.clk(clk),
        .\fd_prim_array[15].bit_is_0.fdre_comp (\fd_prim_array[15].bit_is_0.fdre_comp ),
        .i(i),
        .m_axi_lite_wdata(m_axi_lite_wdata));
endmodule

(* ORIG_REF_NAME = "xlregister_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized1
   (o,
    a,
    clk);
  output [2:0]o;
  input [2:0]a;
  input clk;

  wire [2:0]a;
  wire clk;
  wire [2:0]o;

  design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized3_25 synth_reg_inst
       (.a(a),
        .clk(clk),
        .o(o));
endmodule

(* ORIG_REF_NAME = "xlregister_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized1_7
   (o,
    i,
    clk);
  output [2:0]o;
  input [2:0]i;
  input clk;

  wire clk;
  wire [2:0]i;
  wire [2:0]o;

  design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized3 synth_reg_inst
       (.clk(clk),
        .i(i),
        .o(o));
endmodule

(* ORIG_REF_NAME = "xlregister_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized2
   (ce,
    o,
    delay2_q_net_x0,
    register4_q_net,
    register10_q_net,
    \fd_prim_array[0].bit_is_0.fdre_comp ,
    i,
    clk);
  output ce;
  output [18:0]o;
  input delay2_q_net_x0;
  input register4_q_net;
  input register10_q_net;
  input \fd_prim_array[0].bit_is_0.fdre_comp ;
  input [18:0]i;
  input clk;

  wire ce;
  wire clk;
  wire delay2_q_net_x0;
  wire \fd_prim_array[0].bit_is_0.fdre_comp ;
  wire [18:0]i;
  wire [18:0]o;
  wire register10_q_net;
  wire register4_q_net;

  design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized5 synth_reg_inst
       (.ce(ce),
        .clk(clk),
        .delay2_q_net_x0(delay2_q_net_x0),
        .\fd_prim_array[0].bit_is_0.fdre_comp (\fd_prim_array[0].bit_is_0.fdre_comp ),
        .i(i),
        .o(o),
        .register10_q_net(register10_q_net),
        .register4_q_net(register4_q_net));
endmodule

(* ORIG_REF_NAME = "xlregister_gpmc_axi_bridge" *) 
module design_1_gpmc_axi_bridge_0_1_xlregister_gpmc_axi_bridge__parameterized3
   (o,
    m_axi_lite_rvalid,
    m_axi_lite_rdata,
    clk);
  output [31:0]o;
  input m_axi_lite_rvalid;
  input [31:0]m_axi_lite_rdata;
  input clk;

  wire clk;
  wire [31:0]m_axi_lite_rdata;
  wire m_axi_lite_rvalid;
  wire [31:0]o;

  design_1_gpmc_axi_bridge_0_1_synth_reg_w_init__parameterized7 synth_reg_inst
       (.clk(clk),
        .m_axi_lite_rdata(m_axi_lite_rdata),
        .m_axi_lite_rvalid(m_axi_lite_rvalid),
        .o(o));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
