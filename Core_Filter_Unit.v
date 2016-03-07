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
	 
	 /*参数定义*/ 
	 //parameter Depth = (2**(Counter_Width+1)-1) ;          //A向量和I向量的单元个数
	 //parameter LLR_Width = 5;       //LLR的宽度
	 parameter Q_Width = 6;         //Q的宽度
	 //parameter Counter_Width = 4;   //计数器的宽度
	/*参数定义*/ 
	
	/*always@(posedge clk)
	begin
		if(Input_ID == 0) //这个位是空的
			Output_Save = 1;
		else if(Input_ID == 1)
			Output_Save = |(Input_Q1^Input_Q2); //先按位异或，然后 缩位 或运算，如果两Q相同，则异或后为全0，或运算后输出为0
	end*/
	
	//写成上面这种时序电路的形式，会使得整个模块延迟2个时钟，丢失前两个时钟的数据
	//改成下面这种组合电路的形式，可以减少1个时钟的延迟
	
	assign Output_Save = (Input_ID==1) ? (|(Input_Q1^Input_Q2)) : 1 ;


endmodule
