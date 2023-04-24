`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2023 08:49:32 PM
// Design Name: 
// Module Name: SIPO
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


module SIPO(

input sw,
input btn,
output reg [7:0] led
    );
    always @ (posedge(btn))
    led[0] = sw;
   
always @ (posedge(btn))
    led[1] = led[0];
   
always @ (posedge(btn))
    led[2] = led[1];
   
always @ (posedge(btn))
    led[3] = led[2];
   
always @ (posedge(btn))
    led[4] = led[3];
   
always @ (posedge(btn))
    led[5] = led[4];
   
always @ (posedge(btn))
    led[6] = led[5];
   
always @ (posedge(btn))
    led[7] = led[6];
    
    
    
    
endmodule
