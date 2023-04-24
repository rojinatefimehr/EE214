`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2023 06:31:10 PM
// Design Name: 
// Module Name: inverter
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
*

module inverter(

   input sub,
    input [7:0] bits,
    output reg [7:0] inverted,
    
output reg [7:0] o
);


always @ (sub) begin
    if (sub)
        inverted <= ~bits+1; // twos complement
    else 
        inverted <= bits;
       o <=inverted ; 
        

end
endmodule
