`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2025 10:33:29 PM
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


module tb(    );
reg din;
reg [1:0]sel;
wire y0,y1,y2,y3;
demux_n dut(.din(din),.sel(sel),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
task demux_t;
input a;
input [1:0]s;
begin
din=a;sel=s;
#10;
end 
endtask
initial begin
demux_t(0,00);
demux_t(1,00);
demux_t(0,10);
demux_t(1,10);
demux_t(0,01);
demux_t(1,01);
demux_t(0,11);
demux_t(1,11);
$stop;
end


endmodule
