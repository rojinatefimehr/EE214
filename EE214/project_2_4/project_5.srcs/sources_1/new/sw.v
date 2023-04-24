`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2023 11:55:42 AM
// Design Name: 
// Module Name: sw
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

module sw(
input [4:0] sw,
    output [1:0]  RGB_led_A,
     output [1:0]  RGB_led_B
    );
    //assign RGB_led_A[1]= (~sw[1]&~sw[2]&sw[3]&sw[4]);
    assign RGB_led_A[1]= (sw[3]&sw[4])|  (sw[1]&~sw[2]&sw[3]&~sw[4]) | (sw[1]&sw[2])| (sw[1]&sw[2]& sw[4]);
                          
    assign   RGB_led_B[0]=  (~sw[1]&~sw[2]&~sw[3]&sw[4]) |  (~sw[1]&~sw[2]& sw[3]&~sw[4])|  (~sw[1]&sw[2]&~sw[3]&~sw[4]) |  (sw[1]&~sw[2]&~sw[3]&sw[4]);

endmodule
