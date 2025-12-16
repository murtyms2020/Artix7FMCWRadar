//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Sun Dec 14 12:15:58 2025
//Host        : murtyms-Z270X-Gaming-7 running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=3,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (CLK_25MHZ_FPGA,
    CSN_0,
    CSN_1,
    CSN_2,
    CSN_3,
    CSN_4,
    MISO_0,
    MISO_1,
    MISO_2,
    MISO_3,
    MISO_4,
    MOSI_0,
    MOSI_1,
    MOSI_2,
    MOSI_3,
    MOSI_4,
    SCLK_0,
    SCLK_1,
    SCLK_2,
    SCLK_3,
    SCLK_4,
    a,
    a_d,
    advn,
    csn,
    ext_reset_in_0,
    latched_addr_out_1,
    oen,
    read_data_out_1,
    status_0,
    wen);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_25MHZ_FPGA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_25MHZ_FPGA, CLK_DOMAIN design_1_CLK_25MHZ_FPGA, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input CLK_25MHZ_FPGA;
  output CSN_0;
  output CSN_1;
  output CSN_2;
  output CSN_3;
  output CSN_4;
  input MISO_0;
  input MISO_1;
  input MISO_2;
  input MISO_3;
  input MISO_4;
  output MOSI_0;
  output MOSI_1;
  output MOSI_2;
  output MOSI_3;
  output MOSI_4;
  output SCLK_0;
  output SCLK_1;
  output SCLK_2;
  output SCLK_3;
  output SCLK_4;
  input [2:0]a;
  input [15:0]a_d;
  input advn;
  input csn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.EXT_RESET_IN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.EXT_RESET_IN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ext_reset_in_0;
  output [18:0]latched_addr_out_1;
  input oen;
  output [15:0]read_data_out_1;
  output [3:0]status_0;
  input wen;

  wire CLK_25MHZ_FPGA;
  wire CSN_0;
  wire CSN_1;
  wire CSN_2;
  wire CSN_3;
  wire CSN_4;
  wire MISO_0;
  wire MISO_1;
  wire MISO_2;
  wire MISO_3;
  wire MISO_4;
  wire MOSI_0;
  wire MOSI_1;
  wire MOSI_2;
  wire MOSI_3;
  wire MOSI_4;
  wire SCLK_0;
  wire SCLK_1;
  wire SCLK_2;
  wire SCLK_3;
  wire SCLK_4;
  wire [2:0]a;
  wire [15:0]a_d;
  wire advn;
  wire [18:0]axi_crossbar_0_M00_AXI_ARADDR;
  wire [2:0]axi_crossbar_0_M00_AXI_ARPROT;
  wire axi_crossbar_0_M00_AXI_ARREADY;
  wire [0:0]axi_crossbar_0_M00_AXI_ARVALID;
  wire [18:0]axi_crossbar_0_M00_AXI_AWADDR;
  wire [2:0]axi_crossbar_0_M00_AXI_AWPROT;
  wire axi_crossbar_0_M00_AXI_AWREADY;
  wire [0:0]axi_crossbar_0_M00_AXI_AWVALID;
  wire [0:0]axi_crossbar_0_M00_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M00_AXI_BRESP;
  wire axi_crossbar_0_M00_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M00_AXI_RDATA;
  wire [0:0]axi_crossbar_0_M00_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M00_AXI_RRESP;
  wire axi_crossbar_0_M00_AXI_RVALID;
  wire [31:0]axi_crossbar_0_M00_AXI_WDATA;
  wire axi_crossbar_0_M00_AXI_WREADY;
  wire [3:0]axi_crossbar_0_M00_AXI_WSTRB;
  wire [0:0]axi_crossbar_0_M00_AXI_WVALID;
  wire [37:19]axi_crossbar_0_M01_AXI_ARADDR;
  wire [5:3]axi_crossbar_0_M01_AXI_ARPROT;
  wire axi_crossbar_0_M01_AXI_ARREADY;
  wire [1:1]axi_crossbar_0_M01_AXI_ARVALID;
  wire [37:19]axi_crossbar_0_M01_AXI_AWADDR;
  wire [5:3]axi_crossbar_0_M01_AXI_AWPROT;
  wire axi_crossbar_0_M01_AXI_AWREADY;
  wire [1:1]axi_crossbar_0_M01_AXI_AWVALID;
  wire [1:1]axi_crossbar_0_M01_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M01_AXI_BRESP;
  wire axi_crossbar_0_M01_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M01_AXI_RDATA;
  wire [1:1]axi_crossbar_0_M01_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M01_AXI_RRESP;
  wire axi_crossbar_0_M01_AXI_RVALID;
  wire [63:32]axi_crossbar_0_M01_AXI_WDATA;
  wire axi_crossbar_0_M01_AXI_WREADY;
  wire [7:4]axi_crossbar_0_M01_AXI_WSTRB;
  wire [1:1]axi_crossbar_0_M01_AXI_WVALID;
  wire [56:38]axi_crossbar_0_M02_AXI_ARADDR;
  wire [8:6]axi_crossbar_0_M02_AXI_ARPROT;
  wire axi_crossbar_0_M02_AXI_ARREADY;
  wire [2:2]axi_crossbar_0_M02_AXI_ARVALID;
  wire [56:38]axi_crossbar_0_M02_AXI_AWADDR;
  wire [8:6]axi_crossbar_0_M02_AXI_AWPROT;
  wire axi_crossbar_0_M02_AXI_AWREADY;
  wire [2:2]axi_crossbar_0_M02_AXI_AWVALID;
  wire [2:2]axi_crossbar_0_M02_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M02_AXI_BRESP;
  wire axi_crossbar_0_M02_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M02_AXI_RDATA;
  wire [2:2]axi_crossbar_0_M02_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M02_AXI_RRESP;
  wire axi_crossbar_0_M02_AXI_RVALID;
  wire [95:64]axi_crossbar_0_M02_AXI_WDATA;
  wire axi_crossbar_0_M02_AXI_WREADY;
  wire [11:8]axi_crossbar_0_M02_AXI_WSTRB;
  wire [2:2]axi_crossbar_0_M02_AXI_WVALID;
  wire [75:57]axi_crossbar_0_M03_AXI_ARADDR;
  wire [11:9]axi_crossbar_0_M03_AXI_ARPROT;
  wire axi_crossbar_0_M03_AXI_ARREADY;
  wire [3:3]axi_crossbar_0_M03_AXI_ARVALID;
  wire [75:57]axi_crossbar_0_M03_AXI_AWADDR;
  wire [11:9]axi_crossbar_0_M03_AXI_AWPROT;
  wire axi_crossbar_0_M03_AXI_AWREADY;
  wire [3:3]axi_crossbar_0_M03_AXI_AWVALID;
  wire [3:3]axi_crossbar_0_M03_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M03_AXI_BRESP;
  wire axi_crossbar_0_M03_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M03_AXI_RDATA;
  wire [3:3]axi_crossbar_0_M03_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M03_AXI_RRESP;
  wire axi_crossbar_0_M03_AXI_RVALID;
  wire [127:96]axi_crossbar_0_M03_AXI_WDATA;
  wire axi_crossbar_0_M03_AXI_WREADY;
  wire [15:12]axi_crossbar_0_M03_AXI_WSTRB;
  wire [3:3]axi_crossbar_0_M03_AXI_WVALID;
  wire [94:76]axi_crossbar_0_M04_AXI_ARADDR;
  wire [14:12]axi_crossbar_0_M04_AXI_ARPROT;
  wire axi_crossbar_0_M04_AXI_ARREADY;
  wire [4:4]axi_crossbar_0_M04_AXI_ARVALID;
  wire [94:76]axi_crossbar_0_M04_AXI_AWADDR;
  wire [14:12]axi_crossbar_0_M04_AXI_AWPROT;
  wire axi_crossbar_0_M04_AXI_AWREADY;
  wire [4:4]axi_crossbar_0_M04_AXI_AWVALID;
  wire [4:4]axi_crossbar_0_M04_AXI_BREADY;
  wire [1:0]axi_crossbar_0_M04_AXI_BRESP;
  wire axi_crossbar_0_M04_AXI_BVALID;
  wire [31:0]axi_crossbar_0_M04_AXI_RDATA;
  wire [4:4]axi_crossbar_0_M04_AXI_RREADY;
  wire [1:0]axi_crossbar_0_M04_AXI_RRESP;
  wire axi_crossbar_0_M04_AXI_RVALID;
  wire [159:128]axi_crossbar_0_M04_AXI_WDATA;
  wire axi_crossbar_0_M04_AXI_WREADY;
  wire [19:16]axi_crossbar_0_M04_AXI_WSTRB;
  wire [4:4]axi_crossbar_0_M04_AXI_WVALID;
  wire clk_wiz_0_clk_out2;
  wire clk_wiz_0_locked;
  wire csn;
  wire ext_reset_in_0;
  wire [18:0]gpmc_axi_bridge_1_m_axi_lite_ARADDR;
  wire [0:0]gpmc_axi_bridge_1_m_axi_lite_ARREADY;
  wire gpmc_axi_bridge_1_m_axi_lite_ARVALID;
  wire [18:0]gpmc_axi_bridge_1_m_axi_lite_AWADDR;
  wire [0:0]gpmc_axi_bridge_1_m_axi_lite_AWREADY;
  wire gpmc_axi_bridge_1_m_axi_lite_AWVALID;
  wire gpmc_axi_bridge_1_m_axi_lite_BREADY;
  wire [1:0]gpmc_axi_bridge_1_m_axi_lite_BRESP;
  wire [0:0]gpmc_axi_bridge_1_m_axi_lite_BVALID;
  wire [31:0]gpmc_axi_bridge_1_m_axi_lite_RDATA;
  wire gpmc_axi_bridge_1_m_axi_lite_RREADY;
  wire [1:0]gpmc_axi_bridge_1_m_axi_lite_RRESP;
  wire [0:0]gpmc_axi_bridge_1_m_axi_lite_RVALID;
  wire [31:0]gpmc_axi_bridge_1_m_axi_lite_WDATA;
  wire [0:0]gpmc_axi_bridge_1_m_axi_lite_WREADY;
  wire gpmc_axi_bridge_1_m_axi_lite_WVALID;
  wire [18:0]latched_addr_out_1;
  wire oen;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [15:0]read_data_out_1;
  wire [3:0]status_0;
  wire wen;

  design_1_ad9361_spi_generic_0_0 ad9361_spi_generic_0
       (.CSN(CSN_0),
        .MISO(MISO_0),
        .MOSI(MOSI_0),
        .SCLK(SCLK_0),
        .S_AXI_ACLK(clk_wiz_0_clk_out2),
        .S_AXI_ARADDR(axi_crossbar_0_M00_AXI_ARADDR[3:0]),
        .S_AXI_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S_AXI_ARPROT(axi_crossbar_0_M00_AXI_ARPROT),
        .S_AXI_ARREADY(axi_crossbar_0_M00_AXI_ARREADY),
        .S_AXI_ARVALID(axi_crossbar_0_M00_AXI_ARVALID),
        .S_AXI_AWADDR(axi_crossbar_0_M00_AXI_AWADDR[3:0]),
        .S_AXI_AWPROT(axi_crossbar_0_M00_AXI_AWPROT),
        .S_AXI_AWREADY(axi_crossbar_0_M00_AXI_AWREADY),
        .S_AXI_AWVALID(axi_crossbar_0_M00_AXI_AWVALID),
        .S_AXI_BREADY(axi_crossbar_0_M00_AXI_BREADY),
        .S_AXI_BRESP(axi_crossbar_0_M00_AXI_BRESP),
        .S_AXI_BVALID(axi_crossbar_0_M00_AXI_BVALID),
        .S_AXI_RDATA(axi_crossbar_0_M00_AXI_RDATA),
        .S_AXI_RREADY(axi_crossbar_0_M00_AXI_RREADY),
        .S_AXI_RRESP(axi_crossbar_0_M00_AXI_RRESP),
        .S_AXI_RVALID(axi_crossbar_0_M00_AXI_RVALID),
        .S_AXI_WDATA(axi_crossbar_0_M00_AXI_WDATA),
        .S_AXI_WREADY(axi_crossbar_0_M00_AXI_WREADY),
        .S_AXI_WSTRB(axi_crossbar_0_M00_AXI_WSTRB),
        .S_AXI_WVALID(axi_crossbar_0_M00_AXI_WVALID));
  design_1_ad9361_spi_generic_0_1 ad9361_spi_generic_1
       (.CSN(CSN_1),
        .MISO(MISO_1),
        .MOSI(MOSI_1),
        .SCLK(SCLK_1),
        .S_AXI_ACLK(clk_wiz_0_clk_out2),
        .S_AXI_ARADDR(axi_crossbar_0_M01_AXI_ARADDR[22:19]),
        .S_AXI_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S_AXI_ARPROT(axi_crossbar_0_M01_AXI_ARPROT),
        .S_AXI_ARREADY(axi_crossbar_0_M01_AXI_ARREADY),
        .S_AXI_ARVALID(axi_crossbar_0_M01_AXI_ARVALID),
        .S_AXI_AWADDR(axi_crossbar_0_M01_AXI_AWADDR[22:19]),
        .S_AXI_AWPROT(axi_crossbar_0_M01_AXI_AWPROT),
        .S_AXI_AWREADY(axi_crossbar_0_M01_AXI_AWREADY),
        .S_AXI_AWVALID(axi_crossbar_0_M01_AXI_AWVALID),
        .S_AXI_BREADY(axi_crossbar_0_M01_AXI_BREADY),
        .S_AXI_BRESP(axi_crossbar_0_M01_AXI_BRESP),
        .S_AXI_BVALID(axi_crossbar_0_M01_AXI_BVALID),
        .S_AXI_RDATA(axi_crossbar_0_M01_AXI_RDATA),
        .S_AXI_RREADY(axi_crossbar_0_M01_AXI_RREADY),
        .S_AXI_RRESP(axi_crossbar_0_M01_AXI_RRESP),
        .S_AXI_RVALID(axi_crossbar_0_M01_AXI_RVALID),
        .S_AXI_WDATA(axi_crossbar_0_M01_AXI_WDATA),
        .S_AXI_WREADY(axi_crossbar_0_M01_AXI_WREADY),
        .S_AXI_WSTRB(axi_crossbar_0_M01_AXI_WSTRB),
        .S_AXI_WVALID(axi_crossbar_0_M01_AXI_WVALID));
  design_1_ad9361_spi_generic_1_0 ad9361_spi_generic_2
       (.CSN(CSN_2),
        .MISO(MISO_2),
        .MOSI(MOSI_2),
        .SCLK(SCLK_2),
        .S_AXI_ACLK(clk_wiz_0_clk_out2),
        .S_AXI_ARADDR(axi_crossbar_0_M02_AXI_ARADDR[41:38]),
        .S_AXI_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S_AXI_ARPROT(axi_crossbar_0_M02_AXI_ARPROT),
        .S_AXI_ARREADY(axi_crossbar_0_M02_AXI_ARREADY),
        .S_AXI_ARVALID(axi_crossbar_0_M02_AXI_ARVALID),
        .S_AXI_AWADDR(axi_crossbar_0_M02_AXI_AWADDR[41:38]),
        .S_AXI_AWPROT(axi_crossbar_0_M02_AXI_AWPROT),
        .S_AXI_AWREADY(axi_crossbar_0_M02_AXI_AWREADY),
        .S_AXI_AWVALID(axi_crossbar_0_M02_AXI_AWVALID),
        .S_AXI_BREADY(axi_crossbar_0_M02_AXI_BREADY),
        .S_AXI_BRESP(axi_crossbar_0_M02_AXI_BRESP),
        .S_AXI_BVALID(axi_crossbar_0_M02_AXI_BVALID),
        .S_AXI_RDATA(axi_crossbar_0_M02_AXI_RDATA),
        .S_AXI_RREADY(axi_crossbar_0_M02_AXI_RREADY),
        .S_AXI_RRESP(axi_crossbar_0_M02_AXI_RRESP),
        .S_AXI_RVALID(axi_crossbar_0_M02_AXI_RVALID),
        .S_AXI_WDATA(axi_crossbar_0_M02_AXI_WDATA),
        .S_AXI_WREADY(axi_crossbar_0_M02_AXI_WREADY),
        .S_AXI_WSTRB(axi_crossbar_0_M02_AXI_WSTRB),
        .S_AXI_WVALID(axi_crossbar_0_M02_AXI_WVALID));
  design_1_ad9361_spi_generic_2_0 ad9361_spi_generic_3
       (.CSN(CSN_3),
        .MISO(MISO_3),
        .MOSI(MOSI_3),
        .SCLK(SCLK_3),
        .S_AXI_ACLK(clk_wiz_0_clk_out2),
        .S_AXI_ARADDR(axi_crossbar_0_M03_AXI_ARADDR[60:57]),
        .S_AXI_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S_AXI_ARPROT(axi_crossbar_0_M03_AXI_ARPROT),
        .S_AXI_ARREADY(axi_crossbar_0_M03_AXI_ARREADY),
        .S_AXI_ARVALID(axi_crossbar_0_M03_AXI_ARVALID),
        .S_AXI_AWADDR(axi_crossbar_0_M03_AXI_AWADDR[60:57]),
        .S_AXI_AWPROT(axi_crossbar_0_M03_AXI_AWPROT),
        .S_AXI_AWREADY(axi_crossbar_0_M03_AXI_AWREADY),
        .S_AXI_AWVALID(axi_crossbar_0_M03_AXI_AWVALID),
        .S_AXI_BREADY(axi_crossbar_0_M03_AXI_BREADY),
        .S_AXI_BRESP(axi_crossbar_0_M03_AXI_BRESP),
        .S_AXI_BVALID(axi_crossbar_0_M03_AXI_BVALID),
        .S_AXI_RDATA(axi_crossbar_0_M03_AXI_RDATA),
        .S_AXI_RREADY(axi_crossbar_0_M03_AXI_RREADY),
        .S_AXI_RRESP(axi_crossbar_0_M03_AXI_RRESP),
        .S_AXI_RVALID(axi_crossbar_0_M03_AXI_RVALID),
        .S_AXI_WDATA(axi_crossbar_0_M03_AXI_WDATA),
        .S_AXI_WREADY(axi_crossbar_0_M03_AXI_WREADY),
        .S_AXI_WSTRB(axi_crossbar_0_M03_AXI_WSTRB),
        .S_AXI_WVALID(axi_crossbar_0_M03_AXI_WVALID));
  design_1_ad9361_spi_generic_3_1 ad9361_spi_generic_4
       (.CSN(CSN_4),
        .MISO(MISO_4),
        .MOSI(MOSI_4),
        .SCLK(SCLK_4),
        .S_AXI_ACLK(clk_wiz_0_clk_out2),
        .S_AXI_ARADDR(axi_crossbar_0_M04_AXI_ARADDR[79:76]),
        .S_AXI_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S_AXI_ARPROT(axi_crossbar_0_M04_AXI_ARPROT),
        .S_AXI_ARREADY(axi_crossbar_0_M04_AXI_ARREADY),
        .S_AXI_ARVALID(axi_crossbar_0_M04_AXI_ARVALID),
        .S_AXI_AWADDR(axi_crossbar_0_M04_AXI_AWADDR[79:76]),
        .S_AXI_AWPROT(axi_crossbar_0_M04_AXI_AWPROT),
        .S_AXI_AWREADY(axi_crossbar_0_M04_AXI_AWREADY),
        .S_AXI_AWVALID(axi_crossbar_0_M04_AXI_AWVALID),
        .S_AXI_BREADY(axi_crossbar_0_M04_AXI_BREADY),
        .S_AXI_BRESP(axi_crossbar_0_M04_AXI_BRESP),
        .S_AXI_BVALID(axi_crossbar_0_M04_AXI_BVALID),
        .S_AXI_RDATA(axi_crossbar_0_M04_AXI_RDATA),
        .S_AXI_RREADY(axi_crossbar_0_M04_AXI_RREADY),
        .S_AXI_RRESP(axi_crossbar_0_M04_AXI_RRESP),
        .S_AXI_RVALID(axi_crossbar_0_M04_AXI_RVALID),
        .S_AXI_WDATA(axi_crossbar_0_M04_AXI_WDATA),
        .S_AXI_WREADY(axi_crossbar_0_M04_AXI_WREADY),
        .S_AXI_WSTRB(axi_crossbar_0_M04_AXI_WSTRB),
        .S_AXI_WVALID(axi_crossbar_0_M04_AXI_WVALID));
  design_1_axi_crossbar_0_0 axi_crossbar_0
       (.aclk(clk_wiz_0_clk_out2),
        .aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_araddr({axi_crossbar_0_M04_AXI_ARADDR,axi_crossbar_0_M03_AXI_ARADDR,axi_crossbar_0_M02_AXI_ARADDR,axi_crossbar_0_M01_AXI_ARADDR,axi_crossbar_0_M00_AXI_ARADDR}),
        .m_axi_arprot({axi_crossbar_0_M04_AXI_ARPROT,axi_crossbar_0_M03_AXI_ARPROT,axi_crossbar_0_M02_AXI_ARPROT,axi_crossbar_0_M01_AXI_ARPROT,axi_crossbar_0_M00_AXI_ARPROT}),
        .m_axi_arready({axi_crossbar_0_M04_AXI_ARREADY,axi_crossbar_0_M03_AXI_ARREADY,axi_crossbar_0_M02_AXI_ARREADY,axi_crossbar_0_M01_AXI_ARREADY,axi_crossbar_0_M00_AXI_ARREADY}),
        .m_axi_arvalid({axi_crossbar_0_M04_AXI_ARVALID,axi_crossbar_0_M03_AXI_ARVALID,axi_crossbar_0_M02_AXI_ARVALID,axi_crossbar_0_M01_AXI_ARVALID,axi_crossbar_0_M00_AXI_ARVALID}),
        .m_axi_awaddr({axi_crossbar_0_M04_AXI_AWADDR,axi_crossbar_0_M03_AXI_AWADDR,axi_crossbar_0_M02_AXI_AWADDR,axi_crossbar_0_M01_AXI_AWADDR,axi_crossbar_0_M00_AXI_AWADDR}),
        .m_axi_awprot({axi_crossbar_0_M04_AXI_AWPROT,axi_crossbar_0_M03_AXI_AWPROT,axi_crossbar_0_M02_AXI_AWPROT,axi_crossbar_0_M01_AXI_AWPROT,axi_crossbar_0_M00_AXI_AWPROT}),
        .m_axi_awready({axi_crossbar_0_M04_AXI_AWREADY,axi_crossbar_0_M03_AXI_AWREADY,axi_crossbar_0_M02_AXI_AWREADY,axi_crossbar_0_M01_AXI_AWREADY,axi_crossbar_0_M00_AXI_AWREADY}),
        .m_axi_awvalid({axi_crossbar_0_M04_AXI_AWVALID,axi_crossbar_0_M03_AXI_AWVALID,axi_crossbar_0_M02_AXI_AWVALID,axi_crossbar_0_M01_AXI_AWVALID,axi_crossbar_0_M00_AXI_AWVALID}),
        .m_axi_bready({axi_crossbar_0_M04_AXI_BREADY,axi_crossbar_0_M03_AXI_BREADY,axi_crossbar_0_M02_AXI_BREADY,axi_crossbar_0_M01_AXI_BREADY,axi_crossbar_0_M00_AXI_BREADY}),
        .m_axi_bresp({axi_crossbar_0_M04_AXI_BRESP,axi_crossbar_0_M03_AXI_BRESP,axi_crossbar_0_M02_AXI_BRESP,axi_crossbar_0_M01_AXI_BRESP,axi_crossbar_0_M00_AXI_BRESP}),
        .m_axi_bvalid({axi_crossbar_0_M04_AXI_BVALID,axi_crossbar_0_M03_AXI_BVALID,axi_crossbar_0_M02_AXI_BVALID,axi_crossbar_0_M01_AXI_BVALID,axi_crossbar_0_M00_AXI_BVALID}),
        .m_axi_rdata({axi_crossbar_0_M04_AXI_RDATA,axi_crossbar_0_M03_AXI_RDATA,axi_crossbar_0_M02_AXI_RDATA,axi_crossbar_0_M01_AXI_RDATA,axi_crossbar_0_M00_AXI_RDATA}),
        .m_axi_rready({axi_crossbar_0_M04_AXI_RREADY,axi_crossbar_0_M03_AXI_RREADY,axi_crossbar_0_M02_AXI_RREADY,axi_crossbar_0_M01_AXI_RREADY,axi_crossbar_0_M00_AXI_RREADY}),
        .m_axi_rresp({axi_crossbar_0_M04_AXI_RRESP,axi_crossbar_0_M03_AXI_RRESP,axi_crossbar_0_M02_AXI_RRESP,axi_crossbar_0_M01_AXI_RRESP,axi_crossbar_0_M00_AXI_RRESP}),
        .m_axi_rvalid({axi_crossbar_0_M04_AXI_RVALID,axi_crossbar_0_M03_AXI_RVALID,axi_crossbar_0_M02_AXI_RVALID,axi_crossbar_0_M01_AXI_RVALID,axi_crossbar_0_M00_AXI_RVALID}),
        .m_axi_wdata({axi_crossbar_0_M04_AXI_WDATA,axi_crossbar_0_M03_AXI_WDATA,axi_crossbar_0_M02_AXI_WDATA,axi_crossbar_0_M01_AXI_WDATA,axi_crossbar_0_M00_AXI_WDATA}),
        .m_axi_wready({axi_crossbar_0_M04_AXI_WREADY,axi_crossbar_0_M03_AXI_WREADY,axi_crossbar_0_M02_AXI_WREADY,axi_crossbar_0_M01_AXI_WREADY,axi_crossbar_0_M00_AXI_WREADY}),
        .m_axi_wstrb({axi_crossbar_0_M04_AXI_WSTRB,axi_crossbar_0_M03_AXI_WSTRB,axi_crossbar_0_M02_AXI_WSTRB,axi_crossbar_0_M01_AXI_WSTRB,axi_crossbar_0_M00_AXI_WSTRB}),
        .m_axi_wvalid({axi_crossbar_0_M04_AXI_WVALID,axi_crossbar_0_M03_AXI_WVALID,axi_crossbar_0_M02_AXI_WVALID,axi_crossbar_0_M01_AXI_WVALID,axi_crossbar_0_M00_AXI_WVALID}),
        .s_axi_araddr(gpmc_axi_bridge_1_m_axi_lite_ARADDR),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arready(gpmc_axi_bridge_1_m_axi_lite_ARREADY),
        .s_axi_arvalid(gpmc_axi_bridge_1_m_axi_lite_ARVALID),
        .s_axi_awaddr(gpmc_axi_bridge_1_m_axi_lite_AWADDR),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awready(gpmc_axi_bridge_1_m_axi_lite_AWREADY),
        .s_axi_awvalid(gpmc_axi_bridge_1_m_axi_lite_AWVALID),
        .s_axi_bready(gpmc_axi_bridge_1_m_axi_lite_BREADY),
        .s_axi_bresp(gpmc_axi_bridge_1_m_axi_lite_BRESP),
        .s_axi_bvalid(gpmc_axi_bridge_1_m_axi_lite_BVALID),
        .s_axi_rdata(gpmc_axi_bridge_1_m_axi_lite_RDATA),
        .s_axi_rready(gpmc_axi_bridge_1_m_axi_lite_RREADY),
        .s_axi_rresp(gpmc_axi_bridge_1_m_axi_lite_RRESP),
        .s_axi_rvalid(gpmc_axi_bridge_1_m_axi_lite_RVALID),
        .s_axi_wdata(gpmc_axi_bridge_1_m_axi_lite_WDATA),
        .s_axi_wready(gpmc_axi_bridge_1_m_axi_lite_WREADY),
        .s_axi_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid(gpmc_axi_bridge_1_m_axi_lite_WVALID));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(CLK_25MHZ_FPGA),
        .clk_out2(clk_wiz_0_clk_out2),
        .locked(clk_wiz_0_locked),
        .resetn(ext_reset_in_0));
  design_1_gpmc_axi_bridge_0_1 gpmc_axi_bridge_1
       (.a(a),
        .a_d(a_d),
        .advn(advn),
        .clk(clk_wiz_0_clk_out2),
        .csn(csn),
        .latched_addr_out(latched_addr_out_1),
        .m_axi_lite_araddr(gpmc_axi_bridge_1_m_axi_lite_ARADDR),
        .m_axi_lite_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_lite_arready(gpmc_axi_bridge_1_m_axi_lite_ARREADY),
        .m_axi_lite_arvalid(gpmc_axi_bridge_1_m_axi_lite_ARVALID),
        .m_axi_lite_awaddr(gpmc_axi_bridge_1_m_axi_lite_AWADDR),
        .m_axi_lite_awready(gpmc_axi_bridge_1_m_axi_lite_AWREADY),
        .m_axi_lite_awvalid(gpmc_axi_bridge_1_m_axi_lite_AWVALID),
        .m_axi_lite_bready(gpmc_axi_bridge_1_m_axi_lite_BREADY),
        .m_axi_lite_bresp(gpmc_axi_bridge_1_m_axi_lite_BRESP),
        .m_axi_lite_bvalid(gpmc_axi_bridge_1_m_axi_lite_BVALID),
        .m_axi_lite_rdata(gpmc_axi_bridge_1_m_axi_lite_RDATA),
        .m_axi_lite_rready(gpmc_axi_bridge_1_m_axi_lite_RREADY),
        .m_axi_lite_rresp(gpmc_axi_bridge_1_m_axi_lite_RRESP),
        .m_axi_lite_rvalid(gpmc_axi_bridge_1_m_axi_lite_RVALID),
        .m_axi_lite_wdata(gpmc_axi_bridge_1_m_axi_lite_WDATA),
        .m_axi_lite_wready(gpmc_axi_bridge_1_m_axi_lite_WREADY),
        .m_axi_lite_wvalid(gpmc_axi_bridge_1_m_axi_lite_WVALID),
        .oen(oen),
        .read_data_out(read_data_out_1),
        .status(status_0),
        .wen(wen));
  design_1_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(ext_reset_in_0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(CLK_25MHZ_FPGA));
endmodule
