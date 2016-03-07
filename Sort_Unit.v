`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:29:36 12/27/2015 
// Design Name: 
// Module Name:    Sort_Unit 
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
module Sort_Unit(
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
    output Comparer_Output,
	 input reset_n
    );
	 
	 /*参数定义*/ 
	 parameter LLR_Width = 5;       //LLR的宽度
	 parameter Q_Width = 6;         //Q的宽度
	 parameter IndexA_Width = 5;    //IndexA的宽度
	 parameter IndexI_Width = 5;    //IndexI的宽度
	/*参数定义*/ 
	
	 wire [LLR_Width:0] LLR_Selector_To_LLR_Cell; //LLR是加完之后的LLR
	 wire [Q_Width:0] Q_Selector_To_Q_Cell;  //Q是LLR对应的域元素（A+I后的域元素）
	 wire [IndexA_Width:0] IndexI_Selector_To_IndexI_Cell; //IndexI 是横向矢量, 每次需要 +1 的就是这货
	 wire [IndexI_Width:0] IndexA_Selector_To_IndexA_Cell; //IndexA 是纵向矢量
	 wire Comparer_Enable_n;
	 wire SelectorCtrl;
	 wire Nor_Right;
	 
	 Selector_for_CheckNode #(LLR_Width) LLR_selector(      // .模块里的端口名(top模块里的端口名)
		.Pre_Data(Pre_LLR),
		.Input_Data(Input_LLR),
		.Output_Data(LLR_Selector_To_LLR_Cell),
		.Select(SelectorCtrl)
		);
		
	 Selector_for_CheckNode #(Q_Width) Q_selector(
		.Pre_Data(Pre_Q),
		.Input_Data(Input_Q),
		.Output_Data(Q_Selector_To_Q_Cell),
		.Select(SelectorCtrl)
		);
		
	 Selector_for_CheckNode #(IndexA_Width) IndexA_selector(
		.Pre_Data(Pre_IndexA),
		.Input_Data(Input_IndexA),
		.Output_Data(IndexA_Selector_To_IndexA_Cell),
		.Select(SelectorCtrl)
		);
	 
	 Selector_for_CheckNode #(IndexI_Width) IndexI_selector(
		.Pre_Data(Pre_IndexI),
		.Input_Data(Input_IndexI),
		.Output_Data(IndexI_Selector_To_IndexI_Cell),
		.Select(SelectorCtrl)
		);
	 //以上四个选择器，对应LLR, Q, IndexA, IndexI
		
	 Cell #(LLR_Width) LLR_cell(
		.clk(clk),
		.Input_Data(LLR_Selector_To_LLR_Cell),
		.Enable_n(Comparer_Enable_n),
		.Output_Data(Output_LLR),
		.reset_n(reset_n)
		);
		
	 Cell #(Q_Width) Q_cell(
		.clk(clk),
		.Input_Data(Q_Selector_To_Q_Cell),
		.Enable_n(Comparer_Enable_n),
		.Output_Data(Output_Q),
		.reset_n(reset_n)
		);
		
	 Cell #(IndexA_Width) IndexA_cell(
		.clk(clk),
		.Input_Data(IndexA_Selector_To_IndexA_Cell),
		.Enable_n(Comparer_Enable_n),
		.Output_Data(Output_IndexA),
		.reset_n(reset_n)
		);
	 
	 Cell #(IndexI_Width) IndexI_cell(
		.clk(clk),
		.Input_Data(IndexI_Selector_To_IndexI_Cell),
		.Enable_n(Comparer_Enable_n),
		.Output_Data(Output_IndexI),
		.reset_n(reset_n)
		);
		
		
	 Comparer_for_CheckNode #(LLR_Width) comparer(
		.Cell_Data(Output_LLR),
		.Input_Data(Input_LLR),
		.Output_Signal(Nor_Right)
		);
		
	 assign Comparer_Output = Nor_Right;
	 assign Comparer_Enable_n = Comparer_Output;
	 assign SelectorCtrl = !(Left_NOR || Comparer_Output);
	 
endmodule
