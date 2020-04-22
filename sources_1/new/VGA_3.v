`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/14 18:16:18
// Design Name: 
// Module Name: VGA_3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module VGA_3(
     input clk_100m,
     input wire s,
   //  input wire [7:0]sw,
     output wire hsync,
     output wire vsync,
    // output wire[3:0]red,green,blue,
    output[2:0]red,green,
    output[1:0]blue,
     input [7:0]ad_data,
     output clk_10m,
     output [3:0] fre_num_u,//unit
       output[3:0] fre_num_d,//decade
        output [3:0] fre_num_h,//hundreds 
        output [3:0] vopp_num_h,//hundreds 
        output[3:0] vopp_num_d,//decade
          output[3:0] vopp_num_u//unit
        // output  [15:0]rom_vopp_h,
        // output [15:0] rom_vopp_d,
        //output [15:0] rom_vopp_u
);
  wire clr;
  wire  clk_25m;
  wire clk_32m;
  wire vidon;
  //wire clk_10m;
  
  wire clk_1Hz;
   wire clk_ad;
 // wire[7:0]ad_data;
  wire [9:0]hc,vc;
//  wire [0:127]M;
  //wire [9:0]rom_addr4;
  assign clr =s;
 
 //wire[3:0] fre_num_u;//unit
   //wire[3:0] fre_num_d;//decade
   //wire[3:0] fre_num_h;//hundreds 
   wire[3:0] fre_num_t;//thousand
   wire[3:0] fre_num_m;//myria
   wire[3:0] fre_num_l;//lac
//wire[3:0] vopp_num_h;//hundreds 
 //  wire[3:0] vopp_num_d;//decade
  // wire[3:0] vopp_num_u;//unit
  
   wire[3:0] fre_addr_u;
   wire[3:0] fre_addr_d;
   wire[3:0] fre_addr_h;
   wire[3:0] fre_addr_t;
   wire[3:0] fre_addr_m;
   wire[3:0] fre_addr_l;
   wire[3:0] vopp_addr_h;
   wire[3:0] vopp_addr_d;
   wire[3:0] vopp_addr_u;
  wire [15:0] rom_fre_u;
  wire [15:0] rom_fre_d;
  wire [15:0] rom_fre_h;
  wire [15:0] rom_fre_t;
  wire [15:0] rom_fre_m;
  wire [15:0] rom_fre_l;
 wire [15:0] rom_vopp_h;
  wire [15:0] rom_vopp_d;
  wire [15:0] rom_vopp_u;
 
 char_rom_mapping char_rom_mapping(
  .fre_num_u(fre_num_u),//unit
  .fre_num_d(fre_num_d),//decade
  .fre_num_h(fre_num_h),//hundreds 
  .fre_num_t(fre_num_t),//thousand
  .fre_num_m(fre_num_m),//myria
  .fre_num_l(fre_num_l),//lac
  .vopp_num_h(vopp_num_h),
  .vopp_num_d(vopp_num_d),
  .vopp_num_u(vopp_num_u),
  
  .fre_addr_u(fre_addr_u),
  .fre_addr_d(fre_addr_d),
  .fre_addr_h(fre_addr_h),
  .fre_addr_t(fre_addr_t),
  .fre_addr_m(fre_addr_m),
  .fre_addr_l(fre_addr_l),
  .vopp_addr_h(vopp_addr_h),
  .vopp_addr_d(vopp_addr_d),
  .vopp_addr_u(vopp_addr_u),
  
  .rom_fre_u(rom_fre_u),
  .rom_fre_d(rom_fre_d),
  .rom_fre_h(rom_fre_h),
  .rom_fre_t(rom_fre_t),
  .rom_fre_m(rom_fre_m),
  .rom_fre_l(rom_fre_l),
  .rom_vopp_h(rom_vopp_h),
  .rom_vopp_d(rom_vopp_d),
  .rom_vopp_u(rom_vopp_u)
  );

wire [0:127]M; 
wire[7:0] addr;   
   rom rom
   (
   .addr(addr),
   .M(M)
   );
 
 wire[5:0]addr_Fre_Vopp;
   wire[0:63]F;
   Fre_Vopp_mapping_rom u_Fre_Vopp_mapping_rom(
       .addr_Fre_Vopp(addr_Fre_Vopp),
       .F(F)
   );
 
 clk_wiz_0 clock
     (
      // Clock out ports
      .clk_out1(clk_25m),     // output clk_out1
      .clk_out2(clk_32m),     // output clk_out2
      .clk_out3(clk_10m),     // output clk_out3
      // Status and control signals
      .resetn(clr), // input resetn
     // Clock in ports
      .clk_in1(clk_100m));      // input clk_in1
  /*    
  clock clock
  (
    .clk(clk_100m),
    .rst_n(clr),
    .clk_25m(clk_25m),
    .clk_10m(clk_10m),
    .clk_1Hz(clk_1Hz),
    .clk_ad(clk_ad)
 );
 */
 
 vga_0 u_vga(
     .vga_pclk(clk_25m),
     .vga_rst(1'b0),
     .vga_hsync(hsync),
     .vga_vsync(vsync),
     .vga_h_cnt(hc),
     .vga_v_cnt(vc),
     .vga_valid(vidon)
 );
 
 //VGA_640_480 VGA_640_480
 //(
  //  .clk(clk_25m),
  //  .clr(clr),
  //  .hsync(hsync),
 //   .vsync(vsync),
 //   .vc(vc),
  //  .vidon(vidon)
 //);
 
 wire[9:0]wave_addr;
vga_initials  vga_initials
(
.clk(clk_1Hz),
  .hcnt(hc),
	.vcnt(vc),
	.vidon(vidon),
	.M(M),
	.F(F),

	.rom_fre_u(rom_fre_u),
	.rom_fre_d(rom_fre_d),
	.rom_fre_h(rom_fre_h),
	.rom_fre_t(rom_fre_t),
	.rom_fre_m(rom_fre_m),
	.rom_fre_l(rom_fre_l),
	.rom_vopp_h(rom_vopp_h),
	.rom_vopp_d(rom_vopp_d),
	.rom_vopp_u(rom_vopp_u),
	
	.red(red),
	.green(green),
	.blue(blue),
	.addr_rom_fre_u(fre_addr_u),
	.addr_rom_fre_d(fre_addr_d),
	.addr_rom_fre_h(fre_addr_h),
	.addr_rom_fre_t(fre_addr_t),
	.addr_rom_fre_m(fre_addr_m),
	.addr_rom_fre_l(fre_addr_l),
	.addr_rom_vopp_h(vopp_addr_h),
	.addr_rom_vopp_d(vopp_addr_d),
	.addr_rom_vopp_u(vopp_addr_u),

	.rom_addr4(addr_Fre_Vopp),
	.addr_out(wave_addr)   //to waveform addr
 );
 
 //wire clk_ad;
wire [7:0]wave_show;
    //waveform to be showed(from AD or waveform generater), select by SW[15]
    assign wave_show = ad_data; 
   wire trigger;
  trigger u_tri(
   .clk_AD(clk_10m),
   .trigger_DI(wave_show),
   .trigger(trigger)//trigger signal 
       ); 
  wire clk05Hz; 
   waveform_ram u_ram(
           .clk_AD(clk_10m),//waveform ram write clock
           .clk_05Hz(clk05Hz),//refresh frequence of vopp number to be showed
           .addr_in(wave_addr),//waveform ram read address, from vga line count
           .trigger(trigger),//trigger signal
           .vopp_num_u(vopp_num_u),//vopp value unit
           .vopp_num_d(vopp_num_d),//vopp value decade
           .vopp_num_h(vopp_num_h),//vopp value hundred
           
           .data_in(wave_show),//waveform data in from AD or waveform generater, to be stored in waveform ram
           .data_out(addr)//waveform ram data, to be showed 
               ); 
 
    
 Fre_Calculate u_CalFre(
                   .clk100(clk_100m),//clock input,100MHz
                   .rst(clr),
                   .clk05Hz(clk05Hz),//clock output,0.5 Hz
                   .data_in(wave_show),//waveform data
                   .fre_num_u(fre_num_u),//unit bit of frequence 
                   .fre_num_d(fre_num_d),//decade bit of frequence 
                   .fre_num_h(fre_num_h),//hundred bit of frequence 
                   .fre_num_t(fre_num_t),//thousand bit of frequence 
                   .fre_num_m(fre_num_m),//myria bit of frequence 
                   .fre_num_l(fre_num_l)//lac bit of frequence 
               );
 
 
endmodule
