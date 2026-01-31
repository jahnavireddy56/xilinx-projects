`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/20/2025 08:20:50 PM
// Design Name: 
// Module Name: fulladder
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


module fulladder(
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
    assign carry=w1|w2|w3;
    
endmodule
