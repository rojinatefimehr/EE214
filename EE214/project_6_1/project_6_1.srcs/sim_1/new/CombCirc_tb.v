`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2023 08:26:04 PM
// Design Name: 
// Module Name: CombCirc_tb
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


module CombCirc_tb;

wire X;
reg A;
reg B;
reg C;



 CombCirc CUT(
 
 .A(A),
 .B(B),
 .C(C),
 .X(X)
 );

integer k = 0;

initial begin
    // Initialize Inputs
    A = 0;
    B = 0;
    C = 0;

    // Wait 100 ns for global reset to finish
    // Add stimulus here

    for(k = 0; k < 4; k=k+1)
    begin
        {A,C} = k;
        #5 B = 1;
        #5 B = 0;
        #5 ;
    end
end

endmodule
