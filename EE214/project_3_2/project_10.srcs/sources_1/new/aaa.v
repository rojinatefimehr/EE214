`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2023 11:41:56 AM
// Design Name: 
// Module Name: aaa
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


module aaa(
input [4:0] sw,
 output led



    );
     assign led =   (sw[0] & sw[1] & sw[2]) | //ABC
		(sw[0] & sw[1] & sw[3]) | //ABD
		(sw[0] & sw[1] & sw[4]) | //ABE
		(sw[0] & sw[2] & sw[3]) | //ACD
		(sw[0] & sw[2] & sw[4]) | //ACE
		(sw[0] & sw[3] & sw[4]) | //ADE
		(sw[1] & sw[2] & sw[3]) | //BCD
		(sw[1] & sw[2] & sw[4]) | //BCE
		(sw[1] & sw[3] & sw[4]) | //BDE
		(sw[2] & sw[3] & sw[4]);  //CDE
   

endmodule
