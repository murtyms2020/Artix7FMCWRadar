// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sun Dec 14 17:38:40 2025
// Host        : murtyms-Z270X-Gaming-7 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/murtyms/Radar/HarrisFMCWRadar/HarrisFMCWRadar.gen/sources_1/bd/design_1/ip/design_1_ad9361_spi_generic_3_1/design_1_ad9361_spi_generic_3_1_sim_netlist.v
// Design      : design_1_ad9361_spi_generic_3_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tffg1156-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ad9361_spi_generic_3_1,ad9361_spi_generic,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ad9361_spi_generic,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_ad9361_spi_generic_3_1
   (MOSI,
    SCLK,
    CSN,
    MISO,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  output MOSI;
  output SCLK;
  output CSN;
  input MISO;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_mode = "slave S_AXI_ACLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_mode = "slave S_AXI_ARESETN" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_mode = "slave S_AXI" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]S_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [3:0]S_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;

  wire \<const0> ;
  wire CSN;
  wire MISO;
  wire MOSI;
  wire SCLK;
  wire S_AXI_ACLK;
  wire [3:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_ad9361_spi_generic_3_1_ad9361_spi_generic U0
       (.CSN(CSN),
        .MISO(MISO),
        .MOSI(MOSI),
        .SCLK(SCLK),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[3:2]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[3:2]),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID));
endmodule

(* ORIG_REF_NAME = "ad9361_spi_generic" *) 
module design_1_ad9361_spi_generic_3_1_ad9361_spi_generic
   (SCLK,
    S_AXI_AWREADY,
    MOSI,
    CSN,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RVALID,
    S_AXI_BVALID,
    S_AXI_ARESETN,
    S_AXI_ACLK,
    S_AXI_AWADDR,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_WDATA,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    MISO,
    S_AXI_WSTRB,
    S_AXI_BREADY,
    S_AXI_RREADY);
  output SCLK;
  output S_AXI_AWREADY;
  output MOSI;
  output CSN;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output S_AXI_RVALID;
  output S_AXI_BVALID;
  input S_AXI_ARESETN;
  input S_AXI_ACLK;
  input [1:0]S_AXI_AWADDR;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input [31:0]S_AXI_WDATA;
  input [1:0]S_AXI_ARADDR;
  input S_AXI_ARVALID;
  input MISO;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_BREADY;
  input S_AXI_RREADY;

  wire CSN;
  wire MISO;
  wire MOSI;
  wire SCLK;
  wire S_AXI_ACLK;
  wire [1:0]S_AXI_ARADDR;
  wire S_AXI_ARESET;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [1:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_1_n_0 ;
  wire \axi_rdata[10]_i_1_n_0 ;
  wire \axi_rdata[11]_i_1_n_0 ;
  wire \axi_rdata[12]_i_1_n_0 ;
  wire \axi_rdata[13]_i_1_n_0 ;
  wire \axi_rdata[14]_i_1_n_0 ;
  wire \axi_rdata[15]_i_1_n_0 ;
  wire \axi_rdata[16]_i_1_n_0 ;
  wire \axi_rdata[17]_i_1_n_0 ;
  wire \axi_rdata[18]_i_1_n_0 ;
  wire \axi_rdata[19]_i_1_n_0 ;
  wire \axi_rdata[1]_i_1_n_0 ;
  wire \axi_rdata[20]_i_1_n_0 ;
  wire \axi_rdata[21]_i_1_n_0 ;
  wire \axi_rdata[22]_i_1_n_0 ;
  wire \axi_rdata[23]_i_1_n_0 ;
  wire \axi_rdata[24]_i_1_n_0 ;
  wire \axi_rdata[25]_i_1_n_0 ;
  wire \axi_rdata[26]_i_1_n_0 ;
  wire \axi_rdata[27]_i_1_n_0 ;
  wire \axi_rdata[28]_i_1_n_0 ;
  wire \axi_rdata[29]_i_1_n_0 ;
  wire \axi_rdata[2]_i_1_n_0 ;
  wire \axi_rdata[30]_i_1_n_0 ;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire \axi_rdata[3]_i_1_n_0 ;
  wire \axi_rdata[4]_i_1_n_0 ;
  wire \axi_rdata[5]_i_1_n_0 ;
  wire \axi_rdata[6]_i_1_n_0 ;
  wire \axi_rdata[7]_i_1_n_0 ;
  wire \axi_rdata[8]_i_1_n_0 ;
  wire \axi_rdata[9]_i_1_n_0 ;
  wire axi_rvalid03_out__0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  (* async_reg = "true" *) wire miso_sync1;
  (* async_reg = "true" *) wire miso_sync2;
  wire p_0_in2_in;
  wire [7:0]rd_data;
  wire rd_done;
  wire rd_en;
  wire rd_en_i_1_n_0;
  wire rd_req_edge;
  wire rd_req_edge0;
  wire rd_req_prev;
  wire \slv_reg0[0]_i_1_n_0 ;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[1]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[2]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[3]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[31]_i_2_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[1] ;
  wire \slv_reg1_reg_n_0_[20] ;
  wire \slv_reg1_reg_n_0_[21] ;
  wire \slv_reg1_reg_n_0_[22] ;
  wire \slv_reg1_reg_n_0_[23] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[2] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire \slv_reg1_reg_n_0_[3] ;
  wire \slv_reg1_reg_n_0_[4] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg1_reg_n_0_[6] ;
  wire \slv_reg1_reg_n_0_[7] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire \slv_reg1_reg_n_0_[9] ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg2_reg_n_0_[0] ;
  wire \slv_reg2_reg_n_0_[10] ;
  wire \slv_reg2_reg_n_0_[11] ;
  wire \slv_reg2_reg_n_0_[12] ;
  wire \slv_reg2_reg_n_0_[13] ;
  wire \slv_reg2_reg_n_0_[14] ;
  wire \slv_reg2_reg_n_0_[15] ;
  wire \slv_reg2_reg_n_0_[16] ;
  wire \slv_reg2_reg_n_0_[17] ;
  wire \slv_reg2_reg_n_0_[18] ;
  wire \slv_reg2_reg_n_0_[19] ;
  wire \slv_reg2_reg_n_0_[1] ;
  wire \slv_reg2_reg_n_0_[20] ;
  wire \slv_reg2_reg_n_0_[21] ;
  wire \slv_reg2_reg_n_0_[22] ;
  wire \slv_reg2_reg_n_0_[23] ;
  wire \slv_reg2_reg_n_0_[24] ;
  wire \slv_reg2_reg_n_0_[25] ;
  wire \slv_reg2_reg_n_0_[26] ;
  wire \slv_reg2_reg_n_0_[27] ;
  wire \slv_reg2_reg_n_0_[28] ;
  wire \slv_reg2_reg_n_0_[29] ;
  wire \slv_reg2_reg_n_0_[2] ;
  wire \slv_reg2_reg_n_0_[30] ;
  wire \slv_reg2_reg_n_0_[31] ;
  wire \slv_reg2_reg_n_0_[3] ;
  wire \slv_reg2_reg_n_0_[4] ;
  wire \slv_reg2_reg_n_0_[5] ;
  wire \slv_reg2_reg_n_0_[6] ;
  wire \slv_reg2_reg_n_0_[7] ;
  wire \slv_reg2_reg_n_0_[8] ;
  wire \slv_reg2_reg_n_0_[9] ;
  wire [7:0]slv_reg3;
  wire \slv_reg3_reg_n_0_[0] ;
  wire \slv_reg3_reg_n_0_[1] ;
  wire \slv_reg3_reg_n_0_[2] ;
  wire \slv_reg3_reg_n_0_[3] ;
  wire \slv_reg3_reg_n_0_[4] ;
  wire \slv_reg3_reg_n_0_[5] ;
  wire \slv_reg3_reg_n_0_[6] ;
  wire \slv_reg3_reg_n_0_[7] ;
  wire [9:0]spi_addr;
  wire [0:0]spi_addr_0;
  wire spi_busy_reg_n_0;
  wire spi_done;
  wire spi_master_i_n_5;
  wire spi_master_i_n_7;
  wire [0:0]spi_rd_data;
  wire [7:0]spi_wr_data;
  wire [0:0]spi_wr_data_1;
  wire wr_en;
  wire wr_en_i_1_n_0;
  wire wr_req_edge;
  wire wr_req_edge0;
  wire wr_req_prev;

  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(S_AXI_ARADDR[0]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(S_AXI_ARADDR[1]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(S_AXI_ARESET));
  FDRE \axi_araddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(S_AXI_ARESET));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(S_AXI_ARESET));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(S_AXI_AWADDR[0]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_AWREADY),
        .I4(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(S_AXI_AWADDR[1]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_AWREADY),
        .I4(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(S_AXI_ARESET));
  FDRE \axi_awaddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(S_AXI_ARESET));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(S_AXI_ARESET));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(S_AXI_BREADY),
        .I1(S_AXI_BVALID),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_WREADY),
        .I5(S_AXI_AWREADY),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(S_AXI_ARESET));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_1 
       (.I0(\slv_reg3_reg_n_0_[0] ),
        .I1(\slv_reg1_reg_n_0_[0] ),
        .I2(axi_araddr[2]),
        .I3(\slv_reg2_reg_n_0_[0] ),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[0] ),
        .O(\axi_rdata[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[10]_i_1 
       (.I0(\slv_reg1_reg_n_0_[10] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[10] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[10] ),
        .O(\axi_rdata[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[11]_i_1 
       (.I0(\slv_reg1_reg_n_0_[11] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[11] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[11] ),
        .O(\axi_rdata[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[12]_i_1 
       (.I0(\slv_reg1_reg_n_0_[12] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[12] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[12] ),
        .O(\axi_rdata[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[13]_i_1 
       (.I0(\slv_reg1_reg_n_0_[13] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[13] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[13] ),
        .O(\axi_rdata[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[14]_i_1 
       (.I0(\slv_reg1_reg_n_0_[14] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[14] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[14] ),
        .O(\axi_rdata[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[15]_i_1 
       (.I0(\slv_reg1_reg_n_0_[15] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[15] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[15] ),
        .O(\axi_rdata[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[16]_i_1 
       (.I0(\slv_reg1_reg_n_0_[16] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[16] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[16] ),
        .O(\axi_rdata[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[17]_i_1 
       (.I0(\slv_reg1_reg_n_0_[17] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[17] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[17] ),
        .O(\axi_rdata[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[18]_i_1 
       (.I0(\slv_reg1_reg_n_0_[18] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[18] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[18] ),
        .O(\axi_rdata[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[19]_i_1 
       (.I0(\slv_reg1_reg_n_0_[19] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[19] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[19] ),
        .O(\axi_rdata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_1 
       (.I0(\slv_reg3_reg_n_0_[1] ),
        .I1(\slv_reg1_reg_n_0_[1] ),
        .I2(axi_araddr[2]),
        .I3(\slv_reg2_reg_n_0_[1] ),
        .I4(axi_araddr[3]),
        .I5(p_0_in2_in),
        .O(\axi_rdata[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[20]_i_1 
       (.I0(\slv_reg1_reg_n_0_[20] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[20] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[20] ),
        .O(\axi_rdata[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[21]_i_1 
       (.I0(\slv_reg1_reg_n_0_[21] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[21] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[21] ),
        .O(\axi_rdata[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[22]_i_1 
       (.I0(\slv_reg1_reg_n_0_[22] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[22] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[22] ),
        .O(\axi_rdata[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[23]_i_1 
       (.I0(\slv_reg1_reg_n_0_[23] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[23] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[23] ),
        .O(\axi_rdata[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[24]_i_1 
       (.I0(\slv_reg1_reg_n_0_[24] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[24] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[24] ),
        .O(\axi_rdata[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[25]_i_1 
       (.I0(\slv_reg1_reg_n_0_[25] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[25] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[25] ),
        .O(\axi_rdata[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[26]_i_1 
       (.I0(\slv_reg1_reg_n_0_[26] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[26] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[26] ),
        .O(\axi_rdata[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[27]_i_1 
       (.I0(\slv_reg1_reg_n_0_[27] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[27] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[27] ),
        .O(\axi_rdata[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[28]_i_1 
       (.I0(\slv_reg1_reg_n_0_[28] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[28] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[28] ),
        .O(\axi_rdata[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[29]_i_1 
       (.I0(\slv_reg1_reg_n_0_[29] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[29] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[29] ),
        .O(\axi_rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_1 
       (.I0(\slv_reg3_reg_n_0_[2] ),
        .I1(\slv_reg1_reg_n_0_[2] ),
        .I2(axi_araddr[2]),
        .I3(\slv_reg2_reg_n_0_[2] ),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[2] ),
        .O(\axi_rdata[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[30]_i_1 
       (.I0(\slv_reg1_reg_n_0_[30] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[30] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[30] ),
        .O(\axi_rdata[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[31]_i_1 
       (.I0(\slv_reg1_reg_n_0_[31] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[31] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[31] ),
        .O(\axi_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_1 
       (.I0(\slv_reg3_reg_n_0_[3] ),
        .I1(\slv_reg1_reg_n_0_[3] ),
        .I2(axi_araddr[2]),
        .I3(\slv_reg2_reg_n_0_[3] ),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[3] ),
        .O(\axi_rdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_1 
       (.I0(\slv_reg3_reg_n_0_[4] ),
        .I1(\slv_reg1_reg_n_0_[4] ),
        .I2(axi_araddr[2]),
        .I3(\slv_reg2_reg_n_0_[4] ),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[4] ),
        .O(\axi_rdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_1 
       (.I0(\slv_reg3_reg_n_0_[5] ),
        .I1(\slv_reg1_reg_n_0_[5] ),
        .I2(axi_araddr[2]),
        .I3(\slv_reg2_reg_n_0_[5] ),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[5] ),
        .O(\axi_rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_1 
       (.I0(\slv_reg3_reg_n_0_[6] ),
        .I1(\slv_reg1_reg_n_0_[6] ),
        .I2(axi_araddr[2]),
        .I3(\slv_reg2_reg_n_0_[6] ),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[6] ),
        .O(\axi_rdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_1 
       (.I0(\slv_reg3_reg_n_0_[7] ),
        .I1(\slv_reg1_reg_n_0_[7] ),
        .I2(axi_araddr[2]),
        .I3(\slv_reg2_reg_n_0_[7] ),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[7] ),
        .O(\axi_rdata[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[8]_i_1 
       (.I0(\slv_reg1_reg_n_0_[8] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[8] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[8] ),
        .O(\axi_rdata[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[9]_i_1 
       (.I0(\slv_reg1_reg_n_0_[9] ),
        .I1(axi_araddr[2]),
        .I2(\slv_reg2_reg_n_0_[9] ),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[9] ),
        .O(\axi_rdata[9]_i_1_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[0]_i_1_n_0 ),
        .Q(S_AXI_RDATA[0]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[10]_i_1_n_0 ),
        .Q(S_AXI_RDATA[10]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[11]_i_1_n_0 ),
        .Q(S_AXI_RDATA[11]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[12]_i_1_n_0 ),
        .Q(S_AXI_RDATA[12]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[13]_i_1_n_0 ),
        .Q(S_AXI_RDATA[13]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[14]_i_1_n_0 ),
        .Q(S_AXI_RDATA[14]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[15]_i_1_n_0 ),
        .Q(S_AXI_RDATA[15]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[16]_i_1_n_0 ),
        .Q(S_AXI_RDATA[16]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[17]_i_1_n_0 ),
        .Q(S_AXI_RDATA[17]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[18]_i_1_n_0 ),
        .Q(S_AXI_RDATA[18]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[19]_i_1_n_0 ),
        .Q(S_AXI_RDATA[19]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[1]_i_1_n_0 ),
        .Q(S_AXI_RDATA[1]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[20]_i_1_n_0 ),
        .Q(S_AXI_RDATA[20]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[21]_i_1_n_0 ),
        .Q(S_AXI_RDATA[21]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[22]_i_1_n_0 ),
        .Q(S_AXI_RDATA[22]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[23]_i_1_n_0 ),
        .Q(S_AXI_RDATA[23]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[24]_i_1_n_0 ),
        .Q(S_AXI_RDATA[24]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[25]_i_1_n_0 ),
        .Q(S_AXI_RDATA[25]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[26]_i_1_n_0 ),
        .Q(S_AXI_RDATA[26]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[27]_i_1_n_0 ),
        .Q(S_AXI_RDATA[27]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[28]_i_1_n_0 ),
        .Q(S_AXI_RDATA[28]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[29]_i_1_n_0 ),
        .Q(S_AXI_RDATA[29]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[2]_i_1_n_0 ),
        .Q(S_AXI_RDATA[2]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[30]_i_1_n_0 ),
        .Q(S_AXI_RDATA[30]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[31]_i_1_n_0 ),
        .Q(S_AXI_RDATA[31]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[3]_i_1_n_0 ),
        .Q(S_AXI_RDATA[3]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[4]_i_1_n_0 ),
        .Q(S_AXI_RDATA[4]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[5]_i_1_n_0 ),
        .Q(S_AXI_RDATA[5]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[6]_i_1_n_0 ),
        .Q(S_AXI_RDATA[6]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[7]_i_1_n_0 ),
        .Q(S_AXI_RDATA[7]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[8]_i_1_n_0 ),
        .Q(S_AXI_RDATA[8]),
        .R(S_AXI_ARESET));
  FDRE \axi_rdata_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid03_out__0),
        .D(\axi_rdata[9]_i_1_n_0 ),
        .Q(S_AXI_RDATA[9]),
        .R(S_AXI_ARESET));
  LUT3 #(
    .INIT(8'h08)) 
    axi_rvalid03_out
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RVALID),
        .O(axi_rvalid03_out__0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .I2(S_AXI_RVALID),
        .I3(S_AXI_RREADY),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(S_AXI_ARESET));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(S_AXI_ARESET));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    miso_sync1_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(MISO),
        .Q(miso_sync1),
        .R(S_AXI_ARESET));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    miso_sync2_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(miso_sync1),
        .Q(miso_sync2),
        .R(S_AXI_ARESET));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    rd_en_i_1
       (.I0(spi_busy_reg_n_0),
        .I1(rd_req_edge),
        .I2(S_AXI_ARESETN),
        .I3(wr_req_edge),
        .O(rd_en_i_1_n_0));
  FDRE rd_en_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(rd_en_i_1_n_0),
        .Q(rd_en),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    rd_req_edge_i_1
       (.I0(p_0_in2_in),
        .I1(rd_req_prev),
        .O(rd_req_edge0));
  FDRE rd_req_edge_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(rd_req_edge0),
        .Q(rd_req_edge),
        .R(S_AXI_ARESET));
  FDRE rd_req_prev_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_0_in2_in),
        .Q(rd_req_prev),
        .R(S_AXI_ARESET));
  LUT5 #(
    .INIT(32'h888B8888)) 
    \slv_reg0[0]_i_1 
       (.I0(S_AXI_WDATA[0]),
        .I1(\slv_reg0[7]_i_1_n_0 ),
        .I2(wr_req_edge),
        .I3(rd_req_edge),
        .I4(\slv_reg0_reg_n_0_[0] ),
        .O(\slv_reg0[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_reg0[15]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[1]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h888B8888)) 
    \slv_reg0[1]_i_1 
       (.I0(S_AXI_WDATA[1]),
        .I1(\slv_reg0[7]_i_1_n_0 ),
        .I2(wr_req_edge),
        .I3(rd_req_edge),
        .I4(p_0_in2_in),
        .O(\slv_reg0[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_reg0[23]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[2]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg0[2]_i_1 
       (.I0(S_AXI_WDATA[2]),
        .I1(\slv_reg0[7]_i_1_n_0 ),
        .I2(spi_busy_reg_n_0),
        .O(\slv_reg0[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_reg0[31]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[3]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg0[3]_i_1 
       (.I0(S_AXI_WDATA[3]),
        .I1(\slv_reg0[7]_i_1_n_0 ),
        .I2(spi_done),
        .O(\slv_reg0[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \slv_reg0[7]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[0]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\slv_reg0[0]_i_1_n_0 ),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\slv_reg0[1]_i_1_n_0 ),
        .Q(p_0_in2_in),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\slv_reg0[2]_i_1_n_0 ),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\slv_reg0[3]_i_1_n_0 ),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg0_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(S_AXI_ARESET));
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg1[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg1[31]_i_2_n_0 ),
        .I3(S_AXI_WSTRB[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg1[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg1[31]_i_2_n_0 ),
        .I3(S_AXI_WSTRB[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg1[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg1[31]_i_2_n_0 ),
        .I3(S_AXI_WSTRB[3]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg1[31]_i_2 
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .O(\slv_reg1[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \slv_reg1[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(\slv_reg1[31]_i_2_n_0 ),
        .I3(S_AXI_WSTRB[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\slv_reg1_reg_n_0_[1] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(\slv_reg1_reg_n_0_[22] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(\slv_reg1_reg_n_0_[23] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\slv_reg1_reg_n_0_[2] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\slv_reg1_reg_n_0_[3] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(\slv_reg1_reg_n_0_[4] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(\slv_reg1_reg_n_0_[6] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(\slv_reg1_reg_n_0_[7] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg1_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(S_AXI_ARESET));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[1]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[2]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[3]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(S_AXI_WSTRB[0]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\slv_reg2_reg_n_0_[0] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(\slv_reg2_reg_n_0_[10] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(\slv_reg2_reg_n_0_[11] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(\slv_reg2_reg_n_0_[12] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(\slv_reg2_reg_n_0_[13] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(\slv_reg2_reg_n_0_[14] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(\slv_reg2_reg_n_0_[15] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(\slv_reg2_reg_n_0_[16] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(\slv_reg2_reg_n_0_[17] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(\slv_reg2_reg_n_0_[18] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(\slv_reg2_reg_n_0_[19] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\slv_reg2_reg_n_0_[1] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(\slv_reg2_reg_n_0_[20] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(\slv_reg2_reg_n_0_[21] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(\slv_reg2_reg_n_0_[22] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(\slv_reg2_reg_n_0_[23] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(\slv_reg2_reg_n_0_[24] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(\slv_reg2_reg_n_0_[25] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(\slv_reg2_reg_n_0_[26] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(\slv_reg2_reg_n_0_[27] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(\slv_reg2_reg_n_0_[28] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(\slv_reg2_reg_n_0_[29] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\slv_reg2_reg_n_0_[2] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(\slv_reg2_reg_n_0_[30] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(\slv_reg2_reg_n_0_[31] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\slv_reg2_reg_n_0_[3] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(\slv_reg2_reg_n_0_[4] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(\slv_reg2_reg_n_0_[5] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(\slv_reg2_reg_n_0_[6] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(\slv_reg2_reg_n_0_[7] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(\slv_reg2_reg_n_0_[8] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg2_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(\slv_reg2_reg_n_0_[9] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(rd_done),
        .D(slv_reg3[0]),
        .Q(\slv_reg3_reg_n_0_[0] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(rd_done),
        .D(slv_reg3[1]),
        .Q(\slv_reg3_reg_n_0_[1] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(rd_done),
        .D(slv_reg3[2]),
        .Q(\slv_reg3_reg_n_0_[2] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(rd_done),
        .D(slv_reg3[3]),
        .Q(\slv_reg3_reg_n_0_[3] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(rd_done),
        .D(slv_reg3[4]),
        .Q(\slv_reg3_reg_n_0_[4] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(rd_done),
        .D(slv_reg3[5]),
        .Q(\slv_reg3_reg_n_0_[5] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(rd_done),
        .D(slv_reg3[6]),
        .Q(\slv_reg3_reg_n_0_[6] ),
        .R(S_AXI_ARESET));
  FDRE \slv_reg3_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(rd_done),
        .D(slv_reg3[7]),
        .Q(\slv_reg3_reg_n_0_[7] ),
        .R(S_AXI_ARESET));
  LUT3 #(
    .INIT(8'h32)) 
    \spi_addr[9]_i_1 
       (.I0(wr_req_edge),
        .I1(spi_busy_reg_n_0),
        .I2(rd_req_edge),
        .O(spi_addr_0));
  FDRE \spi_addr_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(spi_addr_0),
        .D(\slv_reg1_reg_n_0_[0] ),
        .Q(spi_addr[0]),
        .R(S_AXI_ARESET));
  FDRE \spi_addr_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(spi_addr_0),
        .D(\slv_reg1_reg_n_0_[1] ),
        .Q(spi_addr[1]),
        .R(S_AXI_ARESET));
  FDRE \spi_addr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(spi_addr_0),
        .D(\slv_reg1_reg_n_0_[2] ),
        .Q(spi_addr[2]),
        .R(S_AXI_ARESET));
  FDRE \spi_addr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(spi_addr_0),
        .D(\slv_reg1_reg_n_0_[3] ),
        .Q(spi_addr[3]),
        .R(S_AXI_ARESET));
  FDRE \spi_addr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(spi_addr_0),
        .D(\slv_reg1_reg_n_0_[4] ),
        .Q(spi_addr[4]),
        .R(S_AXI_ARESET));
  FDRE \spi_addr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(spi_addr_0),
        .D(\slv_reg1_reg_n_0_[5] ),
        .Q(spi_addr[5]),
        .R(S_AXI_ARESET));
  FDRE \spi_addr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(spi_addr_0),
        .D(\slv_reg1_reg_n_0_[6] ),
        .Q(spi_addr[6]),
        .R(S_AXI_ARESET));
  FDRE \spi_addr_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(spi_addr_0),
        .D(\slv_reg1_reg_n_0_[7] ),
        .Q(spi_addr[7]),
        .R(S_AXI_ARESET));
  FDRE \spi_addr_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(spi_addr_0),
        .D(\slv_reg1_reg_n_0_[8] ),
        .Q(spi_addr[8]),
        .R(S_AXI_ARESET));
  FDRE \spi_addr_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(spi_addr_0),
        .D(\slv_reg1_reg_n_0_[9] ),
        .Q(spi_addr[9]),
        .R(S_AXI_ARESET));
  FDRE spi_busy_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(spi_master_i_n_7),
        .Q(spi_busy_reg_n_0),
        .R(S_AXI_ARESET));
  FDRE spi_done_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(spi_master_i_n_5),
        .Q(spi_done),
        .R(1'b0));
  design_1_ad9361_spi_generic_3_1_spi_master spi_master_i
       (.CSN(CSN),
        .D(miso_sync2),
        .E(spi_rd_data),
        .MOSI(MOSI),
        .Q(spi_wr_data),
        .SCLK(SCLK),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESET(S_AXI_ARESET),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .\rd_data_reg[7]_0 (rd_data),
        .rd_done(rd_done),
        .rd_en(rd_en),
        .rd_req_edge(rd_req_edge),
        .rd_req_edge_reg(spi_master_i_n_7),
        .spi_busy_reg(spi_busy_reg_n_0),
        .spi_done(spi_done),
        .spi_done_reg(spi_master_i_n_5),
        .\wr_data_reg_reg[18]_0 (spi_addr),
        .wr_en(wr_en),
        .wr_req_edge(wr_req_edge));
  FDRE \spi_rd_data_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(spi_rd_data),
        .D(rd_data[0]),
        .Q(slv_reg3[0]),
        .R(1'b0));
  FDRE \spi_rd_data_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(spi_rd_data),
        .D(rd_data[1]),
        .Q(slv_reg3[1]),
        .R(1'b0));
  FDRE \spi_rd_data_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(spi_rd_data),
        .D(rd_data[2]),
        .Q(slv_reg3[2]),
        .R(1'b0));
  FDRE \spi_rd_data_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(spi_rd_data),
        .D(rd_data[3]),
        .Q(slv_reg3[3]),
        .R(1'b0));
  FDRE \spi_rd_data_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(spi_rd_data),
        .D(rd_data[4]),
        .Q(slv_reg3[4]),
        .R(1'b0));
  FDRE \spi_rd_data_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(spi_rd_data),
        .D(rd_data[5]),
        .Q(slv_reg3[5]),
        .R(1'b0));
  FDRE \spi_rd_data_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(spi_rd_data),
        .D(rd_data[6]),
        .Q(slv_reg3[6]),
        .R(1'b0));
  FDRE \spi_rd_data_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(spi_rd_data),
        .D(rd_data[7]),
        .Q(slv_reg3[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \spi_wr_data[7]_i_1 
       (.I0(wr_req_edge),
        .I1(spi_busy_reg_n_0),
        .O(spi_wr_data_1));
  FDRE \spi_wr_data_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(spi_wr_data_1),
        .D(\slv_reg2_reg_n_0_[0] ),
        .Q(spi_wr_data[0]),
        .R(S_AXI_ARESET));
  FDRE \spi_wr_data_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(spi_wr_data_1),
        .D(\slv_reg2_reg_n_0_[1] ),
        .Q(spi_wr_data[1]),
        .R(S_AXI_ARESET));
  FDRE \spi_wr_data_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(spi_wr_data_1),
        .D(\slv_reg2_reg_n_0_[2] ),
        .Q(spi_wr_data[2]),
        .R(S_AXI_ARESET));
  FDRE \spi_wr_data_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(spi_wr_data_1),
        .D(\slv_reg2_reg_n_0_[3] ),
        .Q(spi_wr_data[3]),
        .R(S_AXI_ARESET));
  FDRE \spi_wr_data_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(spi_wr_data_1),
        .D(\slv_reg2_reg_n_0_[4] ),
        .Q(spi_wr_data[4]),
        .R(S_AXI_ARESET));
  FDRE \spi_wr_data_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(spi_wr_data_1),
        .D(\slv_reg2_reg_n_0_[5] ),
        .Q(spi_wr_data[5]),
        .R(S_AXI_ARESET));
  FDRE \spi_wr_data_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(spi_wr_data_1),
        .D(\slv_reg2_reg_n_0_[6] ),
        .Q(spi_wr_data[6]),
        .R(S_AXI_ARESET));
  FDRE \spi_wr_data_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(spi_wr_data_1),
        .D(\slv_reg2_reg_n_0_[7] ),
        .Q(spi_wr_data[7]),
        .R(S_AXI_ARESET));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h40)) 
    wr_en_i_1
       (.I0(spi_busy_reg_n_0),
        .I1(wr_req_edge),
        .I2(S_AXI_ARESETN),
        .O(wr_en_i_1_n_0));
  FDRE wr_en_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(wr_en_i_1_n_0),
        .Q(wr_en),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    wr_req_edge_i_1
       (.I0(\slv_reg0_reg_n_0_[0] ),
        .I1(wr_req_prev),
        .O(wr_req_edge0));
  FDRE wr_req_edge_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(wr_req_edge0),
        .Q(wr_req_edge),
        .R(S_AXI_ARESET));
  FDRE wr_req_prev_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\slv_reg0_reg_n_0_[0] ),
        .Q(wr_req_prev),
        .R(S_AXI_ARESET));
endmodule

(* ORIG_REF_NAME = "spi_master" *) 
module design_1_ad9361_spi_generic_3_1_spi_master
   (S_AXI_ARESET,
    rd_done,
    SCLK,
    MOSI,
    CSN,
    spi_done_reg,
    E,
    rd_req_edge_reg,
    \rd_data_reg[7]_0 ,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    rd_en,
    wr_en,
    spi_done,
    spi_busy_reg,
    rd_req_edge,
    wr_req_edge,
    Q,
    \wr_data_reg_reg[18]_0 ,
    D);
  output S_AXI_ARESET;
  output rd_done;
  output SCLK;
  output MOSI;
  output CSN;
  output spi_done_reg;
  output [0:0]E;
  output rd_req_edge_reg;
  output [7:0]\rd_data_reg[7]_0 ;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input rd_en;
  input wr_en;
  input spi_done;
  input spi_busy_reg;
  input rd_req_edge;
  input wr_req_edge;
  input [7:0]Q;
  input [9:0]\wr_data_reg_reg[18]_0 ;
  input [0:0]D;

  wire CSN;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire MOSI;
  wire [7:0]Q;
  wire SCLK;
  wire \SR_reg_n_0_[0] ;
  wire \SR_reg_n_0_[1] ;
  wire \SR_reg_n_0_[2] ;
  wire \SR_reg_n_0_[3] ;
  wire \SR_reg_n_0_[4] ;
  wire \SR_reg_n_0_[5] ;
  wire \SR_reg_n_0_[6] ;
  wire \SR_reg_n_0_[7] ;
  wire S_AXI_ACLK;
  wire S_AXI_ARESET;
  wire S_AXI_ARESETN;
  wire __3;
  wire bit_counter17_out;
  wire \bit_counter[0]_i_1_n_0 ;
  wire \bit_counter[1]_i_1_n_0 ;
  wire \bit_counter[2]_i_1_n_0 ;
  wire \bit_counter[3]_i_1_n_0 ;
  wire \bit_counter[4]_i_1_n_0 ;
  wire \bit_counter[4]_i_2_n_0 ;
  wire \bit_counter[4]_i_3_n_0 ;
  wire \bit_counter_reg_n_0_[0] ;
  wire \bit_counter_reg_n_0_[1] ;
  wire \bit_counter_reg_n_0_[2] ;
  wire \bit_counter_reg_n_0_[3] ;
  wire \bit_counter_reg_n_0_[4] ;
  wire csw_i;
  wire csw_i0;
  wire miso_en;
  wire miso_en_i_1_n_0;
  wire miso_en_reg__0;
  wire mosi_i;
  wire mosi_i_i_10_n_0;
  wire mosi_i_i_11_n_0;
  wire mosi_i_i_12_n_0;
  wire mosi_i_i_13_n_0;
  wire mosi_i_i_14_n_0;
  wire mosi_i_i_1_n_0;
  wire mosi_i_i_2_n_0;
  wire mosi_i_i_3_n_0;
  wire mosi_i_i_4_n_0;
  wire mosi_i_i_5_n_0;
  wire mosi_i_i_6_n_0;
  wire mosi_i_i_7_n_0;
  wire mosi_i_i_8_n_0;
  wire mosi_i_i_9_n_0;
  wire mosi_i_reg__0;
  wire [7:0]\rd_data_reg[7]_0 ;
  wire rd_done;
  wire rd_en;
  wire rd_req_edge;
  wire rd_req_edge_reg;
  wire read_done;
  wire read_done0;
  wire read_done_reg__0;
  wire reading;
  wire reading_i;
  wire reading_reg__0;
  wire \sclk_counter[0]_i_1_n_0 ;
  wire \sclk_counter[1]_i_1_n_0 ;
  wire \sclk_counter_reg_n_0_[0] ;
  wire spi_busy_reg;
  wire spi_done;
  wire spi_done_reg;
  wire [24:1]wr_data_reg;
  wire \wr_data_reg[19]_i_1_n_0 ;
  wire \wr_data_reg[24]_i_1_n_0 ;
  wire \wr_data_reg[8]_i_1_n_0 ;
  wire \wr_data_reg[8]_i_2_n_0 ;
  wire [9:0]\wr_data_reg_reg[18]_0 ;
  wire wr_done;
  wire wr_en;
  wire wr_req_edge;
  wire write_done;
  wire write_done0;
  wire write_done_i_2_n_0;
  wire write_done_reg__0;
  wire writing;
  wire writing_i;
  wire writing_reg__0;

  FDRE CSN_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(csw_i),
        .Q(CSN),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFF0FFF0FFF00010)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(rd_en),
        .I1(wr_en),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .I4(reading_i),
        .I5(writing_i),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hC0DFC0C0)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(rd_en),
        .I1(wr_en),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .I4(writing_i),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h303F3020)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(rd_en),
        .I1(wr_en),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .I4(reading_i),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(write_done),
        .I1(writing_i),
        .I2(read_done),
        .I3(reading_i),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "st1_idle:001,st3_reading:100,st2_writing:010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(S_AXI_ARESET));
  (* FSM_ENCODED_STATES = "st1_idle:001,st3_reading:100,st2_writing:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(writing_i),
        .R(S_AXI_ARESET));
  (* FSM_ENCODED_STATES = "st1_idle:001,st3_reading:100,st2_writing:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(reading_i),
        .R(S_AXI_ARESET));
  FDRE MOSI_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(mosi_i_reg__0),
        .Q(MOSI),
        .R(1'b0));
  FDRE SCLK_reg
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(__3),
        .Q(SCLK),
        .R(1'b0));
  FDRE \SR_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(miso_en_reg__0),
        .D(D),
        .Q(\SR_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \SR_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(miso_en_reg__0),
        .D(\SR_reg_n_0_[0] ),
        .Q(\SR_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \SR_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(miso_en_reg__0),
        .D(\SR_reg_n_0_[1] ),
        .Q(\SR_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \SR_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(miso_en_reg__0),
        .D(\SR_reg_n_0_[2] ),
        .Q(\SR_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \SR_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(miso_en_reg__0),
        .D(\SR_reg_n_0_[3] ),
        .Q(\SR_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \SR_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(miso_en_reg__0),
        .D(\SR_reg_n_0_[4] ),
        .Q(\SR_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \SR_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(miso_en_reg__0),
        .D(\SR_reg_n_0_[5] ),
        .Q(\SR_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \SR_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(miso_en_reg__0),
        .D(\SR_reg_n_0_[6] ),
        .Q(\SR_reg_n_0_[7] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARESETN),
        .O(S_AXI_ARESET));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bit_counter[0]_i_1 
       (.I0(\bit_counter[4]_i_3_n_0 ),
        .I1(\bit_counter_reg_n_0_[0] ),
        .O(\bit_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \bit_counter[1]_i_1 
       (.I0(\bit_counter[4]_i_3_n_0 ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .O(\bit_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \bit_counter[2]_i_1 
       (.I0(\bit_counter[4]_i_3_n_0 ),
        .I1(\bit_counter_reg_n_0_[0] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\bit_counter_reg_n_0_[2] ),
        .O(\bit_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000028888888)) 
    \bit_counter[3]_i_1 
       (.I0(\bit_counter[4]_i_3_n_0 ),
        .I1(\bit_counter_reg_n_0_[3] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(\bit_counter_reg_n_0_[2] ),
        .I5(\bit_counter_reg_n_0_[4] ),
        .O(\bit_counter[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \bit_counter[4]_i_1 
       (.I0(\bit_counter[4]_i_3_n_0 ),
        .I1(reading_i),
        .I2(reading_reg__0),
        .I3(writing_i),
        .I4(writing_reg__0),
        .O(\bit_counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA80000000)) 
    \bit_counter[4]_i_2 
       (.I0(\bit_counter[4]_i_3_n_0 ),
        .I1(\bit_counter_reg_n_0_[0] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\bit_counter_reg_n_0_[2] ),
        .I4(\bit_counter_reg_n_0_[3] ),
        .I5(\bit_counter_reg_n_0_[4] ),
        .O(\bit_counter[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0EEE000000000000)) 
    \bit_counter[4]_i_3 
       (.I0(reading),
        .I1(writing),
        .I2(\bit_counter_reg_n_0_[4] ),
        .I3(\bit_counter_reg_n_0_[3] ),
        .I4(\sclk_counter_reg_n_0_[0] ),
        .I5(__3),
        .O(\bit_counter[4]_i_3_n_0 ));
  FDRE \bit_counter_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\bit_counter[4]_i_1_n_0 ),
        .D(\bit_counter[0]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[0] ),
        .R(S_AXI_ARESET));
  FDRE \bit_counter_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\bit_counter[4]_i_1_n_0 ),
        .D(\bit_counter[1]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[1] ),
        .R(S_AXI_ARESET));
  FDRE \bit_counter_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\bit_counter[4]_i_1_n_0 ),
        .D(\bit_counter[2]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[2] ),
        .R(S_AXI_ARESET));
  FDRE \bit_counter_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\bit_counter[4]_i_1_n_0 ),
        .D(\bit_counter[3]_i_1_n_0 ),
        .Q(\bit_counter_reg_n_0_[3] ),
        .R(S_AXI_ARESET));
  FDRE \bit_counter_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\bit_counter[4]_i_1_n_0 ),
        .D(\bit_counter[4]_i_2_n_0 ),
        .Q(\bit_counter_reg_n_0_[4] ),
        .R(S_AXI_ARESET));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    csw_i_inv_i_1
       (.I0(reading_i),
        .I1(writing_i),
        .O(csw_i0));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    csw_i_reg_inv
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(csw_i0),
        .Q(csw_i),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    miso_en_i_1
       (.I0(__3),
        .I1(\sclk_counter_reg_n_0_[0] ),
        .I2(\bit_counter_reg_n_0_[4] ),
        .I3(reading),
        .I4(miso_en),
        .O(miso_en_i_1_n_0));
  FDRE miso_en_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(miso_en_i_1_n_0),
        .Q(miso_en),
        .R(S_AXI_ARESET));
  FDRE miso_en_reg_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(miso_en),
        .Q(miso_en_reg__0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    mosi_i_i_1
       (.I0(mosi_i_i_2_n_0),
        .I1(mosi_i_i_3_n_0),
        .I2(mosi_i_i_4_n_0),
        .I3(mosi_i_i_5_n_0),
        .I4(mosi_i),
        .O(mosi_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h56)) 
    mosi_i_i_10
       (.I0(\bit_counter_reg_n_0_[2] ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .O(mosi_i_i_10_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    mosi_i_i_11
       (.I0(wr_data_reg[11]),
        .I1(wr_data_reg[10]),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(wr_data_reg[9]),
        .I5(wr_data_reg[8]),
        .O(mosi_i_i_11_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    mosi_i_i_12
       (.I0(wr_data_reg[19]),
        .I1(wr_data_reg[18]),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(wr_data_reg[17]),
        .I5(wr_data_reg[16]),
        .O(mosi_i_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    mosi_i_i_13
       (.I0(\bit_counter_reg_n_0_[0] ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .O(mosi_i_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    mosi_i_i_14
       (.I0(wr_data_reg[24]),
        .I1(\bit_counter_reg_n_0_[2] ),
        .I2(\bit_counter_reg_n_0_[1] ),
        .I3(\bit_counter_reg_n_0_[0] ),
        .O(mosi_i_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7770)) 
    mosi_i_i_15
       (.I0(\bit_counter_reg_n_0_[3] ),
        .I1(\bit_counter_reg_n_0_[4] ),
        .I2(writing),
        .I3(reading),
        .O(bit_counter17_out));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_i_2
       (.I0(mosi_i_i_6_n_0),
        .I1(mosi_i_i_7_n_0),
        .I2(mosi_i_i_8_n_0),
        .I3(mosi_i_i_9_n_0),
        .I4(mosi_i_i_10_n_0),
        .I5(mosi_i_i_11_n_0),
        .O(mosi_i_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h5556AAAA)) 
    mosi_i_i_3
       (.I0(\bit_counter_reg_n_0_[4] ),
        .I1(\bit_counter_reg_n_0_[1] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[2] ),
        .I4(\bit_counter_reg_n_0_[3] ),
        .O(mosi_i_i_3_n_0));
  LUT6 #(
    .INIT(64'hFACFFCFA0AC00C0A)) 
    mosi_i_i_4
       (.I0(wr_data_reg[19]),
        .I1(mosi_i_i_12_n_0),
        .I2(\bit_counter_reg_n_0_[3] ),
        .I3(\bit_counter_reg_n_0_[2] ),
        .I4(mosi_i_i_13_n_0),
        .I5(mosi_i_i_14_n_0),
        .O(mosi_i_i_4_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    mosi_i_i_5
       (.I0(bit_counter17_out),
        .I1(__3),
        .I2(\sclk_counter_reg_n_0_[0] ),
        .I3(S_AXI_ARESETN),
        .O(mosi_i_i_5_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    mosi_i_i_6
       (.I0(wr_data_reg[7]),
        .I1(wr_data_reg[6]),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(wr_data_reg[5]),
        .I5(wr_data_reg[4]),
        .O(mosi_i_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFCA00CA0)) 
    mosi_i_i_7
       (.I0(wr_data_reg[3]),
        .I1(wr_data_reg[2]),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(wr_data_reg[1]),
        .O(mosi_i_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5556)) 
    mosi_i_i_8
       (.I0(\bit_counter_reg_n_0_[3] ),
        .I1(\bit_counter_reg_n_0_[2] ),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .O(mosi_i_i_8_n_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    mosi_i_i_9
       (.I0(wr_data_reg[15]),
        .I1(wr_data_reg[14]),
        .I2(\bit_counter_reg_n_0_[0] ),
        .I3(\bit_counter_reg_n_0_[1] ),
        .I4(wr_data_reg[13]),
        .I5(wr_data_reg[12]),
        .O(mosi_i_i_9_n_0));
  FDRE mosi_i_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(mosi_i_i_1_n_0),
        .Q(mosi_i),
        .R(1'b0));
  FDRE mosi_i_reg_reg
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(mosi_i),
        .Q(mosi_i_reg__0),
        .R(1'b0));
  FDRE \rd_data_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\SR_reg_n_0_[0] ),
        .Q(\rd_data_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \rd_data_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\SR_reg_n_0_[1] ),
        .Q(\rd_data_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \rd_data_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\SR_reg_n_0_[2] ),
        .Q(\rd_data_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \rd_data_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\SR_reg_n_0_[3] ),
        .Q(\rd_data_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \rd_data_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\SR_reg_n_0_[4] ),
        .Q(\rd_data_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \rd_data_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\SR_reg_n_0_[5] ),
        .Q(\rd_data_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \rd_data_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\SR_reg_n_0_[6] ),
        .Q(\rd_data_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \rd_data_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\SR_reg_n_0_[7] ),
        .Q(\rd_data_reg[7]_0 [7]),
        .R(1'b0));
  FDRE rd_done_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(read_done),
        .Q(rd_done),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    read_done_i_1
       (.I0(write_done_i_2_n_0),
        .I1(\bit_counter_reg_n_0_[4] ),
        .I2(\bit_counter_reg_n_0_[3] ),
        .I3(read_done),
        .I4(reading),
        .I5(read_done_reg__0),
        .O(read_done0));
  FDRE read_done_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(read_done0),
        .Q(read_done),
        .R(S_AXI_ARESET));
  FDRE read_done_reg_reg
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(read_done),
        .Q(read_done_reg__0),
        .R(1'b0));
  FDRE reading_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(reading_i),
        .Q(reading),
        .R(S_AXI_ARESET));
  FDRE reading_reg_reg
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(reading_i),
        .Q(reading_reg__0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF1110EEE)) 
    \sclk_counter[0]_i_1 
       (.I0(reading),
        .I1(writing),
        .I2(\bit_counter_reg_n_0_[4] ),
        .I3(\bit_counter_reg_n_0_[3] ),
        .I4(\sclk_counter_reg_n_0_[0] ),
        .O(\sclk_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD5D5D5FF2A2A2A00)) 
    \sclk_counter[1]_i_1 
       (.I0(\sclk_counter_reg_n_0_[0] ),
        .I1(\bit_counter_reg_n_0_[3] ),
        .I2(\bit_counter_reg_n_0_[4] ),
        .I3(writing),
        .I4(reading),
        .I5(__3),
        .O(\sclk_counter[1]_i_1_n_0 ));
  FDRE \sclk_counter_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\sclk_counter[0]_i_1_n_0 ),
        .Q(\sclk_counter_reg_n_0_[0] ),
        .R(S_AXI_ARESET));
  FDRE \sclk_counter_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\sclk_counter[1]_i_1_n_0 ),
        .Q(__3),
        .R(S_AXI_ARESET));
  LUT5 #(
    .INIT(32'h000FEEEE)) 
    spi_busy_i_1
       (.I0(rd_req_edge),
        .I1(wr_req_edge),
        .I2(rd_done),
        .I3(wr_done),
        .I4(spi_busy_reg),
        .O(rd_req_edge_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFE000000)) 
    spi_done_i_1
       (.I0(spi_done),
        .I1(rd_done),
        .I2(wr_done),
        .I3(S_AXI_ARESETN),
        .I4(spi_busy_reg),
        .O(spi_done_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \spi_rd_data[7]_i_1 
       (.I0(rd_done),
        .I1(S_AXI_ARESETN),
        .I2(spi_busy_reg),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h3020)) 
    \wr_data_reg[19]_i_1 
       (.I0(rd_en),
        .I1(wr_en),
        .I2(S_AXI_ARESETN),
        .I3(wr_data_reg[19]),
        .O(\wr_data_reg[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF0E0)) 
    \wr_data_reg[24]_i_1 
       (.I0(rd_en),
        .I1(wr_en),
        .I2(S_AXI_ARESETN),
        .I3(wr_data_reg[24]),
        .O(\wr_data_reg[24]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h75)) 
    \wr_data_reg[8]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(wr_en),
        .I2(rd_en),
        .O(\wr_data_reg[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \wr_data_reg[8]_i_2 
       (.I0(rd_en),
        .I1(wr_en),
        .I2(S_AXI_ARESETN),
        .O(\wr_data_reg[8]_i_2_n_0 ));
  FDRE \wr_data_reg_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\wr_data_reg[8]_i_2_n_0 ),
        .D(\wr_data_reg_reg[18]_0 [1]),
        .Q(wr_data_reg[10]),
        .R(S_AXI_ARESET));
  FDRE \wr_data_reg_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\wr_data_reg[8]_i_2_n_0 ),
        .D(\wr_data_reg_reg[18]_0 [2]),
        .Q(wr_data_reg[11]),
        .R(S_AXI_ARESET));
  FDRE \wr_data_reg_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\wr_data_reg[8]_i_2_n_0 ),
        .D(\wr_data_reg_reg[18]_0 [3]),
        .Q(wr_data_reg[12]),
        .R(S_AXI_ARESET));
  FDRE \wr_data_reg_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\wr_data_reg[8]_i_2_n_0 ),
        .D(\wr_data_reg_reg[18]_0 [4]),
        .Q(wr_data_reg[13]),
        .R(S_AXI_ARESET));
  FDRE \wr_data_reg_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\wr_data_reg[8]_i_2_n_0 ),
        .D(\wr_data_reg_reg[18]_0 [5]),
        .Q(wr_data_reg[14]),
        .R(S_AXI_ARESET));
  FDRE \wr_data_reg_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\wr_data_reg[8]_i_2_n_0 ),
        .D(\wr_data_reg_reg[18]_0 [6]),
        .Q(wr_data_reg[15]),
        .R(S_AXI_ARESET));
  FDRE \wr_data_reg_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\wr_data_reg[8]_i_2_n_0 ),
        .D(\wr_data_reg_reg[18]_0 [7]),
        .Q(wr_data_reg[16]),
        .R(S_AXI_ARESET));
  FDRE \wr_data_reg_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\wr_data_reg[8]_i_2_n_0 ),
        .D(\wr_data_reg_reg[18]_0 [8]),
        .Q(wr_data_reg[17]),
        .R(S_AXI_ARESET));
  FDRE \wr_data_reg_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\wr_data_reg[8]_i_2_n_0 ),
        .D(\wr_data_reg_reg[18]_0 [9]),
        .Q(wr_data_reg[18]),
        .R(S_AXI_ARESET));
  FDRE \wr_data_reg_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\wr_data_reg[19]_i_1_n_0 ),
        .Q(wr_data_reg[19]),
        .R(1'b0));
  FDRE \wr_data_reg_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\wr_data_reg[8]_i_2_n_0 ),
        .D(Q[0]),
        .Q(wr_data_reg[1]),
        .R(\wr_data_reg[8]_i_1_n_0 ));
  FDRE \wr_data_reg_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\wr_data_reg[24]_i_1_n_0 ),
        .Q(wr_data_reg[24]),
        .R(1'b0));
  FDRE \wr_data_reg_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\wr_data_reg[8]_i_2_n_0 ),
        .D(Q[1]),
        .Q(wr_data_reg[2]),
        .R(\wr_data_reg[8]_i_1_n_0 ));
  FDRE \wr_data_reg_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\wr_data_reg[8]_i_2_n_0 ),
        .D(Q[2]),
        .Q(wr_data_reg[3]),
        .R(\wr_data_reg[8]_i_1_n_0 ));
  FDRE \wr_data_reg_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\wr_data_reg[8]_i_2_n_0 ),
        .D(Q[3]),
        .Q(wr_data_reg[4]),
        .R(\wr_data_reg[8]_i_1_n_0 ));
  FDRE \wr_data_reg_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\wr_data_reg[8]_i_2_n_0 ),
        .D(Q[4]),
        .Q(wr_data_reg[5]),
        .R(\wr_data_reg[8]_i_1_n_0 ));
  FDRE \wr_data_reg_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\wr_data_reg[8]_i_2_n_0 ),
        .D(Q[5]),
        .Q(wr_data_reg[6]),
        .R(\wr_data_reg[8]_i_1_n_0 ));
  FDRE \wr_data_reg_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\wr_data_reg[8]_i_2_n_0 ),
        .D(Q[6]),
        .Q(wr_data_reg[7]),
        .R(\wr_data_reg[8]_i_1_n_0 ));
  FDRE \wr_data_reg_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\wr_data_reg[8]_i_2_n_0 ),
        .D(Q[7]),
        .Q(wr_data_reg[8]),
        .R(\wr_data_reg[8]_i_1_n_0 ));
  FDRE \wr_data_reg_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\wr_data_reg[8]_i_2_n_0 ),
        .D(\wr_data_reg_reg[18]_0 [0]),
        .Q(wr_data_reg[9]),
        .R(S_AXI_ARESET));
  FDRE wr_done_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(write_done),
        .Q(wr_done),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    write_done_i_1
       (.I0(write_done_i_2_n_0),
        .I1(\bit_counter_reg_n_0_[4] ),
        .I2(\bit_counter_reg_n_0_[3] ),
        .I3(write_done),
        .I4(writing),
        .I5(write_done_reg__0),
        .O(write_done0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h01)) 
    write_done_i_2
       (.I0(\bit_counter_reg_n_0_[1] ),
        .I1(\bit_counter_reg_n_0_[0] ),
        .I2(\bit_counter_reg_n_0_[2] ),
        .O(write_done_i_2_n_0));
  FDRE write_done_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(write_done0),
        .Q(write_done),
        .R(S_AXI_ARESET));
  FDRE write_done_reg_reg
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(write_done),
        .Q(write_done_reg__0),
        .R(1'b0));
  FDRE writing_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(writing_i),
        .Q(writing),
        .R(S_AXI_ARESET));
  FDRE writing_reg_reg
       (.C(S_AXI_ACLK),
        .CE(S_AXI_ARESETN),
        .D(writing_i),
        .Q(writing_reg__0),
        .R(1'b0));
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
