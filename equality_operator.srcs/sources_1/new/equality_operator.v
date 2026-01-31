`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2025 09:47:24 PM
// Design Name: 
// Module Name: equality_operator
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


module equality_operator(a,b,y,y1   );
input a,b;
output y,y1;
assign y=(a===b);
assign y1=(a!==b);

endmodule
