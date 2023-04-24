`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2023 11:06:25 AM
// Design Name: 
// Module Name: SW_LD
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


module SW_LD(


input [7:0] sw,
    output [3:0] led
    );
    assign led[3] =(sw[3]|sw[4]|sw[5]|sw[6])& (sw[3]|sw[4]|sw[5]|~sw[6])& (sw[3]|~sw[4]|sw[5]|sw[6])& (sw[3]|~sw[4]|sw[5]|~sw[6])& (~sw[3]|sw[4]|~sw[5]|sw[6])& (~sw[3]|sw[4]|~sw[5]|~sw[6])& (~sw[3]|~sw[4]|~sw[5]|sw[6])& (~sw[3]|~sw[4]|~sw[5]|~sw[6]);                                                       

endmodule