`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/14 19:23:41
// Design Name: 
// Module Name: clock
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


module clock(
     input clk,
    input                   rst_n                   ,
            //
    output  wire       clk_25m,
     output reg clk_10m,
     output reg clk_1Hz,
     output  reg clk_ad
    );
      localparam Baud_Rate='d1_000;	//波特率
      localparam div_num='d100_000_000/Baud_Rate;
       localparam Baud_Rate_1='d32_000_000;    //波特率
         localparam div_num_1='d100_000_000/Baud_Rate_1;
         localparam Baud_Rate_2='d250;    //波特率
          localparam div_num_2='d100_000_000/Baud_Rate_2;
      
      reg [32:0] num;
     reg[21:0]q;
      reg [15:0]num_1;
      reg [32:0]num_2;
      
      always@(posedge clk)
          if(num==div_num) begin
              num<=0;
              clk_1Hz<=1;
         end
         else begin
              num<=num+1;
              clk_1Hz<=0;
          end
    
  always@(posedge clk or posedge rst_n)
   begin
     if(rst_n==0)
      q<=0;
     else
      q<=q+1;
     end
   assign clk_25m=q[1];          
          
          always@(posedge clk)
                  if(num_1==div_num_1) begin
                      num_1<=0;
                      clk_10m<=1;
                  end
                  else begin
                      num_1<=num_1+1;
                      clk_10m<=0;
                  end
    
    
    always@(posedge clk)
                            if(num_2==div_num_2) begin
                                num_2<=0;
                                clk_ad<=1;
                           end
                           else begin
                                num_2<=num_2+1;
                                clk_ad<=0;
                            end
                      
    
    
endmodule
