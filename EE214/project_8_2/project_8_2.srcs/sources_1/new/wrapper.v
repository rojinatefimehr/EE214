`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2023 09:20:50 PM
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


input clk, btn,
output [3:0] led

    );
    wire [27:0] sdata;
    
   counter1 input_counter1(
   
   .clk(clk),
   .rst(btn),
   .counterout(sdata)
   
   );
   
  bcdcounter input_bcdcounter(
  
  .clk(sdata[26]),
  .rst(btn),
  .bcd_digit(led)
  ); 
    
endmodule
