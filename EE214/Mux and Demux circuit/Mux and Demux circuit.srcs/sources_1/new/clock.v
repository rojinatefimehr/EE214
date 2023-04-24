`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2023 07:08:43 PM
// Design Name: 
// Module Name: clock
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

module clock (
	input clk,
	output [2:0] B
);

reg [27:0] counter;

always @ (posedge clk)
begin
	counter <= counter + 1;
end

assign B = counter[27:25];

endmodule
