`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:26:54 02/29/2016 
// Design Name: 
// Module Name:    Single_Check_Node 
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
module Single_Check_Node(
    input clk,
	 input write_A,      //��һ�������źţ���ʾ����д��A������LLR��Q��Ϊ��ʱ��ÿ��ʱ�Ӷ���һ��LLR��Q����A��
    input [LLR_Width:0] Input_LLR_A,
    input [Q_Width:0] Input_Q_A,
	 input write_I,      //��һ�������źţ���ʾ����д��I������LLR��Q��Ϊ��ʱ��ÿ��ʱ�Ӷ���һ��LLR��Q����A��
    input [LLR_Width:0] Input_LLR_I,
    input [Q_Width:0] Input_Q_I,
	 input receivable,    //��һ�������źţ�Ϊ��ʱ����ʾ׼���ý�����������Ѿ���״̬2�����ɽ���״̬3��ÿ��ʱ�Ӹ���һ�����
    //output Valid_Output, //����һ�����źţ�Ϊ��ʱ�������ֵ��Ч
	 output A_ready,         //����һ�����źţ�Ϊ��ʱ����ʾ�Ѿ�װ�ع������һ�û���򣬲�Ҫ���Ĵ������µ�ֵ
	 output I_ready,         //ͬ��
    //output [LLR_Width:0] Output_LLR,
    //output [Q_Width:0] Output_Q
	 
	 //input Input_Valid, //��һ������
    //input [LLR_Width:0] Input_LLR,
    //input [Q_Width:0] Input_Q,
    //input clk,
    /*input Input_Receivable,  //��һ�����ģ�ֱ�Ӹ���һ��*/
    output Output_Valid,  //����һ����
    output [LLR_Width:0] Output_LLR,
    output [Q_Width:0] Output_Q,
    /*output Output_Receivable, //����һ���ģ�ֱ�Ӵ���һ�����*/
	 output full,  //����һ�����źţ�Ϊ0��ʾδװ����Ϊ1��ʾ��װ��
	 input force_reset_n
    );
	 
	 /*��������*/ 
	 parameter Depth = (2**(Counter_Width+1)-1) ;          //A������I�����ĵ�Ԫ����
	 parameter LLR_Width = 6;       //LLR�Ŀ��
	 parameter Q_Width = 5;         //Q�Ŀ��
	 parameter IndexA_Width = Counter_Width;    //IndexA�Ŀ��
	 parameter IndexI_Width = Counter_Width;    //IndexI�Ŀ��
	 parameter Counter_Width = 4;   //�������Ŀ��
	/*��������*/ 
	 
	 wire validConnect;
	 wire [LLR_Width:0] LLRConnect;
	 wire [Q_Width:0] QConnect;
	 wire save;
	 	 
	 Check_Node #(Depth,LLR_Width,Q_Width,IndexA_Width,IndexI_Width,Counter_Width) mainNode(
					clk,
					write_A,
					Input_LLR_A,
					Input_Q_A,
					write_I,
					Input_LLR_I,
					Input_Q_I,
					receivable,
					validConnect,
					A_ready,
					I_ready,
					LLRConnect,
					QConnect,
					full,
					force_reset_n
					);
					
	 Duplication_Filter #(Depth,LLR_Width,Q_Width,Counter_Width) tail(
					validConnect,
					LLRConnect,
					QConnect,
					clk,
					Output_Valid,
					Output_LLR,
					Output_Q,
					full,
					save
					);
					
					


endmodule
