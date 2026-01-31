`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 10:24:32 PM
// Design Name: 
// Module Name: muxdesign
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

/*
module muxdesign(a,b,c,d,sel,y );
input [2:0]a,b,c,d;
input[2:0]sel;  // 3 bit 8 com  // 
output reg[2:0] y;
always @(*)
begin
case(sel)
4'd0:y=a;
3'd1:y=b;
3'd2:y=c;
3'd3:y=d;//
default: y=b;  // 
endcase
end
endmodule
*/
module muxdesign(a,b,c,d,sel,y );
input [2:0]a,b,c,d;
input[2:0]sel;  // 3 bit 8 com  // 
output reg[2:0] y;
always @(*)
begin
if (sel==3'd0)
y=a;
else if(sel==3'd1)
y=b;
else if(sel==3'd2)
y=c;

else if(sel==3'd3)
y=d;
//else 
//y=3'd0;
end




endmodule

