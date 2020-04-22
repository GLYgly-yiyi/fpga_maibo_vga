`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/14 19:04:25
// Design Name: 
// Module Name: VGA_640_480
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


module VGA_640_480(
    input wire clk,
    input wire clr,
    output reg hsync,
    output reg vsync,
    output reg [9:0] hc,
    output reg [9:0] vc,
    output reg vidon
    
    );
    parameter hpixels=10'b1100100000;
    parameter vlines=10'b1000001001;
    parameter hbp=10'b0010010000;
    parameter hfp=10'b1100010000;
    parameter vbp=10'b0000011111;
    parameter vfp=10'b0111111111;
    reg vsenable;
    //场同步信号计数器
   always@(posedge clk or posedge clr)
    begin
     if(clr==1)
      hc<=0;
     else
      begin
       if(hc==hpixels-1)
        begin
         hc<=0;  //计数器复位
        vsenable<=1;
        end
       else
        begin
         hc<=hc+1;
         vsenable<=1;
        end
       end
      end
  //产生hsync脉冲
  always@(*)
   begin
    if(hc<96)
      hsync=0;
    else
      hsync=1;
    end
  //场同步信号计数器
   always@(posedge clk or posedge clr)
    begin
      if(clr==1)
         vc<=0;
        else  
         if(vsenable==1)
          begin
           if(vc==vlines-1)
            vc<=0;
           else
            vc<=vc+1;
           end
         end
      //产生vsync脉冲
     always@(*)
         begin
          if(vc<2)
            vsync=0;
          else
            vsync=1;
          end
     //使能显示器显示
     always@(*)
      begin
       if((hc<hfp)&&(hc>=hbp)&&(vc<vfp)&&(vc>=vbp))
         vidon=1;
       else
         vidon=0;
       end
     
    
endmodule
