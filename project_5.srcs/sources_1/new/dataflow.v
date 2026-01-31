`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2025 09:44:25 PM
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


module dataflow(a, b, and_out, or_out, nand_out, nor_out, not_out, xor_out, xnor_out);
  input a, b;
  output and_out, or_out, nand_out, nor_out, not_out, xor_out, xnor_out;

  assign and_out  = a & b;       // AND
  assign or_out   = a | b;       // OR
  assign nand_out = ~(a & b);    // NAND
  assign nor_out  = ~(a | b);    // NOR
  assign not_out  = ~a;          // NOT (only one input used here)
  assign xor_out  = a ^ b;       // XOR
  assign xnor_out = ~(a ^ b);    // XNOR
endmodule

