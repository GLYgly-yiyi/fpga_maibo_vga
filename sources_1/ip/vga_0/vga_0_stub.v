// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun Nov 17 12:54:02 2019
// Host        : DESKTOP-T9GPCN4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub f:/EGO1/EGO1_lianxi/VGA_3/VGA_3.srcs/sources_1/ip/vga_0/vga_0_stub.v
// Design      : vga_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vga,Vivado 2017.4" *)
module vga_0(vga_pclk, vga_rst, vga_hsync, vga_vsync, 
  vga_valid, vga_h_cnt, vga_v_cnt)
/* synthesis syn_black_box black_box_pad_pin="vga_pclk,vga_rst,vga_hsync,vga_vsync,vga_valid,vga_h_cnt[11:0],vga_v_cnt[10:0]" */;
  input vga_pclk;
  input vga_rst;
  output vga_hsync;
  output vga_vsync;
  output vga_valid;
  output [11:0]vga_h_cnt;
  output [10:0]vga_v_cnt;
endmodule
