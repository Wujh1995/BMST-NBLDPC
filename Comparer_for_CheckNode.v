`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:00:57 12/27/2015 
// Design Name: 
// Module Name:    Comparer_for_CheckNode 
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
module Comparer_for_CheckNode(
    input [Width:0] Cell_Data,
    input [Width:0] Input_Data,
    output Output_Signal
    );
	 
	/*参数定义*/ 
	parameter Width = 5;
	/*参数定义*/ 
	
	assign Output_Signal = (Input_Data </*=*/ Cell_Data) ? 1 : 0 ;

endmodule
