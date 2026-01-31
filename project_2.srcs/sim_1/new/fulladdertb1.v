`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/20/2025 08:41:02 PM
// Design Name: 
// Module Name: fulladdertb1
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



module fulladdertb1;
  reg a, b, c;
  wire sum, carry;

  full_adder uut(a, b, c, sum, carry);

  initial begin
    a=0; b=0; c=0; #10;
    a=0; b=0; c=1; #10;
    a=0; b=1; c=0; #10;
    a=0; b=1; c=1; #10;
    a=1; b=0; c=0; #10;
    a=1; b=0; c=1; #10;
    a=1; b=1; c=0; #10;
    a=1; b=1; c=1; #10;
    $finish;
  end
endmodule

