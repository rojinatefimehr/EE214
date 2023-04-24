`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2023 07:53:36 PM
// Design Name: 
// Module Name: sw_led
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


module sw_led(

input [4:0] sw,
output [1:0] led

    );
   assign led[0]=((sw[3]&~sw[1])| (sw[1]) | (sw[4]&sw[1]) | (sw[0]&sw[4]));
assign led[1]=((sw[1]&sw[0]) |(sw[1]&sw[4])|(sw[0]&sw[4])|(sw[2])|(sw[3])|(~sw[1]&sw[0])|(sw[0]&~sw[1]&sw[4]&~sw[3]));
endmodule
