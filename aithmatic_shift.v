`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2025 11:35:52 PM
// Design Name: 
// Module Name: aithmatic_shift
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


module arithmetic_shift (
    input  signed [7:0] a,
    input  [2:0] value,
    output reg signed [7:0] y
);

always @(*) begin
    y = a >>> value;
end

endmodule