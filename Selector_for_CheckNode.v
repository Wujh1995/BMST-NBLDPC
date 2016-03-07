`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:23:56 12/27/2015 
// Design Name: 
// Module Name:    Selector_for_CheckNode 
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
module Selector_for_CheckNode(
	 input [Width:0] Pre_Data,
    input [Width:0] Input_Data,
    input Select,
    output [Width:0] Output_Data
    );
	 
	/*参数定义*/ 
	parameter Width = 5;
	/*参数定义*/ 
	
	assign Output_Data = (Select) ? Pre_Data : Input_Data;
	

endmodule
