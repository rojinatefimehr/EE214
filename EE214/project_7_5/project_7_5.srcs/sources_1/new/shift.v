`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2023 07:59:53 PM
// Design Name: 
// Module Name: shift
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


module shift(

    input  [7:0] sw,
    input [1:0] EN,
    input clk,
    
    output reg [15:0] led



    );
    
    reg [25:0] cntr;

 always @ (posedge(clk))
 begin
    cntr <= cntr + 1;
    end
 
    always @(posedge (cntr[25]), posedge (EN[0]), posedge (EN[1]))
    begin
    if (EN[0])
    led<={8'b00000000,sw};
    else
    if (EN[1])
    
    led<={sw,8'b00000000};
    
    else
    begin 
    led<={led[14:0], led[15]};
    end
    end
endmodule
