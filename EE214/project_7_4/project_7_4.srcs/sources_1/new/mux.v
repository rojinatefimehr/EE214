`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2023 10:45:43 PM
// Design Name: 
// Module Name: mux
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


module mux(

   input [7:0] I0, 
   input[7:0] I1,
   input sel, 
   output reg [7:0] led
   
);

always @(I0, I1, sel) begin
case (sel)
1'd0: led<=I0;
1'd1: led<=I1;
endcase
end
    
endmodule
