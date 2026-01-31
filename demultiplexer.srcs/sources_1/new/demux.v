`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2025 10:11:28 PM
// Design Name: 
// Module Name: demux
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


module demux_n(din,sel,y0,y1,y2,y3 );
input din;
input [1:0]sel;
output y0,y1,y2,y3;

assign y0=(sel==2'b00)?din:1'b0;
assign y1=(sel==2'b01)?din:1'b0;
assign y2=(sel==2'b10)?din:1'b0;
assign y3=(sel==2'b11)?din:1'b0;
endmodule
