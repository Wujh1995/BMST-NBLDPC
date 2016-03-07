`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:03:20 01/22/2016 
// Design Name: 
// Module Name:    Selector_last 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Selector_last(
	 input [Width:0] Pre_Data,
    input [Width:0] Input_Data,
    input Select,
    output reg [Width:0] Output_Data,
	 input clk
    );
	 
	/*参数定义*/ 
	parameter Width = 5;
	/*参数定义*/ 
	
	always@(posedge clk)
	begin
		Output_Data <= (Select) ? Pre_Data : Input_Data;
	end
	

endmodule
