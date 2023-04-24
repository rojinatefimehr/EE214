`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2023 09:56:13 PM
// Design Name: 
// Module Name: dlatch_tb
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


module dlatch_tb;

reg D, G;

wire Q, Qn;

wire R, R1;

wire Q_int, Qn_int;


d_latch CUT(


 .D(D),
 .G(G),
 .Q(Q),
 .Qn(Qn)



);
initial begin
    // Initialize Inputs
    D = 0;
    G = 0;

    // Add stimulus here
    #1 G = 1;
    #1 G=0;
    #1 D = 1;
    #1 D = 0;
     #1 D = 1;
    #1 G = 1;
   
    #1  G = 0;
    #1 D = 0;
   
    #1 ;
   #1 $finish; 
end
endmodule