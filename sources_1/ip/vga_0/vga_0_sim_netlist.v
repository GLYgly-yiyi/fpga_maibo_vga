// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun Nov 17 12:54:02 2019
// Host        : DESKTOP-T9GPCN4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/EGO1/EGO1_lianxi/VGA_3/VGA_3.srcs/sources_1/ip/vga_0/vga_0_sim_netlist.v
// Design      : vga_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "vga_0,vga,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "vga,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module vga_0
   (vga_pclk,
    vga_rst,
    vga_hsync,
    vga_vsync,
    vga_valid,
    vga_h_cnt,
    vga_v_cnt);
  input vga_pclk;
  input vga_rst;
  output vga_hsync;
  output vga_vsync;
  output vga_valid;
  output [11:0]vga_h_cnt;
  output [10:0]vga_v_cnt;

  wire \<const0> ;
  wire [9:0]\^vga_h_cnt ;
  wire vga_hsync;
  wire vga_pclk;
  wire vga_rst;
  wire [8:0]\^vga_v_cnt ;
  wire vga_valid;
  wire vga_vsync;

  assign vga_h_cnt[11] = \<const0> ;
  assign vga_h_cnt[10] = \<const0> ;
  assign vga_h_cnt[9:0] = \^vga_h_cnt [9:0];
  assign vga_v_cnt[10] = \<const0> ;
  assign vga_v_cnt[9] = \<const0> ;
  assign vga_v_cnt[8:0] = \^vga_v_cnt [8:0];
  GND GND
       (.G(\<const0> ));
  vga_0_vga inst
       (.vga_h_cnt(\^vga_h_cnt ),
        .vga_hsync(vga_hsync),
        .vga_pclk(vga_pclk),
        .vga_rst(vga_rst),
        .vga_v_cnt(\^vga_v_cnt ),
        .vga_valid(vga_valid),
        .vga_vsync(vga_vsync));
endmodule

(* ORIG_REF_NAME = "vga" *) 
module vga_0_vga
   (vga_h_cnt,
    vga_hsync,
    vga_vsync,
    vga_v_cnt,
    vga_valid,
    vga_pclk,
    vga_rst);
  output [9:0]vga_h_cnt;
  output vga_hsync;
  output vga_vsync;
  output [8:0]vga_v_cnt;
  output vga_valid;
  input vga_pclk;
  input vga_rst;

  wire hsync_i_1_n_0;
  wire hsync_i_2_n_0;
  wire hsync_i_3_n_0;
  wire [9:0]line_cnt;
  wire \line_cnt[0]_i_1_n_0 ;
  wire \line_cnt[1]_i_1_n_0 ;
  wire \line_cnt[1]_i_2_n_0 ;
  wire \line_cnt[1]_i_3_n_0 ;
  wire \line_cnt[1]_i_4_n_0 ;
  wire \line_cnt[2]_i_1_n_0 ;
  wire \line_cnt[2]_i_2_n_0 ;
  wire \line_cnt[3]_i_1_n_0 ;
  wire \line_cnt[3]_i_2_n_0 ;
  wire \line_cnt[4]_i_1_n_0 ;
  wire \line_cnt[5]_i_1_n_0 ;
  wire \line_cnt[6]_i_1_n_0 ;
  wire \line_cnt[7]_i_1_n_0 ;
  wire \line_cnt[8]_i_1_n_0 ;
  wire \line_cnt[8]_i_2_n_0 ;
  wire \line_cnt[9]_i_2_n_0 ;
  wire \line_cnt[9]_i_3_n_0 ;
  wire \line_cnt[9]_i_4_n_0 ;
  wire line_cnt_0;
  wire [9:0]p_0_in;
  wire [9:0]pixel_cnt;
  wire \pixel_cnt[4]_i_2_n_0 ;
  wire \pixel_cnt[9]_i_2_n_0 ;
  wire [9:0]vga_h_cnt;
  wire vga_hsync;
  wire vga_pclk;
  wire vga_rst;
  wire [8:0]vga_v_cnt;
  wire vga_valid;
  wire vga_valid_INST_0_i_1_n_0;
  wire vga_vsync;
  wire vsync_i_1_n_0;
  wire vsync_i_2_n_0;

  LUT6 #(
    .INIT(64'hFFBFFFFFFFFFFFBF)) 
    hsync_i_1
       (.I0(hsync_i_2_n_0),
        .I1(pixel_cnt[7]),
        .I2(pixel_cnt[5]),
        .I3(pixel_cnt[6]),
        .I4(pixel_cnt[4]),
        .I5(hsync_i_3_n_0),
        .O(hsync_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    hsync_i_2
       (.I0(pixel_cnt[8]),
        .I1(pixel_cnt[9]),
        .O(hsync_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    hsync_i_3
       (.I0(pixel_cnt[2]),
        .I1(pixel_cnt[0]),
        .I2(pixel_cnt[1]),
        .I3(pixel_cnt[3]),
        .O(hsync_i_3_n_0));
  FDPE hsync_reg
       (.C(vga_pclk),
        .CE(1'b1),
        .D(hsync_i_1_n_0),
        .PRE(vga_rst),
        .Q(vga_hsync));
  LUT6 #(
    .INIT(64'h0000000057775555)) 
    \line_cnt[0]_i_1 
       (.I0(line_cnt[9]),
        .I1(\line_cnt[1]_i_4_n_0 ),
        .I2(line_cnt[2]),
        .I3(line_cnt[3]),
        .I4(\line_cnt[1]_i_2_n_0 ),
        .I5(line_cnt[0]),
        .O(\line_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000008FF08FF0000)) 
    \line_cnt[1]_i_1 
       (.I0(\line_cnt[1]_i_2_n_0 ),
        .I1(\line_cnt[1]_i_3_n_0 ),
        .I2(\line_cnt[1]_i_4_n_0 ),
        .I3(line_cnt[9]),
        .I4(line_cnt[0]),
        .I5(line_cnt[1]),
        .O(\line_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \line_cnt[1]_i_2 
       (.I0(line_cnt[6]),
        .I1(line_cnt[5]),
        .I2(line_cnt[4]),
        .O(\line_cnt[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \line_cnt[1]_i_3 
       (.I0(line_cnt[2]),
        .I1(line_cnt[3]),
        .O(\line_cnt[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_cnt[1]_i_4 
       (.I0(line_cnt[7]),
        .I1(line_cnt[8]),
        .O(\line_cnt[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h03FF00000000AAAA)) 
    \line_cnt[2]_i_1 
       (.I0(\line_cnt[3]_i_2_n_0 ),
        .I1(line_cnt[3]),
        .I2(vsync_i_2_n_0),
        .I3(line_cnt[9]),
        .I4(\line_cnt[2]_i_2_n_0 ),
        .I5(line_cnt[2]),
        .O(\line_cnt[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \line_cnt[2]_i_2 
       (.I0(line_cnt[0]),
        .I1(line_cnt[1]),
        .O(\line_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0CC050D050D050D0)) 
    \line_cnt[3]_i_1 
       (.I0(line_cnt[9]),
        .I1(\line_cnt[3]_i_2_n_0 ),
        .I2(line_cnt[3]),
        .I3(line_cnt[2]),
        .I4(line_cnt[1]),
        .I5(line_cnt[0]),
        .O(\line_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \line_cnt[3]_i_2 
       (.I0(line_cnt[7]),
        .I1(line_cnt[8]),
        .I2(line_cnt[6]),
        .I3(line_cnt[5]),
        .I4(line_cnt[4]),
        .I5(line_cnt[9]),
        .O(\line_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \line_cnt[4]_i_1 
       (.I0(line_cnt[1]),
        .I1(line_cnt[0]),
        .I2(line_cnt[3]),
        .I3(line_cnt[2]),
        .I4(line_cnt[4]),
        .I5(line_cnt[9]),
        .O(\line_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \line_cnt[5]_i_1 
       (.I0(line_cnt[5]),
        .I1(\line_cnt[8]_i_2_n_0 ),
        .I2(line_cnt[9]),
        .O(\line_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00D2)) 
    \line_cnt[6]_i_1 
       (.I0(line_cnt[5]),
        .I1(\line_cnt[8]_i_2_n_0 ),
        .I2(line_cnt[6]),
        .I3(line_cnt[9]),
        .O(\line_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000F708)) 
    \line_cnt[7]_i_1 
       (.I0(line_cnt[5]),
        .I1(line_cnt[6]),
        .I2(\line_cnt[8]_i_2_n_0 ),
        .I3(line_cnt[7]),
        .I4(line_cnt[9]),
        .O(\line_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2333333310000000)) 
    \line_cnt[8]_i_1 
       (.I0(\line_cnt[8]_i_2_n_0 ),
        .I1(line_cnt[9]),
        .I2(line_cnt[7]),
        .I3(line_cnt[5]),
        .I4(line_cnt[6]),
        .I5(line_cnt[8]),
        .O(\line_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \line_cnt[8]_i_2 
       (.I0(line_cnt[2]),
        .I1(line_cnt[3]),
        .I2(line_cnt[0]),
        .I3(line_cnt[1]),
        .I4(line_cnt[4]),
        .O(\line_cnt[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \line_cnt[9]_i_1 
       (.I0(pixel_cnt[8]),
        .I1(pixel_cnt[9]),
        .I2(pixel_cnt[7]),
        .I3(pixel_cnt[6]),
        .I4(pixel_cnt[5]),
        .I5(\pixel_cnt[9]_i_2_n_0 ),
        .O(line_cnt_0));
  LUT6 #(
    .INIT(64'h1500FFFF15001500)) 
    \line_cnt[9]_i_2 
       (.I0(vsync_i_2_n_0),
        .I1(line_cnt[3]),
        .I2(line_cnt[2]),
        .I3(line_cnt[9]),
        .I4(\line_cnt[9]_i_3_n_0 ),
        .I5(\line_cnt[9]_i_4_n_0 ),
        .O(\line_cnt[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \line_cnt[9]_i_3 
       (.I0(line_cnt[7]),
        .I1(line_cnt[5]),
        .I2(line_cnt[6]),
        .I3(line_cnt[8]),
        .O(\line_cnt[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \line_cnt[9]_i_4 
       (.I0(line_cnt[4]),
        .I1(line_cnt[1]),
        .I2(line_cnt[0]),
        .I3(line_cnt[3]),
        .I4(line_cnt[2]),
        .I5(line_cnt[9]),
        .O(\line_cnt[9]_i_4_n_0 ));
  FDCE \line_cnt_reg[0] 
       (.C(vga_pclk),
        .CE(line_cnt_0),
        .CLR(vga_rst),
        .D(\line_cnt[0]_i_1_n_0 ),
        .Q(line_cnt[0]));
  FDCE \line_cnt_reg[1] 
       (.C(vga_pclk),
        .CE(line_cnt_0),
        .CLR(vga_rst),
        .D(\line_cnt[1]_i_1_n_0 ),
        .Q(line_cnt[1]));
  FDCE \line_cnt_reg[2] 
       (.C(vga_pclk),
        .CE(line_cnt_0),
        .CLR(vga_rst),
        .D(\line_cnt[2]_i_1_n_0 ),
        .Q(line_cnt[2]));
  FDCE \line_cnt_reg[3] 
       (.C(vga_pclk),
        .CE(line_cnt_0),
        .CLR(vga_rst),
        .D(\line_cnt[3]_i_1_n_0 ),
        .Q(line_cnt[3]));
  FDCE \line_cnt_reg[4] 
       (.C(vga_pclk),
        .CE(line_cnt_0),
        .CLR(vga_rst),
        .D(\line_cnt[4]_i_1_n_0 ),
        .Q(line_cnt[4]));
  FDCE \line_cnt_reg[5] 
       (.C(vga_pclk),
        .CE(line_cnt_0),
        .CLR(vga_rst),
        .D(\line_cnt[5]_i_1_n_0 ),
        .Q(line_cnt[5]));
  FDCE \line_cnt_reg[6] 
       (.C(vga_pclk),
        .CE(line_cnt_0),
        .CLR(vga_rst),
        .D(\line_cnt[6]_i_1_n_0 ),
        .Q(line_cnt[6]));
  FDCE \line_cnt_reg[7] 
       (.C(vga_pclk),
        .CE(line_cnt_0),
        .CLR(vga_rst),
        .D(\line_cnt[7]_i_1_n_0 ),
        .Q(line_cnt[7]));
  FDCE \line_cnt_reg[8] 
       (.C(vga_pclk),
        .CE(line_cnt_0),
        .CLR(vga_rst),
        .D(\line_cnt[8]_i_1_n_0 ),
        .Q(line_cnt[8]));
  FDCE \line_cnt_reg[9] 
       (.C(vga_pclk),
        .CE(line_cnt_0),
        .CLR(vga_rst),
        .D(\line_cnt[9]_i_2_n_0 ),
        .Q(line_cnt[9]));
  LUT6 #(
    .INIT(64'h000000007777777F)) 
    \pixel_cnt[0]_i_1 
       (.I0(pixel_cnt[8]),
        .I1(pixel_cnt[9]),
        .I2(pixel_cnt[7]),
        .I3(pixel_cnt[6]),
        .I4(pixel_cnt[5]),
        .I5(pixel_cnt[0]),
        .O(p_0_in[0]));
  LUT3 #(
    .INIT(8'h28)) 
    \pixel_cnt[1]_i_1 
       (.I0(\pixel_cnt[4]_i_2_n_0 ),
        .I1(pixel_cnt[0]),
        .I2(pixel_cnt[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \pixel_cnt[2]_i_1 
       (.I0(\pixel_cnt[4]_i_2_n_0 ),
        .I1(pixel_cnt[1]),
        .I2(pixel_cnt[0]),
        .I3(pixel_cnt[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \pixel_cnt[3]_i_1 
       (.I0(\pixel_cnt[4]_i_2_n_0 ),
        .I1(pixel_cnt[2]),
        .I2(pixel_cnt[0]),
        .I3(pixel_cnt[1]),
        .I4(pixel_cnt[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \pixel_cnt[4]_i_1 
       (.I0(\pixel_cnt[4]_i_2_n_0 ),
        .I1(pixel_cnt[3]),
        .I2(pixel_cnt[1]),
        .I3(pixel_cnt[0]),
        .I4(pixel_cnt[2]),
        .I5(pixel_cnt[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    \pixel_cnt[4]_i_2 
       (.I0(pixel_cnt[5]),
        .I1(pixel_cnt[6]),
        .I2(pixel_cnt[7]),
        .I3(pixel_cnt[9]),
        .I4(pixel_cnt[8]),
        .O(\pixel_cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2A15)) 
    \pixel_cnt[5]_i_1 
       (.I0(\pixel_cnt[9]_i_2_n_0 ),
        .I1(pixel_cnt[9]),
        .I2(pixel_cnt[8]),
        .I3(pixel_cnt[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0BBB0444)) 
    \pixel_cnt[6]_i_1 
       (.I0(\pixel_cnt[9]_i_2_n_0 ),
        .I1(pixel_cnt[5]),
        .I2(pixel_cnt[9]),
        .I3(pixel_cnt[8]),
        .I4(pixel_cnt[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h00DFDFDF00202020)) 
    \pixel_cnt[7]_i_1 
       (.I0(pixel_cnt[5]),
        .I1(\pixel_cnt[9]_i_2_n_0 ),
        .I2(pixel_cnt[6]),
        .I3(pixel_cnt[9]),
        .I4(pixel_cnt[8]),
        .I5(pixel_cnt[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h515555750C000000)) 
    \pixel_cnt[8]_i_1 
       (.I0(pixel_cnt[9]),
        .I1(pixel_cnt[6]),
        .I2(\pixel_cnt[9]_i_2_n_0 ),
        .I3(pixel_cnt[7]),
        .I4(pixel_cnt[5]),
        .I5(pixel_cnt[8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h00100800FFFF0000)) 
    \pixel_cnt[9]_i_1 
       (.I0(pixel_cnt[5]),
        .I1(pixel_cnt[7]),
        .I2(\pixel_cnt[9]_i_2_n_0 ),
        .I3(pixel_cnt[6]),
        .I4(pixel_cnt[9]),
        .I5(pixel_cnt[8]),
        .O(p_0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \pixel_cnt[9]_i_2 
       (.I0(pixel_cnt[3]),
        .I1(pixel_cnt[1]),
        .I2(pixel_cnt[0]),
        .I3(pixel_cnt[2]),
        .I4(pixel_cnt[4]),
        .O(\pixel_cnt[9]_i_2_n_0 ));
  FDCE \pixel_cnt_reg[0] 
       (.C(vga_pclk),
        .CE(1'b1),
        .CLR(vga_rst),
        .D(p_0_in[0]),
        .Q(pixel_cnt[0]));
  FDCE \pixel_cnt_reg[1] 
       (.C(vga_pclk),
        .CE(1'b1),
        .CLR(vga_rst),
        .D(p_0_in[1]),
        .Q(pixel_cnt[1]));
  FDCE \pixel_cnt_reg[2] 
       (.C(vga_pclk),
        .CE(1'b1),
        .CLR(vga_rst),
        .D(p_0_in[2]),
        .Q(pixel_cnt[2]));
  FDCE \pixel_cnt_reg[3] 
       (.C(vga_pclk),
        .CE(1'b1),
        .CLR(vga_rst),
        .D(p_0_in[3]),
        .Q(pixel_cnt[3]));
  FDCE \pixel_cnt_reg[4] 
       (.C(vga_pclk),
        .CE(1'b1),
        .CLR(vga_rst),
        .D(p_0_in[4]),
        .Q(pixel_cnt[4]));
  FDCE \pixel_cnt_reg[5] 
       (.C(vga_pclk),
        .CE(1'b1),
        .CLR(vga_rst),
        .D(p_0_in[5]),
        .Q(pixel_cnt[5]));
  FDCE \pixel_cnt_reg[6] 
       (.C(vga_pclk),
        .CE(1'b1),
        .CLR(vga_rst),
        .D(p_0_in[6]),
        .Q(pixel_cnt[6]));
  FDCE \pixel_cnt_reg[7] 
       (.C(vga_pclk),
        .CE(1'b1),
        .CLR(vga_rst),
        .D(p_0_in[7]),
        .Q(pixel_cnt[7]));
  FDCE \pixel_cnt_reg[8] 
       (.C(vga_pclk),
        .CE(1'b1),
        .CLR(vga_rst),
        .D(p_0_in[8]),
        .Q(pixel_cnt[8]));
  FDCE \pixel_cnt_reg[9] 
       (.C(vga_pclk),
        .CE(1'b1),
        .CLR(vga_rst),
        .D(p_0_in[9]),
        .Q(pixel_cnt[9]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \vga_h_cnt[0]_INST_0 
       (.I0(pixel_cnt[9]),
        .I1(pixel_cnt[7]),
        .I2(pixel_cnt[8]),
        .I3(pixel_cnt[0]),
        .O(vga_h_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \vga_h_cnt[1]_INST_0 
       (.I0(pixel_cnt[9]),
        .I1(pixel_cnt[7]),
        .I2(pixel_cnt[8]),
        .I3(pixel_cnt[1]),
        .O(vga_h_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \vga_h_cnt[2]_INST_0 
       (.I0(pixel_cnt[9]),
        .I1(pixel_cnt[7]),
        .I2(pixel_cnt[8]),
        .I3(pixel_cnt[2]),
        .O(vga_h_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \vga_h_cnt[3]_INST_0 
       (.I0(pixel_cnt[9]),
        .I1(pixel_cnt[7]),
        .I2(pixel_cnt[8]),
        .I3(pixel_cnt[3]),
        .O(vga_h_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \vga_h_cnt[4]_INST_0 
       (.I0(pixel_cnt[9]),
        .I1(pixel_cnt[7]),
        .I2(pixel_cnt[8]),
        .I3(pixel_cnt[4]),
        .O(vga_h_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \vga_h_cnt[5]_INST_0 
       (.I0(pixel_cnt[9]),
        .I1(pixel_cnt[7]),
        .I2(pixel_cnt[8]),
        .I3(pixel_cnt[5]),
        .O(vga_h_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    \vga_h_cnt[6]_INST_0 
       (.I0(pixel_cnt[9]),
        .I1(pixel_cnt[7]),
        .I2(pixel_cnt[8]),
        .I3(pixel_cnt[6]),
        .O(vga_h_cnt[6]));
  LUT2 #(
    .INIT(4'h4)) 
    \vga_h_cnt[7]_INST_0 
       (.I0(pixel_cnt[9]),
        .I1(pixel_cnt[7]),
        .O(vga_h_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \vga_h_cnt[8]_INST_0 
       (.I0(pixel_cnt[9]),
        .I1(pixel_cnt[8]),
        .O(vga_h_cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \vga_h_cnt[9]_INST_0 
       (.I0(pixel_cnt[9]),
        .I1(pixel_cnt[8]),
        .I2(pixel_cnt[7]),
        .O(vga_h_cnt[9]));
  LUT6 #(
    .INIT(64'h1555555500000000)) 
    \vga_v_cnt[0]_INST_0 
       (.I0(line_cnt[9]),
        .I1(line_cnt[7]),
        .I2(line_cnt[5]),
        .I3(line_cnt[6]),
        .I4(line_cnt[8]),
        .I5(line_cnt[0]),
        .O(vga_v_cnt[0]));
  LUT6 #(
    .INIT(64'h1555555500000000)) 
    \vga_v_cnt[1]_INST_0 
       (.I0(line_cnt[9]),
        .I1(line_cnt[7]),
        .I2(line_cnt[5]),
        .I3(line_cnt[6]),
        .I4(line_cnt[8]),
        .I5(line_cnt[1]),
        .O(vga_v_cnt[1]));
  LUT6 #(
    .INIT(64'h1555555500000000)) 
    \vga_v_cnt[2]_INST_0 
       (.I0(line_cnt[9]),
        .I1(line_cnt[7]),
        .I2(line_cnt[5]),
        .I3(line_cnt[6]),
        .I4(line_cnt[8]),
        .I5(line_cnt[2]),
        .O(vga_v_cnt[2]));
  LUT6 #(
    .INIT(64'h1555555500000000)) 
    \vga_v_cnt[3]_INST_0 
       (.I0(line_cnt[9]),
        .I1(line_cnt[7]),
        .I2(line_cnt[5]),
        .I3(line_cnt[6]),
        .I4(line_cnt[8]),
        .I5(line_cnt[3]),
        .O(vga_v_cnt[3]));
  LUT6 #(
    .INIT(64'h1555555500000000)) 
    \vga_v_cnt[4]_INST_0 
       (.I0(line_cnt[9]),
        .I1(line_cnt[7]),
        .I2(line_cnt[5]),
        .I3(line_cnt[6]),
        .I4(line_cnt[8]),
        .I5(line_cnt[4]),
        .O(vga_v_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h04444444)) 
    \vga_v_cnt[5]_INST_0 
       (.I0(line_cnt[9]),
        .I1(line_cnt[5]),
        .I2(line_cnt[6]),
        .I3(line_cnt[7]),
        .I4(line_cnt[8]),
        .O(vga_v_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00007F00)) 
    \vga_v_cnt[6]_INST_0 
       (.I0(line_cnt[5]),
        .I1(line_cnt[7]),
        .I2(line_cnt[8]),
        .I3(line_cnt[6]),
        .I4(line_cnt[9]),
        .O(vga_v_cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00007F00)) 
    \vga_v_cnt[7]_INST_0 
       (.I0(line_cnt[5]),
        .I1(line_cnt[6]),
        .I2(line_cnt[8]),
        .I3(line_cnt[7]),
        .I4(line_cnt[9]),
        .O(vga_v_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h04444444)) 
    \vga_v_cnt[8]_INST_0 
       (.I0(line_cnt[9]),
        .I1(line_cnt[8]),
        .I2(line_cnt[7]),
        .I3(line_cnt[5]),
        .I4(line_cnt[6]),
        .O(vga_v_cnt[8]));
  LUT6 #(
    .INIT(64'h0444444444444444)) 
    vga_valid_INST_0
       (.I0(line_cnt[9]),
        .I1(vga_valid_INST_0_i_1_n_0),
        .I2(line_cnt[8]),
        .I3(line_cnt[6]),
        .I4(line_cnt[5]),
        .I5(line_cnt[7]),
        .O(vga_valid));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    vga_valid_INST_0_i_1
       (.I0(pixel_cnt[8]),
        .I1(pixel_cnt[7]),
        .I2(pixel_cnt[9]),
        .O(vga_valid_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFEFAFAF)) 
    vsync_i_1
       (.I0(vsync_i_2_n_0),
        .I1(line_cnt[1]),
        .I2(line_cnt[9]),
        .I3(line_cnt[2]),
        .I4(line_cnt[3]),
        .O(vsync_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    vsync_i_2
       (.I0(line_cnt[4]),
        .I1(line_cnt[7]),
        .I2(line_cnt[8]),
        .I3(line_cnt[6]),
        .I4(line_cnt[5]),
        .O(vsync_i_2_n_0));
  FDPE vsync_reg
       (.C(vga_pclk),
        .CE(1'b1),
        .D(vsync_i_1_n_0),
        .PRE(vga_rst),
        .Q(vga_vsync));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
