`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2023 10:20:13 PM
// Design Name: 
// Module Name: wrapp
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


module wrapp(

input clk, btn,
output led

    );
    
    wire sdata;
    
     ClkDivider   ClkDivider_100MH1MH(
     
     .clk(clk),
     .rst(btn),
   .terminalcount(50000-1),
   .clk_div(sdata)
     );
     
     
      ClkDivider   ClkDivider_1kH1H(
     
     .clk(sdata),
     .rst(btn),
   .terminalcount(500-1),
   .clk_div(led)
     );
    
endmodule
