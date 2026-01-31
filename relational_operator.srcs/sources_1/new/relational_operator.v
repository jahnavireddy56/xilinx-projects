`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2025 10:21:09 PM
// Design Name: 
// Module Name: relational_operator
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


module relational_operator(a,b,y,y1,y2,y3);
input [1:0]a,b;
output  y,y1,y2,y3;
/*
always@(*)
begin

y=0;
y1=0;
y2=0;
y3=0;
 if (a<=b)
 y=1'b1;
 else if (a>=b)
 y1=1'b1;
 else if (a>b)
 y2=1'b1;
 else if (a<b)
 y3=1'b1;

 end
 
*/
 assign y=(a<b)?1'b1:1'b0 ;
 assign y1=(a>b)?1'b1:1'b0 ;
 assign y2=(a<=b)?1'b1:1'b0 ;
 assign y3=(a>=b)?1'b1:1'b0 ;
   
endmodule

