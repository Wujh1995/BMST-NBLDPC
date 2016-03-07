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
    input Input_Valid, //上一级给的
    input [LLR_Width:0] Input_LLR,
    input [Q_Width:0] Input_Q,
    input clk,
    //input Input_Receivable,  //下一级给的，直接给上一级
    output reg Output_Valid,  //给下一级的
    output reg [LLR_Width:0] Output_LLR,
    output reg [Q_Width:0] Output_Q,
    //output Output_Receivable, //给上一级的，直接从下一级获得
	 output reg full,  //给下一级的信号，为0表示未装满，为1表示已装满
	 output Save
    );
	 /*工作方式：每个时钟检测上一级给的 Input_Valid 值
	 Input_Valid若为1，判断标志寄存器ID是否全为1，是则拉高full，拉低Output_Valid，此时ID全为1，再过一个时钟，前级的Input_Valid就会被拉低了
														  不全为1，则拉低full，后查重，若无重复，则送至输出端和Latest副本，ID移位+1，Output_Valid拉高
																						    若重复，则Output_Valid拉低，结束，等待下一时钟沿；
																							 
				  若为0，则case标志寄存器ID:全为1，是则将ID重置为0，full拉高(装满)，Output_Valid拉低，结束，等待下一时钟沿
												 全为0，则full拉低，Output_Valid拉低，结束，等待下一时钟沿
												 其他，即未装满但上级已经不给数据了，则将Latest副本(gama)送至输出端、Marker，ID移位加一
				  */
	 /*其中一种修改办法：full信号同时接到上一级的check_node，check_node状态2的结束条件不再由counter决定，而是由full决定，一旦检测到full则 重置 并跳回状态0*/
	 
	 /*常数定义*/
	 `define MAX_LLR 31
	 /*常数定义*/
	 
	 /*参数定义*/ 
	 parameter Depth = (2**(Counter_Width+1)-1) ;          //A向量和I向量的单元个数
	 parameter LLR_Width = 5;       //LLR的宽度
	 parameter Q_Width = 6;         //Q的宽度
	 parameter Counter_Width = 4;   //计数器的宽度
	/*参数定义*/ 

	reg [Depth:0] ID = 0; //一个Depth位的寄存器，每一位对应一个单元，为0则未放入，为1则已放入
	reg [LLR_Width:0] Latest_LLR; //最后一个输进来的LLR，即gama_LLR
	reg [Q_Width:0] Latest_Q;     //最后一个输进来的Q，即gama_Q
	
	//wire Save;   //存，即无重复
	
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
	
	reg delay = 1; //强行将output_valid推迟一个时钟
	
	reg [Q_Width:0] Q_Marker [Depth:0]; //域元素标志寄存器
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
			if(&ID == 1) //ID全为1
			begin
				full <= 1;
				Output_Valid  <= 0;
			end
			else
			begin
				full <= 0;
				//if(Save==1)  //查重，如果无重复
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
			if(&ID == 1) //ID全为1
			begin
				ID <= 0;
				full <= 1;
				Output_Valid <= 0;
				delay <= 1;
			end
			
			else if(|ID == 0) //ID全为0
			begin
				full <= 0;
				Output_Valid <= 0;
			end
			
			else //未装满但上级已经不给数据了
			begin
				Output_Valid <= 1;
				Output_LLR <= `MAX_LLR;  //用最后一个(MAX_LLR)补全
				Output_Q <= Latest_Q;
				ID <= ( ID << 1 ) + 1 ;
			end
		end
	end

endmodule
