`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2025 10:10:03 PM
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


module tb( );
reg a;
wire y;
mux_implementation uut(.a(a),.y(y));
initial begin
#10
a=0;
#10
a=1;
#10
$stop;
end
endmodule

/*`timescale 1ns/1ps

module tb;
  reg a, b;
  wire y;   // connect to DUT output

  // DUT instantiation
  mux_implementation dut (
    .a(a),
    .b(b),
    .y(y)
  );

  // Task to apply inputs
  task apply_inputs;
    input ia, ib;
    begin
      a = ia;
      b = ib;
      #20;    // wait 10 ns for each case
    end
  endtask

  initial begin
    // Call the task for all input combinations
    apply_inputs(0,0);   // 20 
    apply_inputs(0,1);
    apply_inputs(1,0);
    apply_inputs(1,1);

    $stop;   // finish simulation
  end
endmodule
*/