`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2025 10:01:45 PM
// Design Name: 
// Module Name: dataflow
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


module dataflow(a,b,and_out,or_out,nand_out,nor_out,not_out,xor_out,xnor_out);
  input a,b;
  output and_out,or_out,nand_out,nor_out,not_out,xor_out,xnor_out;

  assign and_out = (a & b);
  assign or_out = (a | b);
  assign nand_out = ~(a & b);
  assign nor_out = ~(a | b);
  assign not_out = ~a;
  assign xor_out = (a ^ b);
  assign xnor_out = ~(a ^ b);
endmodule

