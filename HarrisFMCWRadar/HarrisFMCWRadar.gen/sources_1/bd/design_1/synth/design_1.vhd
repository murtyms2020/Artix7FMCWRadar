--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
--Date        : Sun Dec 14 21:32:21 2025
--Host        : murtyms-Z270X-Gaming-7 running 64-bit Ubuntu 22.04.5 LTS
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    CSN_0 : out STD_LOGIC;
    CSN_1 : out STD_LOGIC;
    CSN_2 : out STD_LOGIC;
    CSN_3 : out STD_LOGIC;
    CSN_4 : out STD_LOGIC;
    MISO_0 : in STD_LOGIC;
    MISO_1 : in STD_LOGIC;
    MISO_2 : in STD_LOGIC;
    MISO_3 : in STD_LOGIC;
    MISO_4 : in STD_LOGIC;
    MOSI_0 : out STD_LOGIC;
    MOSI_1 : out STD_LOGIC;
    MOSI_2 : out STD_LOGIC;
    MOSI_3 : out STD_LOGIC;
    MOSI_4 : out STD_LOGIC;
    SCLK_0 : out STD_LOGIC;
    SCLK_1 : out STD_LOGIC;
    SCLK_2 : out STD_LOGIC;
    SCLK_3 : out STD_LOGIC;
    SCLK_4 : out STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 2 downto 0 );
    a_d : in STD_LOGIC_VECTOR ( 15 downto 0 );
    advn : in STD_LOGIC;
    clk_25MHZ : in STD_LOGIC;
    csn : in STD_LOGIC;
    ext_reset_in_0 : in STD_LOGIC;
    fpga_led : out STD_LOGIC_VECTOR ( 1 downto 0 );
    oen : in STD_LOGIC;
    read_data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    wen : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=3,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_gpmc_axi_bridge_0_1 is
  port (
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
  end component design_1_gpmc_axi_bridge_0_1;
  component design_1_ad9361_spi_generic_0_0 is
  port (
    MOSI : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    CSN : out STD_LOGIC;
    MISO : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  end component design_1_ad9361_spi_generic_0_0;
  component design_1_ad9361_spi_generic_0_1 is
  port (
    MOSI : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    CSN : out STD_LOGIC;
    MISO : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  end component design_1_ad9361_spi_generic_0_1;
  component design_1_ad9361_spi_generic_1_0 is
  port (
    MOSI : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    CSN : out STD_LOGIC;
    MISO : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  end component design_1_ad9361_spi_generic_1_0;
  component design_1_ad9361_spi_generic_2_0 is
  port (
    MOSI : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    CSN : out STD_LOGIC;
    MISO : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  end component design_1_ad9361_spi_generic_2_0;
  component design_1_ad9361_spi_generic_3_1 is
  port (
    MOSI : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    CSN : out STD_LOGIC;
    MISO : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  end component design_1_ad9361_spi_generic_3_1;
  component design_1_clk_wiz_0_0 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    clk_out3 : out STD_LOGIC;
    clk_out4 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component design_1_clk_wiz_0_0;
  component design_1_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_proc_sys_reset_0_0;
  component design_1_axi_crossbar_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 18 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 94 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 19 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 94 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 14 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 159 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1_axi_crossbar_0_0;
  component design_1_Blinky_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_Blinky_0_0;
  signal axi_crossbar_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal axi_crossbar_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_crossbar_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_crossbar_0_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_crossbar_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal axi_crossbar_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_crossbar_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_crossbar_0_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_crossbar_0_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_crossbar_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_crossbar_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_crossbar_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_crossbar_0_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_crossbar_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_crossbar_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_crossbar_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_crossbar_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_crossbar_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_crossbar_0_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_crossbar_0_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 37 downto 19 );
  signal axi_crossbar_0_M01_AXI_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal axi_crossbar_0_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_crossbar_0_M01_AXI_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal axi_crossbar_0_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 37 downto 19 );
  signal axi_crossbar_0_M01_AXI_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal axi_crossbar_0_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_crossbar_0_M01_AXI_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal axi_crossbar_0_M01_AXI_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal axi_crossbar_0_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_crossbar_0_M01_AXI_BVALID : STD_LOGIC;
  signal axi_crossbar_0_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_crossbar_0_M01_AXI_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal axi_crossbar_0_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_crossbar_0_M01_AXI_RVALID : STD_LOGIC;
  signal axi_crossbar_0_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal axi_crossbar_0_M01_AXI_WREADY : STD_LOGIC;
  signal axi_crossbar_0_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal axi_crossbar_0_M01_AXI_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal axi_crossbar_0_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 56 downto 38 );
  signal axi_crossbar_0_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal axi_crossbar_0_M02_AXI_ARREADY : STD_LOGIC;
  signal axi_crossbar_0_M02_AXI_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal axi_crossbar_0_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 56 downto 38 );
  signal axi_crossbar_0_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal axi_crossbar_0_M02_AXI_AWREADY : STD_LOGIC;
  signal axi_crossbar_0_M02_AXI_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal axi_crossbar_0_M02_AXI_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal axi_crossbar_0_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_crossbar_0_M02_AXI_BVALID : STD_LOGIC;
  signal axi_crossbar_0_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_crossbar_0_M02_AXI_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal axi_crossbar_0_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_crossbar_0_M02_AXI_RVALID : STD_LOGIC;
  signal axi_crossbar_0_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal axi_crossbar_0_M02_AXI_WREADY : STD_LOGIC;
  signal axi_crossbar_0_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal axi_crossbar_0_M02_AXI_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal axi_crossbar_0_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 75 downto 57 );
  signal axi_crossbar_0_M03_AXI_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal axi_crossbar_0_M03_AXI_ARREADY : STD_LOGIC;
  signal axi_crossbar_0_M03_AXI_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal axi_crossbar_0_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 75 downto 57 );
  signal axi_crossbar_0_M03_AXI_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal axi_crossbar_0_M03_AXI_AWREADY : STD_LOGIC;
  signal axi_crossbar_0_M03_AXI_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal axi_crossbar_0_M03_AXI_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal axi_crossbar_0_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_crossbar_0_M03_AXI_BVALID : STD_LOGIC;
  signal axi_crossbar_0_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_crossbar_0_M03_AXI_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal axi_crossbar_0_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_crossbar_0_M03_AXI_RVALID : STD_LOGIC;
  signal axi_crossbar_0_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal axi_crossbar_0_M03_AXI_WREADY : STD_LOGIC;
  signal axi_crossbar_0_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal axi_crossbar_0_M03_AXI_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal axi_crossbar_0_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 94 downto 76 );
  signal axi_crossbar_0_M04_AXI_ARPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal axi_crossbar_0_M04_AXI_ARREADY : STD_LOGIC;
  signal axi_crossbar_0_M04_AXI_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal axi_crossbar_0_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 94 downto 76 );
  signal axi_crossbar_0_M04_AXI_AWPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal axi_crossbar_0_M04_AXI_AWREADY : STD_LOGIC;
  signal axi_crossbar_0_M04_AXI_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal axi_crossbar_0_M04_AXI_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal axi_crossbar_0_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_crossbar_0_M04_AXI_BVALID : STD_LOGIC;
  signal axi_crossbar_0_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_crossbar_0_M04_AXI_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal axi_crossbar_0_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_crossbar_0_M04_AXI_RVALID : STD_LOGIC;
  signal axi_crossbar_0_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal axi_crossbar_0_M04_AXI_WREADY : STD_LOGIC;
  signal axi_crossbar_0_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal axi_crossbar_0_M04_AXI_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal clk_wiz_0_clk_out2 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal gpmc_axi_bridge_1_m_axi_lite_ARADDR : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal gpmc_axi_bridge_1_m_axi_lite_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpmc_axi_bridge_1_m_axi_lite_ARVALID : STD_LOGIC;
  signal gpmc_axi_bridge_1_m_axi_lite_AWADDR : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal gpmc_axi_bridge_1_m_axi_lite_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpmc_axi_bridge_1_m_axi_lite_AWVALID : STD_LOGIC;
  signal gpmc_axi_bridge_1_m_axi_lite_BREADY : STD_LOGIC;
  signal gpmc_axi_bridge_1_m_axi_lite_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gpmc_axi_bridge_1_m_axi_lite_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpmc_axi_bridge_1_m_axi_lite_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal gpmc_axi_bridge_1_m_axi_lite_RREADY : STD_LOGIC;
  signal gpmc_axi_bridge_1_m_axi_lite_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gpmc_axi_bridge_1_m_axi_lite_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpmc_axi_bridge_1_m_axi_lite_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal gpmc_axi_bridge_1_m_axi_lite_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gpmc_axi_bridge_1_m_axi_lite_WVALID : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_clk_wiz_0_clk_out1_UNCONNECTED : STD_LOGIC;
  signal NLW_clk_wiz_0_clk_out3_UNCONNECTED : STD_LOGIC;
  signal NLW_clk_wiz_0_clk_out4_UNCONNECTED : STD_LOGIC;
  signal NLW_gpmc_axi_bridge_1_latched_addr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal NLW_gpmc_axi_bridge_1_status_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_25MHZ : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_25MHZ CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_25MHZ : signal is "XIL_INTERFACENAME CLK.CLK_25MHZ, CLK_DOMAIN design_1_CLK_25MHZ_FPGA, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of ext_reset_in_0 : signal is "xilinx.com:signal:reset:1.0 RST.EXT_RESET_IN_0 RST";
  attribute X_INTERFACE_PARAMETER of ext_reset_in_0 : signal is "XIL_INTERFACENAME RST.EXT_RESET_IN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
Blinky_0: component design_1_Blinky_0_0
     port map (
      clk => clk_wiz_0_clk_out2,
      led(1 downto 0) => fpga_led(1 downto 0),
      rst_n => proc_sys_reset_0_peripheral_aresetn(0)
    );
ad9361_spi_generic_0: component design_1_ad9361_spi_generic_0_0
     port map (
      CSN => CSN_0,
      MISO => MISO_0,
      MOSI => MOSI_0,
      SCLK => SCLK_0,
      S_AXI_ACLK => clk_wiz_0_clk_out2,
      S_AXI_ARADDR(3 downto 0) => axi_crossbar_0_M00_AXI_ARADDR(3 downto 0),
      S_AXI_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S_AXI_ARPROT(2 downto 0) => axi_crossbar_0_M00_AXI_ARPROT(2 downto 0),
      S_AXI_ARREADY => axi_crossbar_0_M00_AXI_ARREADY,
      S_AXI_ARVALID => axi_crossbar_0_M00_AXI_ARVALID(0),
      S_AXI_AWADDR(3 downto 0) => axi_crossbar_0_M00_AXI_AWADDR(3 downto 0),
      S_AXI_AWPROT(2 downto 0) => axi_crossbar_0_M00_AXI_AWPROT(2 downto 0),
      S_AXI_AWREADY => axi_crossbar_0_M00_AXI_AWREADY,
      S_AXI_AWVALID => axi_crossbar_0_M00_AXI_AWVALID(0),
      S_AXI_BREADY => axi_crossbar_0_M00_AXI_BREADY(0),
      S_AXI_BRESP(1 downto 0) => axi_crossbar_0_M00_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => axi_crossbar_0_M00_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => axi_crossbar_0_M00_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => axi_crossbar_0_M00_AXI_RREADY(0),
      S_AXI_RRESP(1 downto 0) => axi_crossbar_0_M00_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => axi_crossbar_0_M00_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => axi_crossbar_0_M00_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => axi_crossbar_0_M00_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => axi_crossbar_0_M00_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => axi_crossbar_0_M00_AXI_WVALID(0)
    );
ad9361_spi_generic_1: component design_1_ad9361_spi_generic_0_1
     port map (
      CSN => CSN_1,
      MISO => MISO_1,
      MOSI => MOSI_1,
      SCLK => SCLK_1,
      S_AXI_ACLK => clk_wiz_0_clk_out2,
      S_AXI_ARADDR(3 downto 0) => axi_crossbar_0_M01_AXI_ARADDR(22 downto 19),
      S_AXI_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S_AXI_ARPROT(2 downto 0) => axi_crossbar_0_M01_AXI_ARPROT(5 downto 3),
      S_AXI_ARREADY => axi_crossbar_0_M01_AXI_ARREADY,
      S_AXI_ARVALID => axi_crossbar_0_M01_AXI_ARVALID(1),
      S_AXI_AWADDR(3 downto 0) => axi_crossbar_0_M01_AXI_AWADDR(22 downto 19),
      S_AXI_AWPROT(2 downto 0) => axi_crossbar_0_M01_AXI_AWPROT(5 downto 3),
      S_AXI_AWREADY => axi_crossbar_0_M01_AXI_AWREADY,
      S_AXI_AWVALID => axi_crossbar_0_M01_AXI_AWVALID(1),
      S_AXI_BREADY => axi_crossbar_0_M01_AXI_BREADY(1),
      S_AXI_BRESP(1 downto 0) => axi_crossbar_0_M01_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => axi_crossbar_0_M01_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => axi_crossbar_0_M01_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => axi_crossbar_0_M01_AXI_RREADY(1),
      S_AXI_RRESP(1 downto 0) => axi_crossbar_0_M01_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => axi_crossbar_0_M01_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => axi_crossbar_0_M01_AXI_WDATA(63 downto 32),
      S_AXI_WREADY => axi_crossbar_0_M01_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => axi_crossbar_0_M01_AXI_WSTRB(7 downto 4),
      S_AXI_WVALID => axi_crossbar_0_M01_AXI_WVALID(1)
    );
ad9361_spi_generic_2: component design_1_ad9361_spi_generic_1_0
     port map (
      CSN => CSN_2,
      MISO => MISO_2,
      MOSI => MOSI_2,
      SCLK => SCLK_2,
      S_AXI_ACLK => clk_wiz_0_clk_out2,
      S_AXI_ARADDR(3 downto 0) => axi_crossbar_0_M02_AXI_ARADDR(41 downto 38),
      S_AXI_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S_AXI_ARPROT(2 downto 0) => axi_crossbar_0_M02_AXI_ARPROT(8 downto 6),
      S_AXI_ARREADY => axi_crossbar_0_M02_AXI_ARREADY,
      S_AXI_ARVALID => axi_crossbar_0_M02_AXI_ARVALID(2),
      S_AXI_AWADDR(3 downto 0) => axi_crossbar_0_M02_AXI_AWADDR(41 downto 38),
      S_AXI_AWPROT(2 downto 0) => axi_crossbar_0_M02_AXI_AWPROT(8 downto 6),
      S_AXI_AWREADY => axi_crossbar_0_M02_AXI_AWREADY,
      S_AXI_AWVALID => axi_crossbar_0_M02_AXI_AWVALID(2),
      S_AXI_BREADY => axi_crossbar_0_M02_AXI_BREADY(2),
      S_AXI_BRESP(1 downto 0) => axi_crossbar_0_M02_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => axi_crossbar_0_M02_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => axi_crossbar_0_M02_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => axi_crossbar_0_M02_AXI_RREADY(2),
      S_AXI_RRESP(1 downto 0) => axi_crossbar_0_M02_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => axi_crossbar_0_M02_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => axi_crossbar_0_M02_AXI_WDATA(95 downto 64),
      S_AXI_WREADY => axi_crossbar_0_M02_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => axi_crossbar_0_M02_AXI_WSTRB(11 downto 8),
      S_AXI_WVALID => axi_crossbar_0_M02_AXI_WVALID(2)
    );
ad9361_spi_generic_3: component design_1_ad9361_spi_generic_2_0
     port map (
      CSN => CSN_3,
      MISO => MISO_3,
      MOSI => MOSI_3,
      SCLK => SCLK_3,
      S_AXI_ACLK => clk_wiz_0_clk_out2,
      S_AXI_ARADDR(3 downto 0) => axi_crossbar_0_M03_AXI_ARADDR(60 downto 57),
      S_AXI_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S_AXI_ARPROT(2 downto 0) => axi_crossbar_0_M03_AXI_ARPROT(11 downto 9),
      S_AXI_ARREADY => axi_crossbar_0_M03_AXI_ARREADY,
      S_AXI_ARVALID => axi_crossbar_0_M03_AXI_ARVALID(3),
      S_AXI_AWADDR(3 downto 0) => axi_crossbar_0_M03_AXI_AWADDR(60 downto 57),
      S_AXI_AWPROT(2 downto 0) => axi_crossbar_0_M03_AXI_AWPROT(11 downto 9),
      S_AXI_AWREADY => axi_crossbar_0_M03_AXI_AWREADY,
      S_AXI_AWVALID => axi_crossbar_0_M03_AXI_AWVALID(3),
      S_AXI_BREADY => axi_crossbar_0_M03_AXI_BREADY(3),
      S_AXI_BRESP(1 downto 0) => axi_crossbar_0_M03_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => axi_crossbar_0_M03_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => axi_crossbar_0_M03_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => axi_crossbar_0_M03_AXI_RREADY(3),
      S_AXI_RRESP(1 downto 0) => axi_crossbar_0_M03_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => axi_crossbar_0_M03_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => axi_crossbar_0_M03_AXI_WDATA(127 downto 96),
      S_AXI_WREADY => axi_crossbar_0_M03_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => axi_crossbar_0_M03_AXI_WSTRB(15 downto 12),
      S_AXI_WVALID => axi_crossbar_0_M03_AXI_WVALID(3)
    );
ad9361_spi_generic_4: component design_1_ad9361_spi_generic_3_1
     port map (
      CSN => CSN_4,
      MISO => MISO_4,
      MOSI => MOSI_4,
      SCLK => SCLK_4,
      S_AXI_ACLK => clk_wiz_0_clk_out2,
      S_AXI_ARADDR(3 downto 0) => axi_crossbar_0_M04_AXI_ARADDR(79 downto 76),
      S_AXI_ARESETN => proc_sys_reset_0_peripheral_aresetn(0),
      S_AXI_ARPROT(2 downto 0) => axi_crossbar_0_M04_AXI_ARPROT(14 downto 12),
      S_AXI_ARREADY => axi_crossbar_0_M04_AXI_ARREADY,
      S_AXI_ARVALID => axi_crossbar_0_M04_AXI_ARVALID(4),
      S_AXI_AWADDR(3 downto 0) => axi_crossbar_0_M04_AXI_AWADDR(79 downto 76),
      S_AXI_AWPROT(2 downto 0) => axi_crossbar_0_M04_AXI_AWPROT(14 downto 12),
      S_AXI_AWREADY => axi_crossbar_0_M04_AXI_AWREADY,
      S_AXI_AWVALID => axi_crossbar_0_M04_AXI_AWVALID(4),
      S_AXI_BREADY => axi_crossbar_0_M04_AXI_BREADY(4),
      S_AXI_BRESP(1 downto 0) => axi_crossbar_0_M04_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => axi_crossbar_0_M04_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => axi_crossbar_0_M04_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => axi_crossbar_0_M04_AXI_RREADY(4),
      S_AXI_RRESP(1 downto 0) => axi_crossbar_0_M04_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => axi_crossbar_0_M04_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => axi_crossbar_0_M04_AXI_WDATA(159 downto 128),
      S_AXI_WREADY => axi_crossbar_0_M04_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => axi_crossbar_0_M04_AXI_WSTRB(19 downto 16),
      S_AXI_WVALID => axi_crossbar_0_M04_AXI_WVALID(4)
    );
axi_crossbar_0: component design_1_axi_crossbar_0_0
     port map (
      aclk => clk_wiz_0_clk_out2,
      aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      m_axi_araddr(94 downto 76) => axi_crossbar_0_M04_AXI_ARADDR(94 downto 76),
      m_axi_araddr(75 downto 57) => axi_crossbar_0_M03_AXI_ARADDR(75 downto 57),
      m_axi_araddr(56 downto 38) => axi_crossbar_0_M02_AXI_ARADDR(56 downto 38),
      m_axi_araddr(37 downto 19) => axi_crossbar_0_M01_AXI_ARADDR(37 downto 19),
      m_axi_araddr(18 downto 0) => axi_crossbar_0_M00_AXI_ARADDR(18 downto 0),
      m_axi_arprot(14 downto 12) => axi_crossbar_0_M04_AXI_ARPROT(14 downto 12),
      m_axi_arprot(11 downto 9) => axi_crossbar_0_M03_AXI_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 6) => axi_crossbar_0_M02_AXI_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => axi_crossbar_0_M01_AXI_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => axi_crossbar_0_M00_AXI_ARPROT(2 downto 0),
      m_axi_arready(4) => axi_crossbar_0_M04_AXI_ARREADY,
      m_axi_arready(3) => axi_crossbar_0_M03_AXI_ARREADY,
      m_axi_arready(2) => axi_crossbar_0_M02_AXI_ARREADY,
      m_axi_arready(1) => axi_crossbar_0_M01_AXI_ARREADY,
      m_axi_arready(0) => axi_crossbar_0_M00_AXI_ARREADY,
      m_axi_arvalid(4) => axi_crossbar_0_M04_AXI_ARVALID(4),
      m_axi_arvalid(3) => axi_crossbar_0_M03_AXI_ARVALID(3),
      m_axi_arvalid(2) => axi_crossbar_0_M02_AXI_ARVALID(2),
      m_axi_arvalid(1) => axi_crossbar_0_M01_AXI_ARVALID(1),
      m_axi_arvalid(0) => axi_crossbar_0_M00_AXI_ARVALID(0),
      m_axi_awaddr(94 downto 76) => axi_crossbar_0_M04_AXI_AWADDR(94 downto 76),
      m_axi_awaddr(75 downto 57) => axi_crossbar_0_M03_AXI_AWADDR(75 downto 57),
      m_axi_awaddr(56 downto 38) => axi_crossbar_0_M02_AXI_AWADDR(56 downto 38),
      m_axi_awaddr(37 downto 19) => axi_crossbar_0_M01_AXI_AWADDR(37 downto 19),
      m_axi_awaddr(18 downto 0) => axi_crossbar_0_M00_AXI_AWADDR(18 downto 0),
      m_axi_awprot(14 downto 12) => axi_crossbar_0_M04_AXI_AWPROT(14 downto 12),
      m_axi_awprot(11 downto 9) => axi_crossbar_0_M03_AXI_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 6) => axi_crossbar_0_M02_AXI_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => axi_crossbar_0_M01_AXI_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => axi_crossbar_0_M00_AXI_AWPROT(2 downto 0),
      m_axi_awready(4) => axi_crossbar_0_M04_AXI_AWREADY,
      m_axi_awready(3) => axi_crossbar_0_M03_AXI_AWREADY,
      m_axi_awready(2) => axi_crossbar_0_M02_AXI_AWREADY,
      m_axi_awready(1) => axi_crossbar_0_M01_AXI_AWREADY,
      m_axi_awready(0) => axi_crossbar_0_M00_AXI_AWREADY,
      m_axi_awvalid(4) => axi_crossbar_0_M04_AXI_AWVALID(4),
      m_axi_awvalid(3) => axi_crossbar_0_M03_AXI_AWVALID(3),
      m_axi_awvalid(2) => axi_crossbar_0_M02_AXI_AWVALID(2),
      m_axi_awvalid(1) => axi_crossbar_0_M01_AXI_AWVALID(1),
      m_axi_awvalid(0) => axi_crossbar_0_M00_AXI_AWVALID(0),
      m_axi_bready(4) => axi_crossbar_0_M04_AXI_BREADY(4),
      m_axi_bready(3) => axi_crossbar_0_M03_AXI_BREADY(3),
      m_axi_bready(2) => axi_crossbar_0_M02_AXI_BREADY(2),
      m_axi_bready(1) => axi_crossbar_0_M01_AXI_BREADY(1),
      m_axi_bready(0) => axi_crossbar_0_M00_AXI_BREADY(0),
      m_axi_bresp(9 downto 8) => axi_crossbar_0_M04_AXI_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => axi_crossbar_0_M03_AXI_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => axi_crossbar_0_M02_AXI_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => axi_crossbar_0_M01_AXI_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => axi_crossbar_0_M00_AXI_BRESP(1 downto 0),
      m_axi_bvalid(4) => axi_crossbar_0_M04_AXI_BVALID,
      m_axi_bvalid(3) => axi_crossbar_0_M03_AXI_BVALID,
      m_axi_bvalid(2) => axi_crossbar_0_M02_AXI_BVALID,
      m_axi_bvalid(1) => axi_crossbar_0_M01_AXI_BVALID,
      m_axi_bvalid(0) => axi_crossbar_0_M00_AXI_BVALID,
      m_axi_rdata(159 downto 128) => axi_crossbar_0_M04_AXI_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => axi_crossbar_0_M03_AXI_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => axi_crossbar_0_M02_AXI_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => axi_crossbar_0_M01_AXI_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => axi_crossbar_0_M00_AXI_RDATA(31 downto 0),
      m_axi_rready(4) => axi_crossbar_0_M04_AXI_RREADY(4),
      m_axi_rready(3) => axi_crossbar_0_M03_AXI_RREADY(3),
      m_axi_rready(2) => axi_crossbar_0_M02_AXI_RREADY(2),
      m_axi_rready(1) => axi_crossbar_0_M01_AXI_RREADY(1),
      m_axi_rready(0) => axi_crossbar_0_M00_AXI_RREADY(0),
      m_axi_rresp(9 downto 8) => axi_crossbar_0_M04_AXI_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => axi_crossbar_0_M03_AXI_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => axi_crossbar_0_M02_AXI_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => axi_crossbar_0_M01_AXI_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => axi_crossbar_0_M00_AXI_RRESP(1 downto 0),
      m_axi_rvalid(4) => axi_crossbar_0_M04_AXI_RVALID,
      m_axi_rvalid(3) => axi_crossbar_0_M03_AXI_RVALID,
      m_axi_rvalid(2) => axi_crossbar_0_M02_AXI_RVALID,
      m_axi_rvalid(1) => axi_crossbar_0_M01_AXI_RVALID,
      m_axi_rvalid(0) => axi_crossbar_0_M00_AXI_RVALID,
      m_axi_wdata(159 downto 128) => axi_crossbar_0_M04_AXI_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => axi_crossbar_0_M03_AXI_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => axi_crossbar_0_M02_AXI_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => axi_crossbar_0_M01_AXI_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => axi_crossbar_0_M00_AXI_WDATA(31 downto 0),
      m_axi_wready(4) => axi_crossbar_0_M04_AXI_WREADY,
      m_axi_wready(3) => axi_crossbar_0_M03_AXI_WREADY,
      m_axi_wready(2) => axi_crossbar_0_M02_AXI_WREADY,
      m_axi_wready(1) => axi_crossbar_0_M01_AXI_WREADY,
      m_axi_wready(0) => axi_crossbar_0_M00_AXI_WREADY,
      m_axi_wstrb(19 downto 16) => axi_crossbar_0_M04_AXI_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => axi_crossbar_0_M03_AXI_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => axi_crossbar_0_M02_AXI_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => axi_crossbar_0_M01_AXI_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => axi_crossbar_0_M00_AXI_WSTRB(3 downto 0),
      m_axi_wvalid(4) => axi_crossbar_0_M04_AXI_WVALID(4),
      m_axi_wvalid(3) => axi_crossbar_0_M03_AXI_WVALID(3),
      m_axi_wvalid(2) => axi_crossbar_0_M02_AXI_WVALID(2),
      m_axi_wvalid(1) => axi_crossbar_0_M01_AXI_WVALID(1),
      m_axi_wvalid(0) => axi_crossbar_0_M00_AXI_WVALID(0),
      s_axi_araddr(18 downto 0) => gpmc_axi_bridge_1_m_axi_lite_ARADDR(18 downto 0),
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arready(0) => gpmc_axi_bridge_1_m_axi_lite_ARREADY(0),
      s_axi_arvalid(0) => gpmc_axi_bridge_1_m_axi_lite_ARVALID,
      s_axi_awaddr(18 downto 0) => gpmc_axi_bridge_1_m_axi_lite_AWADDR(18 downto 0),
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awready(0) => gpmc_axi_bridge_1_m_axi_lite_AWREADY(0),
      s_axi_awvalid(0) => gpmc_axi_bridge_1_m_axi_lite_AWVALID,
      s_axi_bready(0) => gpmc_axi_bridge_1_m_axi_lite_BREADY,
      s_axi_bresp(1 downto 0) => gpmc_axi_bridge_1_m_axi_lite_BRESP(1 downto 0),
      s_axi_bvalid(0) => gpmc_axi_bridge_1_m_axi_lite_BVALID(0),
      s_axi_rdata(31 downto 0) => gpmc_axi_bridge_1_m_axi_lite_RDATA(31 downto 0),
      s_axi_rready(0) => gpmc_axi_bridge_1_m_axi_lite_RREADY,
      s_axi_rresp(1 downto 0) => gpmc_axi_bridge_1_m_axi_lite_RRESP(1 downto 0),
      s_axi_rvalid(0) => gpmc_axi_bridge_1_m_axi_lite_RVALID(0),
      s_axi_wdata(31 downto 0) => gpmc_axi_bridge_1_m_axi_lite_WDATA(31 downto 0),
      s_axi_wready(0) => gpmc_axi_bridge_1_m_axi_lite_WREADY(0),
      s_axi_wstrb(3 downto 0) => B"1111",
      s_axi_wvalid(0) => gpmc_axi_bridge_1_m_axi_lite_WVALID
    );
clk_wiz_0: component design_1_clk_wiz_0_0
     port map (
      clk_in1 => clk_25MHZ,
      clk_out1 => NLW_clk_wiz_0_clk_out1_UNCONNECTED,
      clk_out2 => clk_wiz_0_clk_out2,
      clk_out3 => NLW_clk_wiz_0_clk_out3_UNCONNECTED,
      clk_out4 => NLW_clk_wiz_0_clk_out4_UNCONNECTED,
      locked => clk_wiz_0_locked,
      resetn => ext_reset_in_0
    );
gpmc_axi_bridge_1: component design_1_gpmc_axi_bridge_0_1
     port map (
      a(2 downto 0) => a(2 downto 0),
      a_d(15 downto 0) => a_d(15 downto 0),
      advn => advn,
      clk => clk_wiz_0_clk_out2,
      csn => csn,
      latched_addr_out(18 downto 0) => NLW_gpmc_axi_bridge_1_latched_addr_out_UNCONNECTED(18 downto 0),
      m_axi_lite_araddr(18 downto 0) => gpmc_axi_bridge_1_m_axi_lite_ARADDR(18 downto 0),
      m_axi_lite_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      m_axi_lite_arready => gpmc_axi_bridge_1_m_axi_lite_ARREADY(0),
      m_axi_lite_arvalid => gpmc_axi_bridge_1_m_axi_lite_ARVALID,
      m_axi_lite_awaddr(18 downto 0) => gpmc_axi_bridge_1_m_axi_lite_AWADDR(18 downto 0),
      m_axi_lite_awready => gpmc_axi_bridge_1_m_axi_lite_AWREADY(0),
      m_axi_lite_awvalid => gpmc_axi_bridge_1_m_axi_lite_AWVALID,
      m_axi_lite_bready => gpmc_axi_bridge_1_m_axi_lite_BREADY,
      m_axi_lite_bresp(1 downto 0) => gpmc_axi_bridge_1_m_axi_lite_BRESP(1 downto 0),
      m_axi_lite_bvalid => gpmc_axi_bridge_1_m_axi_lite_BVALID(0),
      m_axi_lite_rdata(31 downto 0) => gpmc_axi_bridge_1_m_axi_lite_RDATA(31 downto 0),
      m_axi_lite_rready => gpmc_axi_bridge_1_m_axi_lite_RREADY,
      m_axi_lite_rresp(1 downto 0) => gpmc_axi_bridge_1_m_axi_lite_RRESP(1 downto 0),
      m_axi_lite_rvalid => gpmc_axi_bridge_1_m_axi_lite_RVALID(0),
      m_axi_lite_wdata(31 downto 0) => gpmc_axi_bridge_1_m_axi_lite_WDATA(31 downto 0),
      m_axi_lite_wready => gpmc_axi_bridge_1_m_axi_lite_WREADY(0),
      m_axi_lite_wvalid => gpmc_axi_bridge_1_m_axi_lite_WVALID,
      oen => oen,
      read_data_out(15 downto 0) => read_data_out(15 downto 0),
      status(3 downto 0) => NLW_gpmc_axi_bridge_1_status_UNCONNECTED(3 downto 0),
      wen => wen
    );
proc_sys_reset_0: component design_1_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => ext_reset_in_0,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_0_clk_out2
    );
end STRUCTURE;
