`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2023 09:39:04 PM
// Design Name: 
// Module Name: shift_8
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


module shift_8(

input [7:0] sw,

    input D,
    input R,
    input En,
    input F,
    input [1:0] shift,
output reg [7:0] led

);
 

always @ (*)
begin
    
  
  
        if (R==0 & shift==2'd1)
        
        led <= (D == 0) ? {sw[6:0], F} : {F, sw[7:1]};
       else if (R==0 & shift==2'd2)
            led <= (D == 0) ? {sw[5:0], F,F} : {F,F, sw[7:2]};
           else if (R==0 & shift==2'd3)
            led <= (D == 0) ? {sw[4:0], F,F, F} : {F,F,F, sw[7:3]};
         
         
          if (R==1 & shift==2'd1)  
       led <= (D == 0) ? {sw[6:0], sw[7]} : {sw[0], sw[7:1]};
       
       else if (R==2 & shift==2'd2)
            led <= (D == 0) ? {sw[5:0], sw[7:6]} : {sw[1:0], sw[7:2]};
           else if (R==3 & shift==2'd3)
            led <= (D == 0) ? {sw[4:0], sw[7:5]} : {sw[2:0], sw[7:3]};
          
          end
          
          
           




endmodule

