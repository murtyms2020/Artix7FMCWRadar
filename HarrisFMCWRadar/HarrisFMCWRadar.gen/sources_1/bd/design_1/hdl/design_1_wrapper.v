//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Sun Dec 14 12:15:58 2025
//Host        : murtyms-Z270X-Gaming-7 running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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
  input CLK_25MHZ_FPGA;
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
  input ext_reset_in_0;
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
  wire csn;
  wire ext_reset_in_0;
  wire [18:0]latched_addr_out_1;
  wire oen;
  wire [15:0]read_data_out_1;
  wire [3:0]status_0;
  wire wen;

  design_1 design_1_i
       (.CLK_25MHZ_FPGA(CLK_25MHZ_FPGA),
        .CSN_0(CSN_0),
        .CSN_1(CSN_1),
        .CSN_2(CSN_2),
        .CSN_3(CSN_3),
        .CSN_4(CSN_4),
        .MISO_0(MISO_0),
        .MISO_1(MISO_1),
        .MISO_2(MISO_2),
        .MISO_3(MISO_3),
        .MISO_4(MISO_4),
        .MOSI_0(MOSI_0),
        .MOSI_1(MOSI_1),
        .MOSI_2(MOSI_2),
        .MOSI_3(MOSI_3),
        .MOSI_4(MOSI_4),
        .SCLK_0(SCLK_0),
        .SCLK_1(SCLK_1),
        .SCLK_2(SCLK_2),
        .SCLK_3(SCLK_3),
        .SCLK_4(SCLK_4),
        .a(a),
        .a_d(a_d),
        .advn(advn),
        .csn(csn),
        .ext_reset_in_0(ext_reset_in_0),
        .latched_addr_out_1(latched_addr_out_1),
        .oen(oen),
        .read_data_out_1(read_data_out_1),
        .status_0(status_0),
        .wen(wen));
endmodule
