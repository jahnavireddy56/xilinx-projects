`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2025 09:50:37 PM
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


module tb(   );
reg a,b;
wire y,y1;
equality_operator dut (.a(a),.b(b),.y(y),.y1(y1));
initial begin
#10
a=0;b=0;
#10
a=0;b=1;
#10
a=1;b=0;
#10
a=1;b=1;
#10
a=1'bx;b=0;
#10
a=1'bx;b=1'bx;
#10
a=1'bz;b=1'bz;
#10
a=1'bz;b=0;
#10
$finish;

end
endmodule
