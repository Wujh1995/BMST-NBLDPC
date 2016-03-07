`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:19:57 12/27/2015 
// Design Name: 
// Module Name:    LLR_Cell 
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
module Cell(
    input clk,
	 input wire [Width:0] Input_Data,
    input Enable_n,
    output Output_Data,
	 input reset_n
    );
	 
	/*参数定义*/ 
	parameter Width = 5;
	/*参数定义*/ 
	reg [Width:0] Output_Data = (0<<Width);
	
	always@(posedge clk)
	begin
		if(!reset_n)
			Output_Data = (0<<Width);
		else if(!Enable_n) 
			Output_Data = Input_Data;
	end

endmodule
