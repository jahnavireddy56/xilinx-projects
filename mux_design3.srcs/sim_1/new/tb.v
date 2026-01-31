`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2025 10:32:46 PM
// Design Name: 
// Module Name: tb
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


module tb( );
 reg [2:0]a,b,c,d;
 reg [2:0]sel;
 wire [2:0]y;
 muxdesign dut(.a(a),.b(b),.c(c),.d(d),.sel(sel), .y(y));
 initial 
 begin 
 #10
 a=3'd3;b=3'd6;c=3'd7;d=1;sel=3'd0;
 #10
 //a=1;b=1;c=0;
 sel=3'd5;
 #10
 //a=0;b=1;c=1;
 sel=3'd3;
 #10
 //a=1;b=1;c=1;
 sel=3'd1;
 #10
 sel=3'd3;
 #10
 b=3'd2;
 sel=3'd2;
 #10
 sel=3'd7;
 #10
 sel=3'd0;
 $stop;
 end

 
endmodule
