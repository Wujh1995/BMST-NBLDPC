`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:27:24 01/23/2016 
// Design Name: 
// Module Name:    Check_Node 
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
module Check_Node(
    input clk,
	 input write_A,      //上一级给的信号，表示请求写入A向量的LLR和Q，为高时，每个时钟读入一个LLR和Q赋到A中
    input [LLR_Width:0] Input_LLR_A,
    input [Q_Width:0] Input_Q_A,
	 input write_I,      //上一级给的信号，表示请求写入I向量的LLR和Q，为高时，每个时钟读入一个LLR和Q赋到A中
    input [LLR_Width:0] Input_LLR_I,
    input [Q_Width:0] Input_Q_I,
	 input receivable,    //下一级给的信号，为高时，表示准备好接收输出，若已经过状态2，即可进入状态3，每个时钟给出一个输出
    output Valid_Output, //给下一级的信号，为高时，输出的值有效
	 output A_ready,         //给上一级的信号，为高时，表示已经装载过，并且还没排序，不要给寄存器赋新的值
	 output I_ready,         //同上
    output [LLR_Width:0] Output_LLR,
    output [Q_Width:0] Output_Q,
	 input full,
	 input force_reset_n  //接到外部的强制复位端，为低时，复位加号节点和排序器
    );
	 
	 /*参数定义*/ 
	 parameter Depth = (2**(Counter_Width+1)-1) ;          //A向量和I向量的单元个数
	 parameter LLR_Width = 5;       //LLR的宽度
	 parameter Q_Width = 6;         //Q的宽度
	 parameter IndexA_Width = Counter_Width;    //IndexA的宽度
	 parameter IndexI_Width = Counter_Width;    //IndexI的宽度
	 parameter Counter_Width = 4;   //计数器的宽度
	/*参数定义*/ 
	
	`define MAX_LLR 5'b11111
	
	reg [LLR_Width:0] A_LLR [Depth:0]; //A的容器
	reg [Q_Width:0] A_Q [Depth:0];
	
	reg [LLR_Width:0] I_LLR [Depth:0]; //I的容器
	reg [Q_Width:0] I_Q [Depth:0];
	
	//reg [LLR_Width:0] V_LLR [Depth:0]; //输出V的容器
	//reg [Q_Width:0] V_Q [Depth:0];
	
	reg [1:0]state = 2'b00; //状态机的状态指示寄存器 00:等待状态 ； 01：灌入矩阵第一列 ； 10：插入排序
	reg Valid_Output = 0;
	reg I_ready = 0;        //I向量已读入则为1，排序完成后复位为0
	reg A_ready = 0;        //A向量已读入则为1，排序完成后复位为0
	reg Preload = 0;        //状态01完成后置1，排序完成后复位为0，用于在状态00处选择跳转至状态01还是状态10
	reg reset_n = 0;        //排序器的reset输入，不需要用排序器的时候都置零，用的时候置1
	reg [Counter_Width:0] counter = 0; //计数器，用于状态01 
	reg [Counter_Width:0] ptrA = 0;    //A向量的指针
	reg [Counter_Width:0] ptrI = 0;    //I向量的指针
	
	reg [Q_Width:0] scan_val = 0;
	
	//连到排序器输入端
	reg [LLR_Width:0] To_Sorter_LLR_In;
	reg [Q_Width:0] To_Sorter_Q_In;
	reg [IndexA_Width:0] To_Sorter_IndexA_In;
	reg [IndexI_Width:0] To_Sorter_IndexI_In;
	
	
	//连到排序器输出端的线
	//wire [LLR_Width:0] Sorter_Out_LLR;// = Output_LLR;
	//wire [Q_Width:0] Sorter_Out_Q = Output_Q;
	wire [IndexA_Width:0] Sorter_Out_IndexA;
	wire [IndexI_Width:0] Sorter_Out_IndexI;
	
	
	Min_Sorter #(Depth,LLR_Width,Q_Width,IndexA_Width,IndexI_Width) sorter(
		.Input_LLR(To_Sorter_LLR_In),
		.Input_Q(To_Sorter_Q_In),
		.Input_IndexA(To_Sorter_IndexA_In),
		.Input_IndexI(To_Sorter_IndexI_In),
		.clk(clk),
		.Min_LLR(Output_LLR),//Sorter_Out_LLR),
		.Output_Q(Output_Q),//Sorter_Out_Q),
		.Output_IndexA(Sorter_Out_IndexA),
		.Output_IndexI(Sorter_Out_IndexI),
		.reset_n(reset_n)
		);
		
	always@(posedge clk)
	begin
		if(!force_reset_n)
		begin
			Valid_Output <= 0; //复位单步节点和排序器
			A_ready <= 0;
			I_ready <= 0;
			Preload = 0;
			reset_n = 0;
			state <= 2'b00;
			counter = 0; 
			ptrA = 0;    
			ptrI = 0;
			To_Sorter_LLR_In = 0;
			To_Sorter_Q_In = 0;
			To_Sorter_IndexA_In = 0;
			To_Sorter_IndexI_In = 0;
		end
		case (state)
		2'b00:
		begin
			//reset_n = 0; //不用排序器，让其复位
			casex ({A_ready, I_ready, Preload})
			3'b110://A,I都载入好，且还未preload
				state <= 2'b01;//preload
			3'b111://A,I都载入好，并且已经preload，
				if(receivable == 1)
				begin
					state <= 2'b10;//如果下一级准备好了接收，则开始插入排序
					Valid_Output <= 1;
				end

			3'b0xx,3'bx0x:
				reset_n = 0;   //如果没装载好，并且处于状态0，即非暂停输出状态，将排序器置零
			default:
				state <= 2'b00;
			endcase
			
		if(write_A && (!A_ready))
		begin
			A_LLR[ptrA] <= Input_LLR_A;
			A_Q[ptrA] <= Input_Q_A;
			ptrA = ptrA + 1;    //这种计数器自加的语句要阻塞赋值，否则会少掉最后一个数，或者第一个数刚写进去就被认为满了
			if(ptrA == 0)
				A_ready <= 1;
		end
		
		if(write_I && (!I_ready))
		begin
			I_LLR[ptrI] <= Input_LLR_I;
			I_Q[ptrI] <= Input_Q_I;
			ptrI = ptrI + 1;    //这种计数器自加的语句要阻塞赋值，否则会少掉最后一个数，或者第一个数刚写进去就被认为满了
			if(ptrI == 0)
				I_ready <= 1;
		end
		
		end
		2'b01://preload
		begin
			reset_n = 1; //启用排序器
			To_Sorter_LLR_In = A_LLR[counter] + I_LLR[0]; //LLR直接相加
			To_Sorter_Q_In = A_Q[counter] ^ I_Q[0]; //Q相异或，即GF域上相加
			To_Sorter_IndexA_In = counter;
			To_Sorter_IndexI_In = 1;
			counter = counter + 1;    //这种计数器自加的语句要阻塞赋值，否则会少掉最后一个数，或者第一个数刚写进去就被认为满了
			if(counter == 0)
			begin
				Preload = 1; //表示已预装载好
				state <= 2'b00; //装载好第一列后，回到等待状态
			end
		end
		2'b10: //插入排序，每个时钟输出一个输出
		begin
			Valid_Output <= 1; //告诉下一级，现在的输出是有效的
			To_Sorter_LLR_In = A_LLR[Sorter_Out_IndexA] + I_LLR[Sorter_Out_IndexI+1];
			To_Sorter_Q_In = A_Q[Sorter_Out_IndexA] ^ I_Q[Sorter_Out_IndexI+1];
			To_Sorter_IndexA_In = Sorter_Out_IndexA;
			To_Sorter_IndexI_In = Sorter_Out_IndexI + 1;
			counter = counter + 1;    //这种计数器自加的语句要阻塞赋值，否则会少掉最后一个数，或者第一个数刚写进去就被认为满了
			if(counter == 0) //已经全部输出了
			begin
				//Valid_Output <= 0;
				//A_ready <= 0;
				//I_ready <= 0;
				//Preload = 0;
				//reset_n = 0;
				state <= 2'b11; //进入状态4，扫描并填入未出现过的Q和最大的LLR
			end
		end
		2'b11://插入排序完毕，扫描并填入未出现过的Q和最大的LLR
		begin
			if(full)//下一级传来的信号，表示已经够了，可以开始下一轮。复位
			begin
				Valid_Output <= 0;
				A_ready <= 0;
				I_ready <= 0;
				Preload = 0;
				reset_n = 0;
				state <= 2'b00;
			end
			else
			begin
				To_Sorter_LLR_In = `MAX_LLR;
				To_Sorter_Q_In = scan_val;
				To_Sorter_IndexA_In = 0; //这两个下标已经没有意义了，随便给个值都可以
				To_Sorter_IndexI_In = 0;
				scan_val = scan_val + 1;
			end
		end
		endcase
	end
	

endmodule
