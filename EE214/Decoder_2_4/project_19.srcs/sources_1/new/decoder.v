`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2023 10:26:00 PM
// Design Name: 
// Module Name: decoder
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


module decoder(

input  [1:0] sw,
    output reg [3:0] led,
    input [3:0] btn
    );
 //output reg [3:0] btn;
always @ (sw)
begin
    case (sw)
        2'd0:   led[0] = 2'd1 & btn[0] ;
        2'd1:   led[1] = 2'd1 & btn[1] ;
        2'd2:  led[2] = 2'd1 & btn[2] ;
        2'd3:    led[3] = 2'd1 & btn[3] ;

        default: led <= 4'd0;
    endcase
end


endmodule