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
	 input write_A,      //上一级给的信号，表示请求写入A向量的LLR和Q，为高时，每个时钟读入一个LLR和Q赋到A中
    input [LLR_Width:0] Input_LLR_A,
    input [Q_Width:0] Input_Q_A,
	 input write_I,      //上一级给的信号，表示请求写入I向量的LLR和Q，为高时，每个时钟读入一个LLR和Q赋到A中
    input [LLR_Width:0] Input_LLR_I,
    input [Q_Width:0] Input_Q_I,
	 input receivable,    //下一级给的信号，为高时，表示准备好接收输出，若已经过状态2，即可进入状态3，每个时钟给出一个输出
    //output Valid_Output, //给下一级的信号，为高时，输出的值有效
	 output A_ready,         //给上一级的信号，为高时，表示已经装载过，并且还没排序，不要给寄存器赋新的值
	 output I_ready,         //同上
    //output [LLR_Width:0] Output_LLR,
    //output [Q_Width:0] Output_Q
	 
	 //input Input_Valid, //上一级给的
    //input [LLR_Width:0] Input_LLR,
    //input [Q_Width:0] Input_Q,
    //input clk,
    /*input Input_Receivable,  //下一级给的，直接给上一级*/
    output Output_Valid,  //给下一级的
    output [LLR_Width:0] Output_LLR,
    output [Q_Width:0] Output_Q,
    /*output Output_Receivable, //给上一级的，直接从下一级获得*/
	 output full,  //给下一级的信号，为0表示未装满，为1表示已装满
	 input force_reset_n
    );
	 
	 /*参数定义*/ 
	 parameter Depth = (2**(Counter_Width+1)-1) ;          //A向量和I向量的单元个数
	 parameter LLR_Width = 6;       //LLR的宽度
	 parameter Q_Width = 5;         //Q的宽度
	 parameter IndexA_Width = Counter_Width;    //IndexA的宽度
	 parameter IndexI_Width = Counter_Width;    //IndexI的宽度
	 parameter Counter_Width = 4;   //计数器的宽度
	/*参数定义*/ 
	 
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
