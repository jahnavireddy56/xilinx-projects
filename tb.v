`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2025 10:44:17 PM
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


module tb();
 reg[3:0] binary;
 wire [3:0] gray;
 gray_convertion dut(binary,gray);
 initial begin 
 #10
 binary=4'd8;
 #10
 binary=4'd4;
 #10
 binary=4'd11;
 #10
 binary=4'd12;
 #10
 $stop;
 end
 
endmodule
