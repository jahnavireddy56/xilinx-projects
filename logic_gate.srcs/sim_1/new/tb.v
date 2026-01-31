`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2025 10:32:40 PM
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
module tb();   // 
reg a_t,b_t,sel_t;   //
wire y_t;
// integration Team  job 
// instantiation 
mux dut(.a(a_t),.b(b_t),.sel(sel_t),.y(y_t));   //
initial
begin
 #10
 a_t=0; b_t=0 ;sel_t=0; //10 ns   0  to 10 ns   y=x    
 #10 
 a_t=1; b_t=1;sel_t=0;   //10 to20 ns         y =1; 
 #10     // 20 to 30 ns       y =0;
  a_t=0; b_t=1;sel_t=0; 
 
  #10
   a_t=1; b_t=0; sel_t=1;
   #10
    a_t=1; b_t=1; sel_t=1;
    
 $stop;   // 00 0 // 01 / 1  //10  // 2  11 // 3  // 
 end
endmodule
*/

module tb();   // 
reg a_t,b_t,c_t,d_t; 
reg [1:0]sel_t ; //
wire y_t;
// integration Team  job 
// instantiation 
mux dut(.a(a_t),.b(b_t),.c(c_t), .d(d_t), .sel(sel_t),.y(y_t));   //
initial
begin
 #10
 a_t=0; b_t=0 ;c_t=0;d_t=0; sel_t=00; //10 ns   0  to 10 ns   y=x  y=o  
 #10 
 a_t=1; b_t=1;c_t=0;d_t=1;sel_t=01;   //10 to20 ns         y =1; y=1
 #10     // 20 to 30 ns       y =0;
  a_t=0; b_t=1;c_t=1;d_t=0;sel_t=10; //y=1
 
  #10
   a_t=1; b_t=0;c_t=1;d_t=1; sel_t=11;//y=1
   #10
    a_t=1; b_t=1;c_t=1;d_t=1; sel_t=11;//y=1
    
 $stop;   // 00 0 // 01 / 1  //10  // 2  11 // 3  // 
 end
endmodule


