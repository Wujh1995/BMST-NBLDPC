`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:14:44 02/01/2016 
// Design Name: 
// Module Name:    Core_Filter_Unit 
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
module Core_Filter_Unit(
    input [Q_Width:0] Input_Q1,
    input [Q_Width:0] Input_Q2,
    input Input_ID,
    input clk,
    output Output_Save
    );
	 
	 /*��������*/ 
	 //parameter Depth = (2**(Counter_Width+1)-1) ;          //A������I�����ĵ�Ԫ����
	 //parameter LLR_Width = 5;       //LLR�Ŀ��
	 parameter Q_Width = 6;         //Q�Ŀ��
	 //parameter Counter_Width = 4;   //�������Ŀ��
	/*��������*/ 
	
	/*always@(posedge clk)
	begin
		if(Input_ID == 0) //���λ�ǿյ�
			Output_Save = 1;
		else if(Input_ID == 1)
			Output_Save = |(Input_Q1^Input_Q2); //�Ȱ�λ���Ȼ�� ��λ �����㣬�����Q��ͬ��������Ϊȫ0������������Ϊ0
	end*/
	
	//д����������ʱ���·����ʽ����ʹ������ģ���ӳ�2��ʱ�ӣ���ʧǰ����ʱ�ӵ�����
	//�ĳ�����������ϵ�·����ʽ�����Լ���1��ʱ�ӵ��ӳ�
	
	assign Output_Save = (Input_ID==1) ? (|(Input_Q1^Input_Q2)) : 1 ;


endmodule
