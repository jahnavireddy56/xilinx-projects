`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2025 10:38:52 PM
// Design Name: 
// Module Name: gray_covertion
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


module gray_convertion(binary,gray  );
input [3:0] binary;
output [3:0] gray;
assign gray [3]=binary[3];
assign gray[2]=binary[3]^binary[2];
//assign gray=binary^(binary>>1);  // 0010
assign gray [1]=binary[2]^binary[1];
assign gray [0]=binary[1]^binary[0];

////........1000  ^ 0100   //  1100  //  c 
////....... 1011  ^ 0101   //  1110  //  e   
///........ 1100  ^ 0110   //  1010  // a


endmodule
