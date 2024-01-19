`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2024 06:48:33
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


module tb;

reg clk0 ;
reg clk1;
reg rst ;
design_1_wrapper uut(.clk_0(clk0), .clk_1(clk1),.reset_0(rst));

always #10 clk0 = !clk0;
always #10 clk1 = !clk1;
initial begin 

    clk0 = 0;
    clk1 = 1;
    rst = 0;

end 

endmodule
