`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:03:28 02/01/2016 
// Design Name: 
// Module Name:    Core_Filter 
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
module Core_Filter(
    input [Q_Width:0] Input_Q,
	 input [LLR_Width:0] Input_LLR,
    input clk,
    input [Depth:0] ID,
    input Input_Valid,
    output Output_Save,
	 output reg [LLR_Width:0] Output_LLR,
	 output reg [Q_Width:0] Output_Q
    );
	 
	 /*��������*/ 
	 parameter Depth = (2**(Counter_Width+1)-1) ;          //A������I�����ĵ�Ԫ����
	 parameter LLR_Width = 5;       //LLR�Ŀ��
	 parameter Q_Width = 6;         //Q�Ŀ��
	 parameter Counter_Width = 4;   //�������Ŀ��
	/*��������*/ 
	
	reg Output_Save = 0;
	reg [Counter_Width:0] counter = 0;
	reg [Q_Width:0] Q_Marker [Depth:0]; //��Ԫ�ر�־�Ĵ���
	wire [Depth:0] single_output;
	
	genvar i;
	generate
		for( i = 0; i <= Depth; i = i + 1)
		begin : unit_series
			Core_Filter_Unit #(Q_Width) single_unit(
					.Input_Q1(Input_Q),
					.Input_Q2(Q_Marker[i]),
					.Input_ID(ID[i]),
					.clk(clk),
					.Output_Save(single_output[i])
					);
		end
	endgenerate
	
	integer j;
	
	always@(posedge clk)
	begin
		if(Input_Valid)
		begin
			Output_Save = (&single_output); //����д��������ֵ�������ټ�Сһ��ʱ�ӣ����Unit�������ϵ�·������������ʱ��
			//�����������������ǲ��صĺ�����䣬����Duplication_Filterģ�鶼��Ϊ�������
			if(Output_Save==1)
			begin
				Output_LLR = Input_LLR;
				Output_Q = Input_Q;
				for(j = 0; j <= Depth; j = j + 1)
				begin
					if(ID[j] == 0)
						Q_Marker[j] <= Input_Q;
					//counter <= counter + 1;
				end
				//ID <= ( ID << 1 ) + 1 ;
			end
		end
	end
	
	//��������д�������2��ʱ�ӵ�ʱ�ӣ���ʧǰ����ʱ�Ӵ���������
	/*reg [Counter_Width+1:0] j;
	always@(ID)
	begin
		counter = 0;
		for( j = 0; j <= Depth; j = j + 1)
		begin
			if(ID[j])
				counter = counter + 1;
		end
	end*/


endmodule
