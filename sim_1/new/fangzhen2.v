`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/05 15:03:21
// Design Name: 
// Module Name: fangzhen2
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


module fangzhen2(

    );
    
     reg clk_in  ;
      parameter clk_clk = 5;
      
      always  #(clk_clk) clk_in = ~clk_in; 
         
   reg [7:0]din;
   reg rst;
   wire clk05Hz;
   wire [3:0]  fre_num_u;
   wire [3:0]fre_num_d;
   wire [3:0] fre_num_h;
   wire [3:0] fre_num_t;
   wire [3:0] fre_num_m;
   wire [3:0] fre_num_l;
    wire pulse;
    Fre_Calculate u1(
     .clk100(clk_in),//clock input,100MHz
     .rst(rst),
     .clk05Hz(clk05Hz),//clock output,0.5 Hz
    .data_in(din),//waveform data
    .fre_num_u(fre_num_u),//unit bit of frequence 
    . fre_num_d(fre_num_d),//decade bit of frequence 
    .fre_num_h(fre_num_h),//hundred  bit of frequence 
   .fre_num_t(fre_num_t),//thousand bit of frequence 
   .fre_num_m(fre_num_m),//myria bit of frequence 
    .fre_num_l(fre_num_l),//lac bit of frequence 
    .pulse(pulse)
    
        );
        
     parameter data_num=1000000000;  //仿真数据长度
           
           initial
           begin
               clk_in=0;
               din = 7'd0;
              rst=0;
               #20 rst=1;
               #100_000  ;
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
