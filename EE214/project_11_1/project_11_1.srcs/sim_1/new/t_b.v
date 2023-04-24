`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2023 03:37:39 PM
// Design Name: 
// Module Name: t_b
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


module t_b();


reg A, B, clk, rst;
wire F, cout;

SA SA_tb(
    .A(A),
    .B(B),
    .F(F),
    .rst(rst),
    .clk(clk),  
    .Cout(cout)
);


always
begin
#10 clk = 1'b0;
#10 clk = 1'b1;
end
integer k;

initial 
begin
    rst = 1;
    #10 rst = 0;
    for(k = 0; k <4; k = k +1)
    begin
    #10{A,B} = k;
    end
    
    #20 $finish;
    
end
endmodule
