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
	 input write_A,      //��һ�������źţ���ʾ����д��A������LLR��Q��Ϊ��ʱ��ÿ��ʱ�Ӷ���һ��LLR��Q����A��
    input [LLR_Width:0] Input_LLR_A,
    input [Q_Width:0] Input_Q_A,
	 input write_I,      //��һ�������źţ���ʾ����д��I������LLR��Q��Ϊ��ʱ��ÿ��ʱ�Ӷ���һ��LLR��Q����A��
    input [LLR_Width:0] Input_LLR_I,
    input [Q_Width:0] Input_Q_I,
	 input receivable,    //��һ�������źţ�Ϊ��ʱ����ʾ׼���ý�����������Ѿ���״̬2�����ɽ���״̬3��ÿ��ʱ�Ӹ���һ�����
    output Valid_Output, //����һ�����źţ�Ϊ��ʱ�������ֵ��Ч
	 output A_ready,         //����һ�����źţ�Ϊ��ʱ����ʾ�Ѿ�װ�ع������һ�û���򣬲�Ҫ���Ĵ������µ�ֵ
	 output I_ready,         //ͬ��
    output [LLR_Width:0] Output_LLR,
    output [Q_Width:0] Output_Q,
	 input full,
	 input force_reset_n  //�ӵ��ⲿ��ǿ�Ƹ�λ�ˣ�Ϊ��ʱ����λ�ӺŽڵ��������
    );
	 
	 /*��������*/ 
	 parameter Depth = (2**(Counter_Width+1)-1) ;          //A������I�����ĵ�Ԫ����
	 parameter LLR_Width = 5;       //LLR�Ŀ��
	 parameter Q_Width = 6;         //Q�Ŀ��
	 parameter IndexA_Width = Counter_Width;    //IndexA�Ŀ��
	 parameter IndexI_Width = Counter_Width;    //IndexI�Ŀ��
	 parameter Counter_Width = 4;   //�������Ŀ��
	/*��������*/ 
	
	`define MAX_LLR 5'b11111
	
	reg [LLR_Width:0] A_LLR [Depth:0]; //A������
	reg [Q_Width:0] A_Q [Depth:0];
	
	reg [LLR_Width:0] I_LLR [Depth:0]; //I������
	reg [Q_Width:0] I_Q [Depth:0];
	
	//reg [LLR_Width:0] V_LLR [Depth:0]; //���V������
	//reg [Q_Width:0] V_Q [Depth:0];
	
	reg [1:0]state = 2'b00; //״̬����״ָ̬ʾ�Ĵ��� 00:�ȴ�״̬ �� 01����������һ�� �� 10����������
	reg Valid_Output = 0;
	reg I_ready = 0;        //I�����Ѷ�����Ϊ1��������ɺ�λΪ0
	reg A_ready = 0;        //A�����Ѷ�����Ϊ1��������ɺ�λΪ0
	reg Preload = 0;        //״̬01��ɺ���1��������ɺ�λΪ0��������״̬00��ѡ����ת��״̬01����״̬10
	reg reset_n = 0;        //��������reset���룬����Ҫ����������ʱ�����㣬�õ�ʱ����1
	reg [Counter_Width:0] counter = 0; //������������״̬01 
	reg [Counter_Width:0] ptrA = 0;    //A������ָ��
	reg [Counter_Width:0] ptrI = 0;    //I������ָ��
	
	reg [Q_Width:0] scan_val = 0;
	
	//���������������
	reg [LLR_Width:0] To_Sorter_LLR_In;
	reg [Q_Width:0] To_Sorter_Q_In;
	reg [IndexA_Width:0] To_Sorter_IndexA_In;
	reg [IndexI_Width:0] To_Sorter_IndexI_In;
	
	
	//��������������˵���
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
			Valid_Output <= 0; //��λ�����ڵ��������
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
			//reset_n = 0; //���������������临λ
			casex ({A_ready, I_ready, Preload})
			3'b110://A,I������ã��һ�δpreload
				state <= 2'b01;//preload
			3'b111://A,I������ã������Ѿ�preload��
				if(receivable == 1)
				begin
					state <= 2'b10;//�����һ��׼�����˽��գ���ʼ��������
					Valid_Output <= 1;
				end

			3'b0xx,3'bx0x:
				reset_n = 0;   //���ûװ�غã����Ҵ���״̬0��������ͣ���״̬��������������
			default:
				state <= 2'b00;
			endcase
			
		if(write_A && (!A_ready))
		begin
			A_LLR[ptrA] <= Input_LLR_A;
			A_Q[ptrA] <= Input_Q_A;
			ptrA = ptrA + 1;    //���ּ������Լӵ����Ҫ������ֵ��������ٵ����һ���������ߵ�һ������д��ȥ�ͱ���Ϊ����
			if(ptrA == 0)
				A_ready <= 1;
		end
		
		if(write_I && (!I_ready))
		begin
			I_LLR[ptrI] <= Input_LLR_I;
			I_Q[ptrI] <= Input_Q_I;
			ptrI = ptrI + 1;    //���ּ������Լӵ����Ҫ������ֵ��������ٵ����һ���������ߵ�һ������д��ȥ�ͱ���Ϊ����
			if(ptrI == 0)
				I_ready <= 1;
		end
		
		end
		2'b01://preload
		begin
			reset_n = 1; //����������
			To_Sorter_LLR_In = A_LLR[counter] + I_LLR[0]; //LLRֱ�����
			To_Sorter_Q_In = A_Q[counter] ^ I_Q[0]; //Q����򣬼�GF�������
			To_Sorter_IndexA_In = counter;
			To_Sorter_IndexI_In = 1;
			counter = counter + 1;    //���ּ������Լӵ����Ҫ������ֵ��������ٵ����һ���������ߵ�һ������д��ȥ�ͱ���Ϊ����
			if(counter == 0)
			begin
				Preload = 1; //��ʾ��Ԥװ�غ�
				state <= 2'b00; //װ�غõ�һ�к󣬻ص��ȴ�״̬
			end
		end
		2'b10: //��������ÿ��ʱ�����һ�����
		begin
			Valid_Output <= 1; //������һ�������ڵ��������Ч��
			To_Sorter_LLR_In = A_LLR[Sorter_Out_IndexA] + I_LLR[Sorter_Out_IndexI+1];
			To_Sorter_Q_In = A_Q[Sorter_Out_IndexA] ^ I_Q[Sorter_Out_IndexI+1];
			To_Sorter_IndexA_In = Sorter_Out_IndexA;
			To_Sorter_IndexI_In = Sorter_Out_IndexI + 1;
			counter = counter + 1;    //���ּ������Լӵ����Ҫ������ֵ��������ٵ����һ���������ߵ�һ������д��ȥ�ͱ���Ϊ����
			if(counter == 0) //�Ѿ�ȫ�������
			begin
				//Valid_Output <= 0;
				//A_ready <= 0;
				//I_ready <= 0;
				//Preload = 0;
				//reset_n = 0;
				state <= 2'b11; //����״̬4��ɨ�貢����δ���ֹ���Q������LLR
			end
		end
		2'b11://����������ϣ�ɨ�貢����δ���ֹ���Q������LLR
		begin
			if(full)//��һ���������źţ���ʾ�Ѿ����ˣ����Կ�ʼ��һ�֡���λ
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
				To_Sorter_IndexA_In = 0; //�������±��Ѿ�û�������ˣ�������ֵ������
				To_Sorter_IndexI_In = 0;
				scan_val = scan_val + 1;
			end
		end
		endcase
	end
	

endmodule
