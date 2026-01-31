`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2025 02:49:52 PM
// Design Name: 
// Module Name: halfaddertb
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


module tb1();
  reg a,b;
  wire sum,carry;
  half_adder uut(a,b,sum,carry);
  initial
    begin
      a=0;b=0;#10
      a=0;b=1;#10
      a=1;b=0;#10
      a=1;b=1;#10
      $finish;
    end
    
endmodule
      
