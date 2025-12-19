// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sun Dec 14 21:33:25 2025
// Host        : murtyms-Z270X-Gaming-7 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/murtyms/Radar/HarrisFMCWRadar/HarrisFMCWRadar.gen/sources_1/bd/design_1/ip/design_1_Blinky_0_0/design_1_Blinky_0_0_sim_netlist.v
// Design      : design_1_Blinky_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tffg1156-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Blinky_0_0,Blinky,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Blinky,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_Blinky_0_0
   (clk,
    rst_n,
    led);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* x_interface_mode = "slave rst_n" *) (* x_interface_parameter = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  output [1:0]led;

  wire clk;
  wire [1:0]led;
  wire rst_n;

  design_1_Blinky_0_0_Blinky U0
       (.clk(clk),
        .led(led),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "Blinky" *) 
module design_1_Blinky_0_0_Blinky
   (led,
    rst_n,
    clk);
  output [1:0]led;
  input rst_n;
  input clk;

  wire clk;
  wire [1:0]led;
  wire [0:0]led_out;
  wire \led_out[0]_i_1_n_0 ;
  wire \led_out[1]_i_1_n_0 ;
  wire \led_out[1]_i_3_n_0 ;
  wire \led_out[1]_i_4_n_0 ;
  wire \led_out[1]_i_5_n_0 ;
  wire \led_out[1]_i_6_n_0 ;
  wire \r_cnt_clk[0]_i_1_n_0 ;
  wire \r_cnt_clk[0]_i_3_n_0 ;
  wire [25:0]r_cnt_clk_reg;
  wire \r_cnt_clk_reg[0]_i_2_n_0 ;
  wire \r_cnt_clk_reg[0]_i_2_n_1 ;
  wire \r_cnt_clk_reg[0]_i_2_n_2 ;
  wire \r_cnt_clk_reg[0]_i_2_n_3 ;
  wire \r_cnt_clk_reg[0]_i_2_n_4 ;
  wire \r_cnt_clk_reg[0]_i_2_n_5 ;
  wire \r_cnt_clk_reg[0]_i_2_n_6 ;
  wire \r_cnt_clk_reg[0]_i_2_n_7 ;
  wire \r_cnt_clk_reg[12]_i_1_n_0 ;
  wire \r_cnt_clk_reg[12]_i_1_n_1 ;
  wire \r_cnt_clk_reg[12]_i_1_n_2 ;
  wire \r_cnt_clk_reg[12]_i_1_n_3 ;
  wire \r_cnt_clk_reg[12]_i_1_n_4 ;
  wire \r_cnt_clk_reg[12]_i_1_n_5 ;
  wire \r_cnt_clk_reg[12]_i_1_n_6 ;
  wire \r_cnt_clk_reg[12]_i_1_n_7 ;
  wire \r_cnt_clk_reg[16]_i_1_n_0 ;
  wire \r_cnt_clk_reg[16]_i_1_n_1 ;
  wire \r_cnt_clk_reg[16]_i_1_n_2 ;
  wire \r_cnt_clk_reg[16]_i_1_n_3 ;
  wire \r_cnt_clk_reg[16]_i_1_n_4 ;
  wire \r_cnt_clk_reg[16]_i_1_n_5 ;
  wire \r_cnt_clk_reg[16]_i_1_n_6 ;
  wire \r_cnt_clk_reg[16]_i_1_n_7 ;
  wire \r_cnt_clk_reg[20]_i_1_n_0 ;
  wire \r_cnt_clk_reg[20]_i_1_n_1 ;
  wire \r_cnt_clk_reg[20]_i_1_n_2 ;
  wire \r_cnt_clk_reg[20]_i_1_n_3 ;
  wire \r_cnt_clk_reg[20]_i_1_n_4 ;
  wire \r_cnt_clk_reg[20]_i_1_n_5 ;
  wire \r_cnt_clk_reg[20]_i_1_n_6 ;
  wire \r_cnt_clk_reg[20]_i_1_n_7 ;
  wire \r_cnt_clk_reg[24]_i_1_n_3 ;
  wire \r_cnt_clk_reg[24]_i_1_n_6 ;
  wire \r_cnt_clk_reg[24]_i_1_n_7 ;
  wire \r_cnt_clk_reg[4]_i_1_n_0 ;
  wire \r_cnt_clk_reg[4]_i_1_n_1 ;
  wire \r_cnt_clk_reg[4]_i_1_n_2 ;
  wire \r_cnt_clk_reg[4]_i_1_n_3 ;
  wire \r_cnt_clk_reg[4]_i_1_n_4 ;
  wire \r_cnt_clk_reg[4]_i_1_n_5 ;
  wire \r_cnt_clk_reg[4]_i_1_n_6 ;
  wire \r_cnt_clk_reg[4]_i_1_n_7 ;
  wire \r_cnt_clk_reg[8]_i_1_n_0 ;
  wire \r_cnt_clk_reg[8]_i_1_n_1 ;
  wire \r_cnt_clk_reg[8]_i_1_n_2 ;
  wire \r_cnt_clk_reg[8]_i_1_n_3 ;
  wire \r_cnt_clk_reg[8]_i_1_n_4 ;
  wire \r_cnt_clk_reg[8]_i_1_n_5 ;
  wire \r_cnt_clk_reg[8]_i_1_n_6 ;
  wire \r_cnt_clk_reg[8]_i_1_n_7 ;
  wire rst_n;
  wire [3:1]\NLW_r_cnt_clk_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_r_cnt_clk_reg[24]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hE2FF)) 
    \led_out[0]_i_1 
       (.I0(led[0]),
        .I1(led_out),
        .I2(led[1]),
        .I3(rst_n),
        .O(\led_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \led_out[1]_i_1 
       (.I0(led[1]),
        .I1(led_out),
        .I2(led[0]),
        .I3(rst_n),
        .O(\led_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \led_out[1]_i_2 
       (.I0(\led_out[1]_i_3_n_0 ),
        .I1(\led_out[1]_i_4_n_0 ),
        .I2(\led_out[1]_i_5_n_0 ),
        .I3(\led_out[1]_i_6_n_0 ),
        .I4(r_cnt_clk_reg[0]),
        .I5(r_cnt_clk_reg[1]),
        .O(led_out));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \led_out[1]_i_3 
       (.I0(r_cnt_clk_reg[4]),
        .I1(r_cnt_clk_reg[5]),
        .I2(r_cnt_clk_reg[2]),
        .I3(r_cnt_clk_reg[3]),
        .I4(r_cnt_clk_reg[7]),
        .I5(r_cnt_clk_reg[6]),
        .O(\led_out[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \led_out[1]_i_4 
       (.I0(r_cnt_clk_reg[22]),
        .I1(r_cnt_clk_reg[23]),
        .I2(r_cnt_clk_reg[20]),
        .I3(r_cnt_clk_reg[21]),
        .I4(r_cnt_clk_reg[24]),
        .I5(r_cnt_clk_reg[25]),
        .O(\led_out[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \led_out[1]_i_5 
       (.I0(r_cnt_clk_reg[17]),
        .I1(r_cnt_clk_reg[16]),
        .I2(r_cnt_clk_reg[14]),
        .I3(r_cnt_clk_reg[15]),
        .I4(r_cnt_clk_reg[18]),
        .I5(r_cnt_clk_reg[19]),
        .O(\led_out[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \led_out[1]_i_6 
       (.I0(r_cnt_clk_reg[10]),
        .I1(r_cnt_clk_reg[11]),
        .I2(r_cnt_clk_reg[8]),
        .I3(r_cnt_clk_reg[9]),
        .I4(r_cnt_clk_reg[13]),
        .I5(r_cnt_clk_reg[12]),
        .O(\led_out[1]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \led_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\led_out[0]_i_1_n_0 ),
        .Q(led[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\led_out[1]_i_1_n_0 ),
        .Q(led[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \r_cnt_clk[0]_i_1 
       (.I0(led_out),
        .I1(rst_n),
        .O(\r_cnt_clk[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r_cnt_clk[0]_i_3 
       (.I0(r_cnt_clk_reg[0]),
        .O(\r_cnt_clk[0]_i_3_n_0 ));
  FDRE \r_cnt_clk_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[0]_i_2_n_7 ),
        .Q(r_cnt_clk_reg[0]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  CARRY4 \r_cnt_clk_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\r_cnt_clk_reg[0]_i_2_n_0 ,\r_cnt_clk_reg[0]_i_2_n_1 ,\r_cnt_clk_reg[0]_i_2_n_2 ,\r_cnt_clk_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\r_cnt_clk_reg[0]_i_2_n_4 ,\r_cnt_clk_reg[0]_i_2_n_5 ,\r_cnt_clk_reg[0]_i_2_n_6 ,\r_cnt_clk_reg[0]_i_2_n_7 }),
        .S({r_cnt_clk_reg[3:1],\r_cnt_clk[0]_i_3_n_0 }));
  FDRE \r_cnt_clk_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[8]_i_1_n_5 ),
        .Q(r_cnt_clk_reg[10]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  FDRE \r_cnt_clk_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[8]_i_1_n_4 ),
        .Q(r_cnt_clk_reg[11]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  FDRE \r_cnt_clk_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[12]_i_1_n_7 ),
        .Q(r_cnt_clk_reg[12]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  CARRY4 \r_cnt_clk_reg[12]_i_1 
       (.CI(\r_cnt_clk_reg[8]_i_1_n_0 ),
        .CO({\r_cnt_clk_reg[12]_i_1_n_0 ,\r_cnt_clk_reg[12]_i_1_n_1 ,\r_cnt_clk_reg[12]_i_1_n_2 ,\r_cnt_clk_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_cnt_clk_reg[12]_i_1_n_4 ,\r_cnt_clk_reg[12]_i_1_n_5 ,\r_cnt_clk_reg[12]_i_1_n_6 ,\r_cnt_clk_reg[12]_i_1_n_7 }),
        .S(r_cnt_clk_reg[15:12]));
  FDRE \r_cnt_clk_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[12]_i_1_n_6 ),
        .Q(r_cnt_clk_reg[13]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  FDRE \r_cnt_clk_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[12]_i_1_n_5 ),
        .Q(r_cnt_clk_reg[14]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  FDRE \r_cnt_clk_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[12]_i_1_n_4 ),
        .Q(r_cnt_clk_reg[15]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  FDRE \r_cnt_clk_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[16]_i_1_n_7 ),
        .Q(r_cnt_clk_reg[16]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  CARRY4 \r_cnt_clk_reg[16]_i_1 
       (.CI(\r_cnt_clk_reg[12]_i_1_n_0 ),
        .CO({\r_cnt_clk_reg[16]_i_1_n_0 ,\r_cnt_clk_reg[16]_i_1_n_1 ,\r_cnt_clk_reg[16]_i_1_n_2 ,\r_cnt_clk_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_cnt_clk_reg[16]_i_1_n_4 ,\r_cnt_clk_reg[16]_i_1_n_5 ,\r_cnt_clk_reg[16]_i_1_n_6 ,\r_cnt_clk_reg[16]_i_1_n_7 }),
        .S(r_cnt_clk_reg[19:16]));
  FDRE \r_cnt_clk_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[16]_i_1_n_6 ),
        .Q(r_cnt_clk_reg[17]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  FDRE \r_cnt_clk_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[16]_i_1_n_5 ),
        .Q(r_cnt_clk_reg[18]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  FDRE \r_cnt_clk_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[16]_i_1_n_4 ),
        .Q(r_cnt_clk_reg[19]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  FDRE \r_cnt_clk_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[0]_i_2_n_6 ),
        .Q(r_cnt_clk_reg[1]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  FDRE \r_cnt_clk_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[20]_i_1_n_7 ),
        .Q(r_cnt_clk_reg[20]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  CARRY4 \r_cnt_clk_reg[20]_i_1 
       (.CI(\r_cnt_clk_reg[16]_i_1_n_0 ),
        .CO({\r_cnt_clk_reg[20]_i_1_n_0 ,\r_cnt_clk_reg[20]_i_1_n_1 ,\r_cnt_clk_reg[20]_i_1_n_2 ,\r_cnt_clk_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_cnt_clk_reg[20]_i_1_n_4 ,\r_cnt_clk_reg[20]_i_1_n_5 ,\r_cnt_clk_reg[20]_i_1_n_6 ,\r_cnt_clk_reg[20]_i_1_n_7 }),
        .S(r_cnt_clk_reg[23:20]));
  FDRE \r_cnt_clk_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[20]_i_1_n_6 ),
        .Q(r_cnt_clk_reg[21]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  FDRE \r_cnt_clk_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[20]_i_1_n_5 ),
        .Q(r_cnt_clk_reg[22]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  FDRE \r_cnt_clk_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[20]_i_1_n_4 ),
        .Q(r_cnt_clk_reg[23]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  FDRE \r_cnt_clk_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[24]_i_1_n_7 ),
        .Q(r_cnt_clk_reg[24]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  CARRY4 \r_cnt_clk_reg[24]_i_1 
       (.CI(\r_cnt_clk_reg[20]_i_1_n_0 ),
        .CO({\NLW_r_cnt_clk_reg[24]_i_1_CO_UNCONNECTED [3:1],\r_cnt_clk_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_cnt_clk_reg[24]_i_1_O_UNCONNECTED [3:2],\r_cnt_clk_reg[24]_i_1_n_6 ,\r_cnt_clk_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,r_cnt_clk_reg[25:24]}));
  FDRE \r_cnt_clk_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[24]_i_1_n_6 ),
        .Q(r_cnt_clk_reg[25]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  FDRE \r_cnt_clk_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[0]_i_2_n_5 ),
        .Q(r_cnt_clk_reg[2]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  FDRE \r_cnt_clk_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[0]_i_2_n_4 ),
        .Q(r_cnt_clk_reg[3]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  FDRE \r_cnt_clk_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[4]_i_1_n_7 ),
        .Q(r_cnt_clk_reg[4]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  CARRY4 \r_cnt_clk_reg[4]_i_1 
       (.CI(\r_cnt_clk_reg[0]_i_2_n_0 ),
        .CO({\r_cnt_clk_reg[4]_i_1_n_0 ,\r_cnt_clk_reg[4]_i_1_n_1 ,\r_cnt_clk_reg[4]_i_1_n_2 ,\r_cnt_clk_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_cnt_clk_reg[4]_i_1_n_4 ,\r_cnt_clk_reg[4]_i_1_n_5 ,\r_cnt_clk_reg[4]_i_1_n_6 ,\r_cnt_clk_reg[4]_i_1_n_7 }),
        .S(r_cnt_clk_reg[7:4]));
  FDRE \r_cnt_clk_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[4]_i_1_n_6 ),
        .Q(r_cnt_clk_reg[5]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  FDRE \r_cnt_clk_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[4]_i_1_n_5 ),
        .Q(r_cnt_clk_reg[6]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  FDRE \r_cnt_clk_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[4]_i_1_n_4 ),
        .Q(r_cnt_clk_reg[7]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  FDRE \r_cnt_clk_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[8]_i_1_n_7 ),
        .Q(r_cnt_clk_reg[8]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
  CARRY4 \r_cnt_clk_reg[8]_i_1 
       (.CI(\r_cnt_clk_reg[4]_i_1_n_0 ),
        .CO({\r_cnt_clk_reg[8]_i_1_n_0 ,\r_cnt_clk_reg[8]_i_1_n_1 ,\r_cnt_clk_reg[8]_i_1_n_2 ,\r_cnt_clk_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_cnt_clk_reg[8]_i_1_n_4 ,\r_cnt_clk_reg[8]_i_1_n_5 ,\r_cnt_clk_reg[8]_i_1_n_6 ,\r_cnt_clk_reg[8]_i_1_n_7 }),
        .S(r_cnt_clk_reg[11:8]));
  FDRE \r_cnt_clk_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_clk_reg[8]_i_1_n_6 ),
        .Q(r_cnt_clk_reg[9]),
        .R(\r_cnt_clk[0]_i_1_n_0 ));
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
