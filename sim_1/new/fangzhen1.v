`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/04 21:11:16
// Design Name: 
// Module Name: fangzhen1
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


module fangzhen1(

    );
    
     reg clk_in  ;
    parameter clk_clk = 5;
    
    always  #(clk_clk) clk_in = ~clk_in; 
   
   
   reg rst;
   reg [7:0]din;
    wire hsync;
    wire vsync;
    wire [2:0] red,green;
    wire [1:0] blue;
    wire  clk_10m;
   wire [3:0] fre_num_u;//unit
    wire[3:0] fre_num_d;//decade
     wire [3:0] fre_num_h;//hundreds 
     // wire  [15:0]rom_vopp_h;
      // wire [15:0] rom_vopp_d;
       //wire [15:0] rom_vopp_u;
        wire [3:0] vopp_num_u;//unit
          wire[3:0] vopp_num_d;//decade
           wire [3:0] vopp_num_h;//hundreds 
    VGA_3 u1(
        .clk_100m(clk_in),
         .s(rst),
       //  input wire [7:0]sw,
         .hsync(hsync),
         .vsync(vsync),
        // output wire[3:0]red,green,blue,
        .red(red),
        .green(green),
        .blue(blue),
         .ad_data(din),
         .clk_10m(clk_10m),
         .fre_num_u(fre_num_u),//unit
               .fre_num_d(fre_num_d),//decade
                 .fre_num_h(fre_num_h),//hundreds 
                .vopp_num_u(vopp_num_u),
                  .vopp_num_d( vopp_num_d),
                . vopp_num_h(vopp_num_h)
    );
    
    parameter data_num=1000000000;  //仿真数据长度
    
    initial
    begin
        clk_in=0;
        din = 7'd0;
        rst=0;
        #20 rst=1;
        #1000_000  ;
    end
    
    integer i;   //数组坐标
    reg [7:0] stimulus[1:data_num];  //数组形式存储读出的数据
    
    initial 
    begin
      //  $readmemb("F:/EGO1/EGO1_lianxi/xin_lianxi/shiboqi/sin1.txt", stimulus);  //将txt文件中的数据存储在数组中
       $readmemb("C:/Users/16239/Desktop/shuju/shuju22.txt", stimulus);  //将txt文件中的数据存储在数组中
        i = 0;
        repeat(data_num) begin   //重复读取数组中的数据
            i = i + 1;
            din = stimulus[i]; 
            #clk_clk;      //每个时钟读取一次
        end
    end       
    
    
endmodule
