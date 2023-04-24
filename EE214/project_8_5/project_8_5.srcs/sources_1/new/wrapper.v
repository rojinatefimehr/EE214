`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2023 07:57:23 PM
// Design Name: 
// Module Name: wrapper
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


module wrapper(



 input clk,rst,
 input[7:0] sw,
 input[3:0] btn,
 input [24:0] terminalcount,
    output [3:0] seg_an,
    output [6:0] seg_cat
    );
    wire sdata;
    wire [3:0] bcd0, bcd1,bcd2,bcd3;
    wire [3:0] tc;
    wire [1:0] cout;
    wire [3:0] mux_connect;
    
    ClkDivider input_clk(
    
    .clk(clk),
    .rst(btn[0]),
    
    .clk_div(sdata)
    
    
  );
   
   BCD input_1(
   
   .clk(sdata),
   .rst(btn[0]),
   
   .bcd_digit(bcd0),
   .en(sw[0]),
   .tc(tc[0])
   
   
   );
    BCD input_2(
    .clk(sdata),
    .rst(btn[0]),
    .bcd_digit(bcd1),
    .en(tc[0]),
    .tc(tc[1])
    );
   
   BCD input_3(
    .clk(sdata),
    .rst(btn[0]),
    .bcd_digit(bcd2),
    .en(tc[1]&tc[0]),
    .tc(tc[2])
    );
     BCD input_4(
     
     .clk(sdata),
    .rst(btn[0]),
    .bcd_digit(bcd3)
    ,.en(tc[2]&tc[1]&tc[0]),
    .tc(tc[3])
    
     );
   
   counter input_counter(
   .clk(sdata),
  .rst(btn[0]),
   .counterout(cout)
   
   );
   Mux input_mux(
   
   .I0(bcd0),
   .I1(bcd1),
   .I2(bcd2),
   .I3(bcd3),
   .sel(cout),
   .Y(mux_connect)
   
   );
   
  seven input_seven(
  .ssegin(cout),

  .sseg(seg_an)
  
  );
    Decoder2_4 input_decoder(
    
    .I( mux_connect),
    .Y(seg_cat)
    );
    
    
endmodule
