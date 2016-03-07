`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:56:07 12/28/2015 
// Design Name: 
// Module Name:    Last_Sort_Unit 
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
module Last_Sort_Unit(
    input [LLR_Width:0] Pre_LLR,
    input [LLR_Width:0] Input_LLR,
	 input [Q_Width:0] Pre_Q,
    input [Q_Width:0] Input_Q,
	 input [IndexA_Width:0] Pre_IndexA,
    input [IndexA_Width:0] Input_IndexA,
	 input [IndexI_Width:0] Pre_IndexI,
    input [IndexI_Width:0] Input_IndexI,
    input Left_NOR,
    input clk,
    output [LLR_Width:0] Output_LLR,
	 output [Q_Width:0] Output_Q,
	 output [IndexA_Width:0] Output_IndexA,
	 output [IndexI_Width:0] Output_IndexI,
	 input reset_n
    );
	 
	 /*参数定义*/ 
	 parameter LLR_Width = 5;       //LLR的宽度
	 parameter Q_Width = 6;         //Q的宽度
	 parameter IndexA_Width = 5;    //IndexA的宽度
	 parameter IndexI_Width = 5;    //IndexI的宽度
	/*参数定义*/ 
	
	 wire [LLR_Width:0] Out_To_Select_LLR;
	 wire [Q_Width:0] Out_To_Select_Q;
	 wire [IndexA_Width:0] Out_To_Select_IndexA;
	 wire [IndexI_Width:0] Out_To_Select_IndexI;
	 wire Cmp_To_SelectCtrl;
	
	 Sort_Unit #(LLR_Width,Q_Width,IndexA_Width,IndexI_Width) last_unit(
		.Pre_LLR(Pre_LLR),
		.Input_LLR(Input_LLR),
		.Pre_Q(Pre_Q),
		.Input_Q(Input_Q),
		.Pre_IndexA(Pre_IndexA),
		.Input_IndexA(Input_IndexA),
		.Pre_IndexI(Pre_IndexI),
		.Input_IndexI(Input_IndexI),
		.Left_NOR(Left_NOR),
		.clk(clk),
		.Output_LLR(Out_To_Select_LLR),
		.Output_Q(Out_To_Select_Q),
		.Output_IndexA(Out_To_Select_IndexA),
		.Output_IndexI(Out_To_Select_IndexI),
		.Comparer_Output(Cmp_To_SelectCtrl),
		.reset_n(reset_n)
		);
	 
	 Selector_last #(LLR_Width) LLR_selector(
		.Pre_Data(Out_To_Select_LLR),
		.Input_Data(Input_LLR),
		.Output_Data(Output_LLR),
		.Select(!Cmp_To_SelectCtrl),
		.clk(clk)//!
		);//最后一个Unit后面接的选择器，选择的控制跟前面不一样，需要经过反相器
		
	 Selector_last #(Q_Width) Q_selector(
		.Pre_Data(Out_To_Select_Q),
		.Input_Data(Input_Q),
		.Output_Data(Output_Q),
		.clk(clk),
		.Select(!Cmp_To_SelectCtrl)
		);//
		
	 Selector_last #(IndexA_Width) IndexA_selector(
		.Pre_Data(Out_To_Select_IndexA),
		.Input_Data(Input_IndexA),
		.Output_Data(Output_IndexA),
		.clk(clk),
		.Select(!Cmp_To_SelectCtrl)
		);//
	 
	 Selector_last #(IndexI_Width) IndexI_selector(
		.Pre_Data(Out_To_Select_IndexI),
		.Input_Data(Input_IndexI),
		.Output_Data(Output_IndexI),
		.clk(clk),
		.Select(!Cmp_To_SelectCtrl)
		);//



endmodule
