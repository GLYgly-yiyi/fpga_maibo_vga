`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/17 14:06:07
// Design Name: 
// Module Name: Fre_Calculate
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


module Fre_Calculate(
input clk100,//clock input,100MHz
input rst,
output clk05Hz,//clock output,0.5 Hz
input [7:0] data_in,//waveform data
output reg[3:0] fre_num_u,//unit bit of frequence 
output reg[3:0] fre_num_d,//decade bit of frequence 
output reg[3:0] fre_num_h,//hundred  bit of frequence 
output reg[3:0] fre_num_t,//thousand bit of frequence 
output reg[3:0] fre_num_m,//myria bit of frequence 
output reg[3:0] fre_num_l,//lac bit of frequence 
output pulse
    );
    
    
  // reg[28:0] clk_1Hz_cnt;
   reg [28:0] time_cnt;
   reg [28:0]  time_cnt_n; 
    reg clk1Hz;
    reg clk1Hz_n;
   //组合电路，实现 1s 的定时计数器
   parameter SET_TIME_1S = 29'd999;
   
   //时序电路，用来给 time_cnt 寄存器赋值
    always @ (posedge clk100 or negedge rst)
    begin
    if(!rst) //判断复位
    time_cnt <= 29'h0; //初始化 time_cnt 值
    else
    time_cnt <= time_cnt_n; //用来给 time_cnt 赋值
    end
    
     always @ (*)
     begin
     if(time_cnt_n == SET_TIME_1S) //判断 1s 时间
     time_cnt_n = 29'h0; //如果到达 1s,定时计数器将会被清零
     else
     time_cnt_n = time_cnt + 29'h1;//如果未到 1s,定时计数器将会继续累加
     end
    
     //---------------------------------------------------------------------------
     //时序电路，用来给 led_reg 寄存器赋值
     always @ (posedge clk100 or negedge rst)
     begin
     if(!rst) //判断复位
    clk1Hz <= 1'b0; //初始化 led_reg 值
     else
     clk1Hz <= clk1Hz_n; //用来给 led_reg 赋值
     end
    
     //组合电路，判断时间，控制 LED 的亮或灭
     always @ (*)
     begin
     if(time_cnt == SET_TIME_1S) //判断 1s 时间
    clk1Hz_n = ~clk1Hz; //如果到达 1s,显示寄存器将会改变 LED 的状态
     else
     clk1Hz_n = clk1Hz; //如果未到 1s,显示寄存器将会将保持 LED 的原状态
     end
    
    
  /*  always@(posedge clk100)begin
    if(clk_1Hz_cnt>= 99)begin//50_000_000
    clk_1Hz_cnt <= 0;
    clk1Hz <= ~clk1Hz;
    end
    else
    clk_1Hz_cnt <= clk_1Hz_cnt+1;
    end
   */ 
  assign clk05Hz = clk1Hz;
    
    reg[3:0] b0,b1,b2,b3,b4,b5;
    reg[3:0] b0_reg,b1_reg,b2_reg,b3_reg,b4_reg,b5_reg;
    
   // wire pulse;
   // assign pulse = (data_in >= 8'b10000000 )? 1:0;
   assign pulse = (data_in >= 8'b11100110 )? 1:0;
    always@(posedge pulse)begin
        if(clk1Hz ==1'b1)begin
            if(b0==9) begin b0<=0;
                 if(b1==9)begin b1<=0;
                   if(b2==9)begin b2<=0;
                        if(b3==9)begin b3<=0; //
                              if(b4==9)begin b4<=0;
                                  if(b5==9) b5<=0;
                                  else b5<=b5+1;
                              end
                             else b4<=b4+1;
                            end            
                          else b3<=b3+1;
                        end
                      else b2<=b2+1;
                  end
                  else b1<=b1+1;
                 end
            else b0<=b0+1;
        end
        else begin
            b0<=0;
            b1<=0;
            b2<=0;
            b3<=0;
            b4<=0;
            b5<=0; 
        end
    end
        
    always@(negedge clk1Hz)begin
        b0_reg <= b0;
        b1_reg <= b1;
        b2_reg <= b2;
        b3_reg <= b3;
        b4_reg <= b4;
        b5_reg <= b5;
    end 
        
    
        
    always@(*)begin
        case(b0_reg)
        4'b0000: fre_num_u <= 4'b0000;
        4'b0001: fre_num_u <= 4'b0001;
        4'b0010: fre_num_u <= 4'b0010;
        4'b0011: fre_num_u <= 4'b0011;
        4'b0100: fre_num_u <= 4'b0100;
        4'b0101: fre_num_u <= 4'b0101;
        4'b0110: fre_num_u <= 4'b0110;
        4'b0111: fre_num_u <= 4'b0111;
        4'b1000: fre_num_u <= 4'b1000;
        4'b1001: fre_num_u <= 4'b1001;
       default:  fre_num_u <= 4'b0000;
       endcase
    end
    
    always@(*)begin
        case(b1_reg)
        4'b0000: fre_num_d <= 4'b0000;
        4'b0001: fre_num_d <= 4'b0001;
        4'b0010: fre_num_d <= 4'b0010;
        4'b0011: fre_num_d <= 4'b0011;
        4'b0100: fre_num_d <= 4'b0100;
        4'b0101: fre_num_d <= 4'b0101;
        4'b0110: fre_num_d <= 4'b0110;
        4'b0111: fre_num_d <= 4'b0111;
        4'b1000: fre_num_d <= 4'b1000;
        4'b1001: fre_num_d <= 4'b1001;
       default:  fre_num_d <= 4'b0000;
       endcase
    end
    
    always@(*)begin
        case(b2_reg)
        4'b0000: fre_num_h <= 4'b0000;
        4'b0001: fre_num_h <= 4'b0001;
        4'b0010: fre_num_h <= 4'b0010;
        4'b0011: fre_num_h <= 4'b0011;
        4'b0100: fre_num_h <= 4'b0100;
        4'b0101: fre_num_h <= 4'b0101;
        4'b0110: fre_num_h <= 4'b0110;
        4'b0111: fre_num_h <= 4'b0111;
        4'b1000: fre_num_h <= 4'b1000;
        4'b1001: fre_num_h <= 4'b1001;
       default:  fre_num_h <= 4'b0000;
       endcase
    end
    
    always@(*)begin
        case(b3_reg)
        4'b0000: fre_num_t <= 4'b0000;
        4'b0001: fre_num_t <= 4'b0001;
        4'b0010: fre_num_t <= 4'b0010;
        4'b0011: fre_num_t <= 4'b0011;
        4'b0100: fre_num_t <= 4'b0100;
        4'b0101: fre_num_t <= 4'b0101;
        4'b0110: fre_num_t <= 4'b0110;
        4'b0111: fre_num_t <= 4'b0111;
        4'b1000: fre_num_t <= 4'b1000;
        4'b1001: fre_num_t <= 4'b1001;
       default:  fre_num_t <= 4'b0000;
       endcase
    end
    
    always@(*)begin
        case(b4_reg)
        4'b0000: fre_num_m <= 4'b0000;
        4'b0001: fre_num_m <= 4'b0001;
        4'b0010: fre_num_m <= 4'b0010;
        4'b0011: fre_num_m <= 4'b0011;
        4'b0100: fre_num_m <= 4'b0100;
        4'b0101: fre_num_m <= 4'b0101;
        4'b0110: fre_num_m <= 4'b0110;
        4'b0111: fre_num_m <= 4'b0111;
        4'b1000: fre_num_m <= 4'b1000;
        4'b1001: fre_num_m <= 4'b1001;
       default:  fre_num_m <= 4'b0000;
       endcase
    end
    
    always@(*)begin
        case(b5_reg)
        4'b0000: fre_num_l <= 4'b0000;
        4'b0001: fre_num_l <= 4'b0001;
        4'b0010: fre_num_l <= 4'b0010;
        4'b0011: fre_num_l <= 4'b0011;
        4'b0100: fre_num_l <= 4'b0100;
        4'b0101: fre_num_l <= 4'b0101;
        4'b0110: fre_num_l <= 4'b0110;
        4'b0111: fre_num_l <= 4'b0111;
        4'b1000: fre_num_l <= 4'b1000;
        4'b1001: fre_num_l <= 4'b1001;
       default:  fre_num_l <= 4'b0000;
       endcase
    end 
    
endmodule
