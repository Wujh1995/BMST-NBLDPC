`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:06:00 01/31/2016 
// Design Name: 
// Module Name:    Duplication_Filter 
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
module Duplication_Filter(
    input Input_Valid, //��һ������
    input [LLR_Width:0] Input_LLR,
    input [Q_Width:0] Input_Q,
    input clk,
    //input Input_Receivable,  //��һ�����ģ�ֱ�Ӹ���һ��
    output reg Output_Valid,  //����һ����
    output reg [LLR_Width:0] Output_LLR,
    output reg [Q_Width:0] Output_Q,
    //output Output_Receivable, //����һ���ģ�ֱ�Ӵ���һ�����
	 output reg full,  //����һ�����źţ�Ϊ0��ʾδװ����Ϊ1��ʾ��װ��
	 output Save
    );
	 /*������ʽ��ÿ��ʱ�Ӽ����һ������ Input_Valid ֵ
	 Input_Valid��Ϊ1���жϱ�־�Ĵ���ID�Ƿ�ȫΪ1����������full������Output_Valid����ʱIDȫΪ1���ٹ�һ��ʱ�ӣ�ǰ����Input_Valid�ͻᱻ������
														  ��ȫΪ1��������full������أ������ظ�������������˺�Latest������ID��λ+1��Output_Valid����
																						    ���ظ�����Output_Valid���ͣ��������ȴ���һʱ���أ�
																							 
				  ��Ϊ0����case��־�Ĵ���ID:ȫΪ1������ID����Ϊ0��full����(װ��)��Output_Valid���ͣ��������ȴ���һʱ����
												 ȫΪ0����full���ͣ�Output_Valid���ͣ��������ȴ���һʱ����
												 ��������δװ�����ϼ��Ѿ����������ˣ���Latest����(gama)��������ˡ�Marker��ID��λ��һ
				  */
	 /*����һ���޸İ취��full�ź�ͬʱ�ӵ���һ����check_node��check_node״̬2�Ľ�������������counter������������full������һ����⵽full�� ���� ������״̬0*/
	 
	 /*��������*/
	 `define MAX_LLR 31
	 /*��������*/
	 
	 /*��������*/ 
	 parameter Depth = (2**(Counter_Width+1)-1) ;          //A������I�����ĵ�Ԫ����
	 parameter LLR_Width = 5;       //LLR�Ŀ��
	 parameter Q_Width = 6;         //Q�Ŀ��
	 parameter Counter_Width = 4;   //�������Ŀ��
	/*��������*/ 

	reg [Depth:0] ID = 0; //һ��Depthλ�ļĴ�����ÿһλ��Ӧһ����Ԫ��Ϊ0��δ���룬Ϊ1���ѷ���
	reg [LLR_Width:0] Latest_LLR; //���һ���������LLR����gama_LLR
	reg [Q_Width:0] Latest_Q;     //���һ���������Q����gama_Q
	
	//wire Save;   //�棬�����ظ�
	
	/*Core_Filter #(Depth,LLR_Width, Q_Width, Counter_Width) filter(
			.Input_Q(Input_Q),
			.Input_LLR(Input_LLR),
			.clk(clk),
			.ID(ID),
			.Input_Valid(Input_Valid),
			.Output_Save(Save),
			//.Output_Save(Output_Save),
			.Output_LLR(Output_LLR),
			.Output_Q(Output_Q)
			);*/
	
	//assign Output_Receivable = Input_Receivable;
	
	reg delay = 1; //ǿ�н�output_valid�Ƴ�һ��ʱ��
	
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
		if(Input_Valid == 1)
		begin
			if(&ID == 1) //IDȫΪ1
			begin
				full <= 1;
				Output_Valid  <= 0;
			end
			else
			begin
				full <= 0;
				//if(Save==1)  //���أ�������ظ�
				if(&single_output)
				begin
					if(delay)
						delay = 0;
					else
					begin
						Output_Valid <= 1;
						Output_LLR <= Input_LLR;
						Output_Q <= Input_Q;
						//Latest_LLR <= Output_LLR;
						//Latest_Q <= Output_Q;
						//Latest_LLR <= Input_LLR;
						Latest_Q <= Input_Q;
						for(j = 0; j <= Depth; j = j + 1)
						begin
						if(ID[j] == 0)
							Q_Marker[j] <= Input_Q;
						end
						ID <= ( ID << 1 ) + 1 ;
					end
				end
				else
					Output_Valid <= 0;
			end
		end
		
		else //Input_Valid != 1
		begin
			if(&ID == 1) //IDȫΪ1
			begin
				ID <= 0;
				full <= 1;
				Output_Valid <= 0;
				delay <= 1;
			end
			
			else if(|ID == 0) //IDȫΪ0
			begin
				full <= 0;
				Output_Valid <= 0;
			end
			
			else //δװ�����ϼ��Ѿ�����������
			begin
				Output_Valid <= 1;
				Output_LLR <= `MAX_LLR;  //�����һ��(MAX_LLR)��ȫ
				Output_Q <= Latest_Q;
				ID <= ( ID << 1 ) + 1 ;
			end
		end
	end

endmodule
