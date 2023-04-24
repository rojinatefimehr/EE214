`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2023 08:57:51 PM
// Design Name: 
// Module Name: oddandeven
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


module oddandeven(
input [7:0] sw,
output [1:0] led
    );
   
   wire temp=sw[0]^sw[1]^sw[2]^sw[3]^sw[4]^sw[5]^sw[6]^sw[7];
   assign led[0]=temp;
   assign led[1]=~temp;
    
endmodule
