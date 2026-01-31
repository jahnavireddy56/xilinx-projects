`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2025 09:50:44 PM
// Design Name: 
// Module Name: shift_combinational
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
module shift_combinational (
    input  [3:0] a,       // 4-bit input
   input  [1:0] value,   // how many positions to shift
    output reg [3:0] y_left,
    output reg [3:0] y_right
);


always @(*) begin
    // Logical Shift Left
    y_left  = a << value;  // 0001     //    0010 

    // Logical Shift Right
    y_right = a >> value;  // 0001    // 0000
   //             >>>           //0       //0000
end

endmodule
*/
module arithmetic_shift (
    input  signed [7:0] a,
    input  [2:0] value,
    output reg signed [7:0] y
);

always @(*) begin
    y = a >>> value;
end

endmodule
