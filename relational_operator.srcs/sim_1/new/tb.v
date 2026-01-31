`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2025 10:27:51 PM
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


module tb(  );
reg [1:0]a,b;
wire y,y1,y3,y4;
relational_operator dut(.a(a),.b(b),.y(y),.y1(y1),.y3(y3),.y4(y4));
initial begin
#10
a=2'b10;b=0;
#10
a=0;b=1;
#10
a=1;b=0;
#10
a=1;b=1;
#10
a=1;b=2'b10;
#10
$stop ;
end

endmodule
