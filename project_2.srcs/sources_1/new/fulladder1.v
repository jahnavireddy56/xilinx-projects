`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/20/2025 08:53:44 PM
// Design Name: 
// Module Name: fulladder1
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


module fulladder1(
    input a,
    input b,
    input c,
    output sum,
    output carry
    );
    assign sum=a^b^c;
    assign w1=a&b;
    assign w2=b&c;
    assign w3=a&c;
    assign carry=w1|w2|w3;TestBench:

module tb20;
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

endmodule
