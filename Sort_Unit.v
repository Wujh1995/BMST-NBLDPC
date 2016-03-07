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
	 
	 /*��������*/ 
	 parameter LLR_Width = 5;       //LLR�Ŀ��
	 parameter Q_Width = 6;         //Q�Ŀ��
	 parameter IndexA_Width = 5;    //IndexA�Ŀ��
	 parameter IndexI_Width = 5;    //IndexI�Ŀ��
	/*��������*/ 
	
	 wire [LLR_Width:0] LLR_Selector_To_LLR_Cell; //LLR�Ǽ���֮���LLR
	 wire [Q_Width:0] Q_Selector_To_Q_Cell;  //Q��LLR��Ӧ����Ԫ�أ�A+I�����Ԫ�أ�
	 wire [IndexA_Width:0] IndexI_Selector_To_IndexI_Cell; //IndexI �Ǻ���ʸ��, ÿ����Ҫ +1 �ľ������
	 wire [IndexI_Width:0] IndexA_Selector_To_IndexA_Cell; //IndexA ������ʸ��
	 wire Comparer_Enable_n;
	 wire SelectorCtrl;
	 wire Nor_Right;
	 
	 Selector_for_CheckNode #(LLR_Width) LLR_selector(      // .ģ����Ķ˿���(topģ����Ķ˿���)
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
	 //�����ĸ�ѡ��������ӦLLR, Q, IndexA, IndexI
		
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
