`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2023 12:40:12 PM
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
    output  led
    
 
    );
       assign led= sw[0]^sw[1]^ sw[2]^sw[3]^sw[4];

endmodule
