`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2025 10:01:28 PM
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

/*
module tb();
reg [7:0] a;
reg [1:0] value;
wire [7:0]y;
//wire [3:0]y_right;
arithmetic_shift dut(.a(a),.y(y),.value(value));
initial begin
#10;
a=8'b10010000;value=2'd2;
#10
//a=00010000;value=2;
#100;
$stop;
end
endmodule
*/
`timescale 1ns / 1ps

module tb_arithmetic_shift;

    // Testbench signals
    reg signed [7:0] a;
    reg [2:0] value;
    wire signed [7:0] y;

    // Instantiate the module
    arithmetic_shift uut (
        .a(a),
        .value(value),
        .y(y)
    );

    initial begin
        $display("Time\t a\t value\t y");
        $monitor("%0t\t %0d\t %0d\t %0d", $time, a, value, y);

        // Test cases
        a = 8'd64; value = 3; #10;     // Positive number
        a = -8'd64; value = 3; #10;    // Negative number
        a = -8'd1; value = 1; #10;     // Edge case: -1
        a = 8'd127; value = 2; #10;    // Max positive
        a = -8'd128; value = 2; #10;   // Min negative
        a = 8'd0; value = 4; #10;      // Zero input

        $finish;
    end

endmodule