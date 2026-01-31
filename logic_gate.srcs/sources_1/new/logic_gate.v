`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2025 09:55:27 PM
// Design Name: 
// Module Name: logic_gate
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
// Data flow modeling 
module logic_gate(a,b,y);

input a,b;    // 2inputs // 
output y;  
wire a1;
wire a2;  // internal 
assign a1= ~(a|a);
assign a2=~(b|b);
assign y= ~(a1|a2);    // 
endmodule
*/

// NOT 

// Behavioral model 
/*
module logic_gate(a,b,y);
input a;
input b;
output reg y;
reg a1;
reg a2; 
always@(a)
begin
a1=~(a|a);
a2=~(b|b);
y=~(a1|a2);
  

end
endmodule
*/

module mux(a,b,c,d,sel,y);
input a,b,c,d;  
input [1:0] sel;  
output  reg y;   
// Data flow model
//assign y = sel ?a:b;   // conditional   ternary operator   
always @(a,b,c,d,sel) begin
case(sel)   // 1   /
2'b00: y=a;
2'b01: y=b;
2'b10: y=c;
2'b11: y=d;
endcase
end
endmodule

/*
module mux(a,b,sel,y);
input a,b;  
input  sel;  
output  y;  
// assign y = (~sel & a) | (sel & b); 
// Data flow model
assign y =sel ?a:b;   // conditional   ternary operator   
always @(a,b,sel) begin
case(sel)  // 1   /\
1'b1:y=a;
1'b0:y=b;

endcase
end
*/
/*
always @(a,b,sel)
 begin
if(sel)  // 
y=a;
else 
y=b;
end*/
//sructulral modeling(using gates)
/*
wire nsel, w1, w2;

    not (nsel, sel);
    and (w1, a, nsel);
    and (w2, b, sel);
    or  (y, w1, w2);
endmodule
*/


/*

module mux(a,b,c,d,sel,y);
input a,b,c,d;  
input [1:0] sel;  
output  y;   
// Data flow model
//assign y = sel ?a:b;   // conditional   ternary operator   
always@(a,b,c,d,sel)
begin
//y=(sel==2'b00)?a:(sel==2'b01)?b:(sel==2'b10)?c:d;
//assign y = (sel[1] == 1'b0) ? 
        //      ((sel[0] == 1'b0) ? a : b) : 
          //  ((sel[0] == 1'b0) ? c : d);
          
end

endmodule
*/



/*
module mux(a,b,c,d,sel,y);
input a,b,c,d;  
input [1:0]sel;  
output  reg y;   
always @(a,b,c,d,sel)
 begin
if(sel==2'b00)  
y=a;
else if(sel==2'b01)
y=b;
else if (sel==2'b10)
y=c;
else
 y=d;
end
endmodule
*/




