`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2023 12:35:42 PM
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
input [7:0] sw,
output led


    );
    
    assign led= (sw[0]&sw[1]& ~sw[2]&~sw[3]&sw[4]&~sw[5] &~sw[6] &~sw[7])|
    (sw[0]&sw[1]& ~sw[2]&sw[3]&~sw[4]&~sw[5] &~sw[6] &~sw[7])|
    (sw[0]&sw[1]& ~sw[2]&sw[3]&sw[4]&~sw[5] &~sw[6] &~sw[7])|
    (sw[0]&sw[1]& sw[2]&~sw[3]&~sw[4]&~sw[5] &~sw[6] &~sw[7]);
    
endmodule
