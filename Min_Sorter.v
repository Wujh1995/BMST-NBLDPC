`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:50:06 12/28/2015 
// Design Name: 
// Module Name:    Min_Sorter 
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
module Min_Sorter(
    input [LLR_Width:0] Input_LLR,
    input [Q_Width:0] Input_Q,
    input [IndexA_Width:0] Input_IndexA,
    input [IndexI_Width:0] Input_IndexI,
    input clk,
    output [LLR_Width:0] Min_LLR,
    output [Q_Width:0] Output_Q,
    output [IndexA_Width:0] Output_IndexA,
    output [IndexI_Width:0] Output_IndexI,
	 input reset_n,
	 
	output fn//���Ǹ�û�õ����ţ�ֱ�ӽ��˵أ����ǲ������ô�����ţ��Ͳ����ڲ��ӵأ�����...
    );
	 
	 /*��������*/ 
	 parameter N_m = 31;            //n_m������Ԫ�ĸ���[N_m:0]
	 parameter LLR_Width = 5;       //LLR�Ŀ�� [LLR_Width:0]
	 parameter Q_Width = 6;         //Q�Ŀ��   [Q_Width:0]
	 parameter IndexA_Width = 5;    //IndexA�Ŀ�� [IndexA_Width:0]
	 parameter IndexI_Width = 5;    //IndexI�Ŀ�� [IndexI_Width:0]
	/*��������*/ 
	 
	 wire [LLR_Width:0] LLR_Line [N_m:0];
	 wire [Q_Width:0] Q_Line [N_m:0];
	 wire [IndexA_Width:0] IndexI_Line [N_m:0];
	 wire [IndexI_Width:0] IndexA_Line [N_m:0];
	 wire Nor_Line [N_m:0];	
	 
	 reg fn = 1'b0;
	 
	 genvar i;
	 
	 generate
	 for( i = 0; i < N_m /*- 1*/; i = i+1)//����Ҫ-1������Ϊ���һ����Ԫ��Ҫ�������ߣ�����ֻ����N_m����Ԫ
	 begin: Sorter
		if(i==0)
		begin
		 Sort_Unit #(LLR_Width,Q_Width,IndexA_Width,IndexI_Width) First_Unit(
									Input_LLR, 
									Input_LLR, 
									Input_Q, 
									Input_Q, 
									Input_IndexA, 
									Input_IndexA, 
									Input_IndexI, 
									Input_IndexI, 
									fn, //First_Nor,
									clk, 
									LLR_Line[i],
									Q_Line[i],
									IndexA_Line[i],
									IndexI_Line[i],
									Nor_Line[i],
									reset_n);
		end
		else
		begin
			Sort_Unit #(LLR_Width,Q_Width,IndexA_Width,IndexI_Width) Unit(
									LLR_Line[i-1],
									Input_LLR, 
									Q_Line[i-1],
									Input_Q, 
									IndexA_Line[i-1],
									Input_IndexA, 
									IndexI_Line[i-1],
									Input_IndexI, 
									Nor_Line[i-1], 
									clk, 
									LLR_Line[i],
									Q_Line[i],
									IndexA_Line[i],
									IndexI_Line[i],
									Nor_Line[i],
									reset_n); 
		end
	 end	 
	 endgenerate
	 Last_Sort_Unit #(LLR_Width,Q_Width,IndexA_Width,IndexI_Width) Last_Unit(
									LLR_Line[N_m-1/*2*/],
									Input_LLR, 
									Q_Line[N_m-1/*2*/],
									Input_Q, 
									IndexA_Line[N_m-1/*2*/],
									Input_IndexA, 
									IndexI_Line[N_m-1/*2*/],
									Input_IndexI, 
									Nor_Line[N_m-1/*2*/], 
									clk, 
									Min_LLR,
									Output_Q,
									Output_IndexA,
									Output_IndexI,
									reset_n); 

endmodule
