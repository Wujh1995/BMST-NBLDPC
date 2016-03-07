module TestBenchCode;

	// Inputs
	reg clk;
	reg write_A;
	reg[6:0] Input_LLR_A;
	reg[5:0] Input_Q_A;
	reg write_I;
	reg[6:0] Input_LLR_I;
	reg[5:0] Input_Q_I;
	reg receivable;
	reg force_reset_n;
	// Outputs
	wire A_ready;
	wire I_ready;
	wire Output_Valid;
	wire[6:0] Output_LLR;
	wire[5:0] Output_Q;
	wire full;
	// Instantiate the Unit Under Test(UUT)
	Single_Check_Node uut(
		.clk(clk),
		.write_A(write_A),
		.Input_LLR_A(Input_LLR_A),
		.Input_Q_A(Input_Q_A),
		.write_I(write_I),
		.Input_LLR_I(Input_LLR_I),
		.Input_Q_I(Input_Q_I),
		.receivable(receivable),
		.A_ready(A_ready),
		.I_ready(I_ready),
		.Output_Valid(Output_Valid),
		.Output_LLR(Output_LLR),
		.Output_Q(Output_Q),
		.full(full),
		.force_reset_n(force_reset_n)
		);

	reg[4:0] LLRbuffer;
	reg[5:0] Qbuffer;

	integer out_LLR_file;
		integer out_Q_file; 

reg [6:0] LLR_in_A [31:0];
reg[5:0] Q_in_A[31:0];
reg[6:0] LLR_in_I[31:0];
reg[5:0] Q_in_I[31:0]; 


integer i = 0;

initial begin
// Initialize Inputs
clk = 0;
#100;
forever #20 clk = ~clk;
end
initial begin
write_A = 0;
Input_LLR_A = 0;
Input_Q_A = 0;
write_I = 0;
Input_LLR_I = 0;
Input_Q_I = 0;
receivable = 1;
force_reset_n = 1;
#140;

$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_0.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_0.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_0.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_0.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_0.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_0.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_1.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_1.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_1.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_1.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_1.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_1.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_2.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_2.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_2.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_2.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_2.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_2.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_3.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_3.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_3.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_3.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_3.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_3.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_4.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_4.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_4.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_4.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_4.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_4.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_5.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_5.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_5.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_5.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_5.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_5.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_6.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_6.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_6.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_6.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_6.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_6.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_7.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_7.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_7.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_7.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_7.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_7.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_8.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_8.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_8.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_8.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_8.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_8.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_9.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_9.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_9.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_9.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_9.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_9.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_10.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_10.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_10.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_10.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_10.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_10.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_11.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_11.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_11.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_11.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_11.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_11.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_12.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_12.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_12.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_12.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_12.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_12.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_13.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_13.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_13.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_13.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_13.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_13.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_14.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_14.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_14.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_14.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_14.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_14.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_15.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_15.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_15.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_15.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_15.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_15.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_16.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_16.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_16.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_16.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_16.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_16.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_17.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_17.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_17.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_17.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_17.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_17.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_18.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_18.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_18.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_18.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_18.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_18.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_19.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_19.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_19.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_19.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_19.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_19.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_20.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_20.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_20.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_20.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_20.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_20.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_21.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_21.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_21.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_21.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_21.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_21.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_22.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_22.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_22.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_22.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_22.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_22.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_23.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_23.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_23.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_23.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_23.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_23.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_24.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_24.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_24.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_24.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_24.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_24.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_25.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_25.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_25.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_25.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_25.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_25.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_26.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_26.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_26.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_26.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_26.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_26.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_27.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_27.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_27.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_27.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_27.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_27.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_28.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_28.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_28.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_28.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_28.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_28.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_29.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_29.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_29.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_29.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_29.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_29.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_30.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_30.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_30.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_30.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_30.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_30.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_31.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_31.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_31.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_31.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_31.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_31.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_32.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_32.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_32.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_32.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_32.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_32.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_33.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_33.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_33.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_33.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_33.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_33.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_34.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_34.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_34.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_34.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_34.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_34.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_35.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_35.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_35.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_35.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_35.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_35.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_36.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_36.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_36.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_36.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_36.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_36.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_37.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_37.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_37.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_37.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_37.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_37.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_38.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_38.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_38.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_38.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_38.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_38.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_39.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_39.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_39.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_39.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_39.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_39.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_40.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_40.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_40.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_40.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_40.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_40.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_41.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_41.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_41.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_41.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_41.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_41.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_42.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_42.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_42.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_42.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_42.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_42.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_43.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_43.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_43.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_43.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_43.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_43.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_44.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_44.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_44.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_44.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_44.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_44.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_45.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_45.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_45.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_45.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_45.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_45.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_46.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_46.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_46.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_46.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_46.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_46.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_47.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_47.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_47.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_47.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_47.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_47.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_48.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_48.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_48.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_48.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_48.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_48.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_49.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_49.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_49.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_49.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_49.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_49.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_50.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_50.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_50.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_50.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_50.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_50.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_51.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_51.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_51.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_51.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_51.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_51.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_52.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_52.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_52.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_52.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_52.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_52.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_53.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_53.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_53.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_53.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_53.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_53.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_54.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_54.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_54.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_54.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_54.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_54.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_55.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_55.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_55.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_55.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_55.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_55.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_56.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_56.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_56.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_56.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_56.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_56.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_57.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_57.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_57.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_57.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_57.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_57.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_58.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_58.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_58.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_58.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_58.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_58.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_59.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_59.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_59.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_59.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_59.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_59.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_60.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_60.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_60.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_60.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_60.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_60.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_61.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_61.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_61.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_61.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_61.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_61.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_62.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_62.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_62.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_62.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_62.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_62.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_63.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_63.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_63.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_63.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_63.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_63.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_64.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_64.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_64.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_64.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_64.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_64.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_65.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_65.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_65.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_65.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_65.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_65.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_66.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_66.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_66.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_66.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_66.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_66.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_67.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_67.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_67.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_67.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_67.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_67.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_68.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_68.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_68.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_68.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_68.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_68.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_69.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_69.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_69.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_69.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_69.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_69.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_70.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_70.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_70.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_70.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_70.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_70.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_71.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_71.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_71.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_71.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_71.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_71.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_72.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_72.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_72.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_72.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_72.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_72.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_73.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_73.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_73.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_73.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_73.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_73.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_74.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_74.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_74.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_74.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_74.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_74.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_75.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_75.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_75.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_75.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_75.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_75.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_76.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_76.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_76.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_76.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_76.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_76.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_77.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_77.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_77.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_77.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_77.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_77.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_78.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_78.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_78.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_78.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_78.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_78.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_79.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_79.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_79.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_79.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_79.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_79.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_80.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_80.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_80.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_80.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_80.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_80.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_81.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_81.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_81.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_81.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_81.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_81.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_82.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_82.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_82.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_82.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_82.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_82.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_83.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_83.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_83.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_83.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_83.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_83.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_84.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_84.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_84.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_84.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_84.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_84.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_85.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_85.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_85.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_85.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_85.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_85.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_86.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_86.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_86.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_86.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_86.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_86.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_87.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_87.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_87.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_87.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_87.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_87.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_88.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_88.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_88.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_88.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_88.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_88.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_89.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_89.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_89.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_89.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_89.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_89.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_90.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_90.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_90.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_90.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_90.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_90.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_91.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_91.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_91.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_91.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_91.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_91.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_92.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_92.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_92.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_92.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_92.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_92.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_93.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_93.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_93.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_93.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_93.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_93.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_94.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_94.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_94.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_94.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_94.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_94.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_95.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_95.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_95.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_95.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_95.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_95.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_96.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_96.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_96.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_96.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_96.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_96.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_97.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_97.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_97.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_97.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_97.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_97.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_98.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_98.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_98.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_98.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_98.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_98.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_99.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_99.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_99.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_99.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_99.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_99.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_100.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_100.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_100.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_100.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_100.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_100.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_101.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_101.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_101.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_101.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_101.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_101.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_102.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_102.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_102.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_102.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_102.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_102.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_103.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_103.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_103.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_103.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_103.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_103.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_104.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_104.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_104.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_104.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_104.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_104.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_105.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_105.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_105.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_105.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_105.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_105.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_106.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_106.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_106.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_106.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_106.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_106.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_107.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_107.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_107.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_107.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_107.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_107.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_108.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_108.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_108.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_108.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_108.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_108.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_109.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_109.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_109.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_109.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_109.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_109.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_110.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_110.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_110.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_110.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_110.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_110.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_111.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_111.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_111.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_111.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_111.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_111.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_112.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_112.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_112.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_112.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_112.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_112.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_113.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_113.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_113.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_113.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_113.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_113.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_114.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_114.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_114.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_114.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_114.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_114.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_115.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_115.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_115.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_115.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_115.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_115.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_116.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_116.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_116.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_116.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_116.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_116.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_117.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_117.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_117.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_117.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_117.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_117.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_118.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_118.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_118.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_118.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_118.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_118.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_119.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_119.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_119.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_119.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_119.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_119.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_120.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_120.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_120.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_120.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_120.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_120.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_121.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_121.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_121.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_121.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_121.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_121.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_122.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_122.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_122.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_122.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_122.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_122.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_123.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_123.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_123.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_123.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_123.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_123.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_124.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_124.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_124.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_124.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_124.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_124.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_125.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_125.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_125.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_125.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_125.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_125.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_126.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_126.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_126.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_126.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_126.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_126.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_127.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_127.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_127.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_127.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_127.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_127.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_128.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_128.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_128.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_128.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_128.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_128.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_129.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_129.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_129.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_129.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_129.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_129.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_130.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_130.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_130.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_130.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_130.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_130.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_131.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_131.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_131.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_131.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_131.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_131.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_132.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_132.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_132.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_132.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_132.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_132.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_133.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_133.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_133.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_133.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_133.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_133.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_134.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_134.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_134.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_134.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_134.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_134.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_135.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_135.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_135.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_135.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_135.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_135.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_136.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_136.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_136.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_136.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_136.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_136.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_137.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_137.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_137.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_137.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_137.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_137.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_138.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_138.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_138.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_138.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_138.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_138.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_139.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_139.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_139.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_139.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_139.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_139.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_140.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_140.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_140.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_140.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_140.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_140.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_141.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_141.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_141.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_141.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_141.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_141.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_142.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_142.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_142.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_142.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_142.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_142.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_143.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_143.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_143.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_143.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_143.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_143.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_144.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_144.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_144.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_144.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_144.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_144.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_145.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_145.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_145.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_145.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_145.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_145.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_146.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_146.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_146.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_146.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_146.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_146.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_147.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_147.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_147.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_147.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_147.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_147.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_148.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_148.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_148.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_148.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_148.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_148.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_149.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_149.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_149.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_149.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_149.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_149.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_150.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_150.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_150.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_150.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_150.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_150.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_151.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_151.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_151.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_151.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_151.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_151.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_152.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_152.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_152.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_152.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_152.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_152.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_153.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_153.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_153.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_153.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_153.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_153.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_154.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_154.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_154.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_154.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_154.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_154.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_155.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_155.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_155.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_155.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_155.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_155.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_156.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_156.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_156.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_156.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_156.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_156.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_157.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_157.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_157.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_157.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_157.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_157.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_158.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_158.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_158.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_158.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_158.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_158.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_159.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_159.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_159.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_159.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_159.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_159.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_160.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_160.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_160.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_160.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_160.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_160.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_161.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_161.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_161.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_161.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_161.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_161.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_162.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_162.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_162.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_162.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_162.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_162.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_163.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_163.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_163.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_163.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_163.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_163.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_164.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_164.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_164.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_164.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_164.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_164.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_165.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_165.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_165.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_165.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_165.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_165.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_166.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_166.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_166.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_166.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_166.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_166.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_167.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_167.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_167.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_167.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_167.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_167.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_168.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_168.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_168.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_168.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_168.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_168.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_169.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_169.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_169.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_169.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_169.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_169.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_170.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_170.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_170.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_170.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_170.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_170.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_171.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_171.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_171.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_171.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_171.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_171.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_172.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_172.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_172.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_172.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_172.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_172.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_173.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_173.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_173.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_173.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_173.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_173.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_174.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_174.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_174.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_174.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_174.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_174.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_175.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_175.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_175.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_175.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_175.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_175.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_176.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_176.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_176.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_176.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_176.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_176.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_177.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_177.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_177.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_177.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_177.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_177.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_178.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_178.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_178.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_178.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_178.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_178.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_179.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_179.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_179.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_179.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_179.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_179.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_180.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_180.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_180.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_180.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_180.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_180.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_181.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_181.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_181.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_181.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_181.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_181.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_182.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_182.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_182.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_182.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_182.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_182.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_183.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_183.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_183.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_183.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_183.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_183.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_184.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_184.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_184.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_184.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_184.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_184.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_185.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_185.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_185.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_185.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_185.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_185.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_186.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_186.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_186.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_186.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_186.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_186.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_187.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_187.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_187.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_187.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_187.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_187.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_188.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_188.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_188.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_188.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_188.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_188.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_189.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_189.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_189.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_189.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_189.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_189.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_190.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_190.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_190.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_190.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_190.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_190.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_191.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_191.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_191.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_191.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_191.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_191.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_192.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_192.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_192.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_192.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_192.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_192.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_193.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_193.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_193.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_193.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_193.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_193.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_194.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_194.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_194.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_194.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_194.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_194.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_195.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_195.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_195.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_195.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_195.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_195.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_196.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_196.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_196.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_196.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_196.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_196.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_197.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_197.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_197.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_197.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_197.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_197.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_198.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_198.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_198.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_198.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_198.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_198.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_199.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_199.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_199.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_199.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_199.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_199.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_200.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_200.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_200.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_200.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_200.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_200.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_201.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_201.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_201.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_201.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_201.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_201.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_202.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_202.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_202.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_202.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_202.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_202.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_203.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_203.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_203.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_203.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_203.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_203.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_204.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_204.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_204.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_204.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_204.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_204.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_205.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_205.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_205.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_205.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_205.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_205.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_206.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_206.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_206.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_206.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_206.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_206.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_207.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_207.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_207.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_207.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_207.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_207.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_208.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_208.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_208.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_208.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_208.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_208.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_209.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_209.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_209.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_209.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_209.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_209.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_210.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_210.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_210.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_210.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_210.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_210.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_211.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_211.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_211.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_211.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_211.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_211.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_212.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_212.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_212.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_212.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_212.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_212.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_213.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_213.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_213.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_213.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_213.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_213.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_214.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_214.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_214.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_214.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_214.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_214.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_215.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_215.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_215.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_215.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_215.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_215.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_216.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_216.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_216.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_216.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_216.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_216.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_217.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_217.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_217.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_217.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_217.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_217.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_218.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_218.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_218.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_218.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_218.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_218.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_219.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_219.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_219.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_219.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_219.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_219.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_220.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_220.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_220.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_220.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_220.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_220.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_221.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_221.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_221.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_221.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_221.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_221.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_222.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_222.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_222.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_222.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_222.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_222.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_223.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_223.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_223.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_223.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_223.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_223.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_224.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_224.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_224.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_224.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_224.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_224.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_225.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_225.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_225.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_225.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_225.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_225.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_226.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_226.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_226.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_226.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_226.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_226.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_227.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_227.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_227.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_227.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_227.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_227.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_228.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_228.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_228.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_228.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_228.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_228.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_229.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_229.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_229.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_229.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_229.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_229.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_230.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_230.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_230.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_230.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_230.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_230.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_231.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_231.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_231.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_231.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_231.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_231.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_232.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_232.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_232.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_232.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_232.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_232.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_233.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_233.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_233.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_233.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_233.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_233.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_234.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_234.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_234.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_234.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_234.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_234.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_235.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_235.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_235.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_235.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_235.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_235.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_236.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_236.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_236.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_236.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_236.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_236.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_237.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_237.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_237.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_237.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_237.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_237.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_238.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_238.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_238.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_238.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_238.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_238.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_239.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_239.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_239.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_239.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_239.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_239.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_240.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_240.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_240.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_240.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_240.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_240.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_241.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_241.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_241.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_241.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_241.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_241.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_242.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_242.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_242.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_242.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_242.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_242.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_243.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_243.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_243.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_243.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_243.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_243.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_244.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_244.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_244.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_244.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_244.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_244.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_245.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_245.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_245.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_245.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_245.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_245.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_246.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_246.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_246.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_246.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_246.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_246.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_247.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_247.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_247.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_247.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_247.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_247.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_248.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_248.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_248.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_248.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_248.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_248.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_249.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_249.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_249.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_249.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_249.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_249.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_250.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_250.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_250.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_250.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_250.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_250.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_251.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_251.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_251.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_251.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_251.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_251.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_252.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_252.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_252.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_252.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_252.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_252.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_253.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_253.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_253.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_253.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_253.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_253.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_254.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_254.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_254.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_254.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_254.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_254.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_255.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_255.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_255.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_255.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_255.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_255.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_256.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_256.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_256.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_256.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_256.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_256.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_257.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_257.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_257.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_257.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_257.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_257.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_258.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_258.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_258.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_258.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_258.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_258.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_259.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_259.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_259.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_259.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_259.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_259.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_260.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_260.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_260.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_260.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_260.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_260.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_261.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_261.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_261.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_261.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_261.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_261.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_262.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_262.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_262.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_262.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_262.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_262.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_263.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_263.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_263.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_263.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_263.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_263.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_264.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_264.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_264.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_264.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_264.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_264.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_265.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_265.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_265.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_265.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_265.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_265.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_266.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_266.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_266.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_266.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_266.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_266.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_267.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_267.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_267.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_267.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_267.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_267.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_268.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_268.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_268.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_268.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_268.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_268.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_269.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_269.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_269.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_269.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_269.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_269.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_270.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_270.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_270.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_270.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_270.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_270.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_271.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_271.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_271.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_271.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_271.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_271.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_272.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_272.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_272.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_272.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_272.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_272.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_273.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_273.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_273.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_273.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_273.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_273.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_274.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_274.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_274.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_274.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_274.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_274.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_275.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_275.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_275.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_275.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_275.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_275.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_276.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_276.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_276.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_276.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_276.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_276.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_277.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_277.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_277.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_277.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_277.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_277.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_278.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_278.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_278.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_278.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_278.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_278.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_279.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_279.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_279.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_279.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_279.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_279.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_280.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_280.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_280.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_280.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_280.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_280.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_281.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_281.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_281.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_281.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_281.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_281.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_282.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_282.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_282.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_282.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_282.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_282.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_283.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_283.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_283.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_283.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_283.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_283.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_284.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_284.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_284.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_284.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_284.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_284.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_285.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_285.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_285.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_285.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_285.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_285.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_286.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_286.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_286.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_286.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_286.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_286.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_287.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_287.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_287.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_287.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_287.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_287.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_288.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_288.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_288.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_288.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_288.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_288.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_289.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_289.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_289.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_289.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_289.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_289.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_290.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_290.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_290.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_290.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_290.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_290.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_291.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_291.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_291.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_291.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_291.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_291.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_292.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_292.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_292.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_292.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_292.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_292.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_293.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_293.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_293.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_293.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_293.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_293.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_294.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_294.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_294.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_294.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_294.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_294.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_295.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_295.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_295.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_295.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_295.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_295.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_296.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_296.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_296.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_296.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_296.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_296.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_297.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_297.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_297.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_297.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_297.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_297.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_298.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_298.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_298.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_298.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_298.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_298.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_299.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_299.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_299.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_299.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_299.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_299.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_300.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_300.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_300.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_300.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_300.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_300.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_301.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_301.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_301.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_301.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_301.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_301.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_302.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_302.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_302.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_302.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_302.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_302.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_303.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_303.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_303.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_303.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_303.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_303.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_304.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_304.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_304.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_304.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_304.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_304.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_305.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_305.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_305.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_305.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_305.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_305.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_306.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_306.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_306.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_306.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_306.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_306.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_307.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_307.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_307.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_307.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_307.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_307.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_308.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_308.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_308.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_308.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_308.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_308.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_309.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_309.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_309.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_309.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_309.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_309.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_310.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_310.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_310.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_310.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_310.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_310.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_311.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_311.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_311.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_311.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_311.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_311.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_312.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_312.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_312.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_312.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_312.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_312.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_313.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_313.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_313.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_313.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_313.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_313.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_314.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_314.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_314.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_314.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_314.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_314.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_315.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_315.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_315.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_315.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_315.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_315.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_316.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_316.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_316.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_316.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_316.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_316.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_317.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_317.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_317.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_317.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_317.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_317.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_318.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_318.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_318.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_318.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_318.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_318.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_319.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_319.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_319.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_319.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_319.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_319.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_320.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_320.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_320.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_320.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_320.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_320.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_321.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_321.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_321.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_321.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_321.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_321.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_322.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_322.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_322.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_322.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_322.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_322.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_323.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_323.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_323.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_323.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_323.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_323.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_324.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_324.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_324.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_324.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_324.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_324.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_325.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_325.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_325.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_325.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_325.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_325.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_326.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_326.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_326.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_326.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_326.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_326.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_327.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_327.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_327.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_327.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_327.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_327.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_328.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_328.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_328.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_328.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_328.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_328.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_329.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_329.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_329.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_329.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_329.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_329.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_330.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_330.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_330.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_330.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_330.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_330.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_331.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_331.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_331.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_331.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_331.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_331.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_332.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_332.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_332.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_332.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_332.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_332.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_333.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_333.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_333.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_333.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_333.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_333.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_334.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_334.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_334.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_334.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_334.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_334.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_335.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_335.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_335.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_335.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_335.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_335.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_336.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_336.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_336.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_336.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_336.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_336.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_337.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_337.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_337.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_337.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_337.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_337.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_338.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_338.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_338.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_338.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_338.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_338.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_339.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_339.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_339.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_339.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_339.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_339.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_340.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_340.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_340.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_340.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_340.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_340.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_341.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_341.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_341.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_341.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_341.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_341.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_342.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_342.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_342.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_342.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_342.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_342.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_343.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_343.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_343.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_343.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_343.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_343.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_344.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_344.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_344.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_344.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_344.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_344.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_345.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_345.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_345.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_345.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_345.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_345.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_346.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_346.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_346.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_346.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_346.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_346.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_347.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_347.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_347.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_347.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_347.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_347.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_348.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_348.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_348.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_348.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_348.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_348.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_349.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_349.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_349.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_349.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_349.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_349.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_350.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_350.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_350.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_350.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_350.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_350.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_351.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_351.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_351.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_351.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_351.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_351.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_352.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_352.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_352.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_352.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_352.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_352.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_353.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_353.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_353.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_353.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_353.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_353.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_354.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_354.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_354.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_354.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_354.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_354.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_355.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_355.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_355.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_355.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_355.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_355.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_356.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_356.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_356.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_356.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_356.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_356.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_357.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_357.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_357.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_357.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_357.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_357.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_358.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_358.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_358.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_358.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_358.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_358.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_359.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_359.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_359.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_359.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_359.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_359.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_360.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_360.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_360.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_360.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_360.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_360.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_361.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_361.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_361.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_361.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_361.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_361.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_362.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_362.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_362.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_362.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_362.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_362.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_363.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_363.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_363.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_363.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_363.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_363.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_364.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_364.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_364.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_364.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_364.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_364.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_365.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_365.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_365.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_365.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_365.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_365.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_366.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_366.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_366.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_366.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_366.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_366.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_367.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_367.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_367.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_367.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_367.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_367.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_368.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_368.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_368.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_368.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_368.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_368.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_369.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_369.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_369.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_369.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_369.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_369.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_370.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_370.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_370.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_370.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_370.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_370.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_371.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_371.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_371.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_371.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_371.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_371.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_372.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_372.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_372.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_372.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_372.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_372.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_373.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_373.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_373.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_373.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_373.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_373.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_374.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_374.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_374.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_374.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_374.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_374.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_375.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_375.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_375.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_375.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_375.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_375.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_376.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_376.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_376.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_376.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_376.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_376.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_377.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_377.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_377.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_377.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_377.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_377.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_378.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_378.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_378.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_378.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_378.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_378.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_379.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_379.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_379.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_379.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_379.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_379.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_380.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_380.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_380.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_380.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_380.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_380.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_381.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_381.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_381.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_381.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_381.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_381.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_382.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_382.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_382.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_382.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_382.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_382.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_383.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_383.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_383.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_383.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_383.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_383.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_384.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_384.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_384.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_384.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_384.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_384.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_385.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_385.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_385.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_385.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_385.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_385.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_386.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_386.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_386.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_386.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_386.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_386.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_387.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_387.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_387.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_387.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_387.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_387.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_388.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_388.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_388.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_388.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_388.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_388.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_389.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_389.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_389.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_389.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_389.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_389.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_390.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_390.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_390.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_390.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_390.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_390.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_391.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_391.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_391.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_391.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_391.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_391.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_392.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_392.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_392.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_392.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_392.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_392.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_393.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_393.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_393.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_393.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_393.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_393.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_394.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_394.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_394.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_394.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_394.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_394.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_395.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_395.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_395.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_395.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_395.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_395.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_396.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_396.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_396.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_396.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_396.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_396.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_397.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_397.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_397.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_397.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_397.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_397.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_398.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_398.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_398.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_398.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_398.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_398.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_399.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_399.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_399.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_399.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_399.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_399.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_400.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_400.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_400.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_400.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_400.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_400.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_401.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_401.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_401.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_401.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_401.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_401.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_402.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_402.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_402.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_402.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_402.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_402.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_403.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_403.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_403.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_403.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_403.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_403.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_404.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_404.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_404.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_404.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_404.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_404.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_405.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_405.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_405.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_405.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_405.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_405.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_406.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_406.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_406.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_406.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_406.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_406.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_407.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_407.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_407.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_407.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_407.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_407.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_408.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_408.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_408.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_408.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_408.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_408.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_409.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_409.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_409.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_409.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_409.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_409.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_410.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_410.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_410.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_410.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_410.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_410.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_411.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_411.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_411.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_411.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_411.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_411.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_412.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_412.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_412.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_412.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_412.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_412.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_413.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_413.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_413.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_413.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_413.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_413.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_414.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_414.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_414.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_414.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_414.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_414.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_415.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_415.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_415.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_415.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_415.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_415.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_416.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_416.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_416.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_416.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_416.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_416.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_417.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_417.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_417.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_417.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_417.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_417.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_418.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_418.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_418.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_418.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_418.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_418.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_419.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_419.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_419.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_419.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_419.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_419.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_420.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_420.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_420.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_420.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_420.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_420.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_421.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_421.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_421.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_421.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_421.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_421.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_422.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_422.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_422.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_422.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_422.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_422.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_423.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_423.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_423.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_423.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_423.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_423.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_424.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_424.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_424.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_424.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_424.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_424.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_425.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_425.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_425.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_425.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_425.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_425.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_426.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_426.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_426.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_426.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_426.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_426.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_427.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_427.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_427.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_427.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_427.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_427.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_428.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_428.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_428.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_428.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_428.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_428.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_429.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_429.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_429.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_429.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_429.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_429.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_430.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_430.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_430.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_430.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_430.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_430.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_431.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_431.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_431.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_431.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_431.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_431.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_432.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_432.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_432.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_432.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_432.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_432.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_433.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_433.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_433.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_433.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_433.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_433.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_434.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_434.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_434.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_434.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_434.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_434.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_435.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_435.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_435.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_435.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_435.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_435.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_436.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_436.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_436.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_436.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_436.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_436.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_437.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_437.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_437.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_437.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_437.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_437.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_438.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_438.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_438.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_438.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_438.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_438.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_439.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_439.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_439.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_439.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_439.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_439.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_440.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_440.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_440.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_440.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_440.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_440.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_441.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_441.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_441.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_441.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_441.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_441.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_442.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_442.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_442.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_442.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_442.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_442.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_443.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_443.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_443.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_443.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_443.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_443.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_444.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_444.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_444.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_444.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_444.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_444.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_445.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_445.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_445.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_445.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_445.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_445.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_446.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_446.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_446.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_446.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_446.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_446.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_447.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_447.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_447.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_447.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_447.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_447.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_448.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_448.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_448.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_448.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_448.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_448.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_449.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_449.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_449.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_449.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_449.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_449.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_450.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_450.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_450.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_450.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_450.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_450.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_451.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_451.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_451.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_451.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_451.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_451.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_452.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_452.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_452.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_452.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_452.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_452.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_453.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_453.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_453.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_453.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_453.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_453.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_454.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_454.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_454.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_454.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_454.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_454.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_455.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_455.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_455.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_455.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_455.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_455.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_456.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_456.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_456.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_456.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_456.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_456.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_457.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_457.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_457.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_457.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_457.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_457.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_458.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_458.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_458.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_458.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_458.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_458.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_459.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_459.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_459.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_459.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_459.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_459.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_460.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_460.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_460.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_460.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_460.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_460.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_461.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_461.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_461.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_461.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_461.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_461.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_462.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_462.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_462.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_462.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_462.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_462.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_463.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_463.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_463.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_463.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_463.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_463.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_464.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_464.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_464.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_464.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_464.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_464.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_465.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_465.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_465.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_465.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_465.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_465.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_466.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_466.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_466.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_466.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_466.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_466.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_467.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_467.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_467.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_467.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_467.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_467.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_468.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_468.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_468.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_468.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_468.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_468.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_469.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_469.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_469.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_469.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_469.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_469.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_470.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_470.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_470.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_470.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_470.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_470.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_471.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_471.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_471.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_471.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_471.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_471.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_472.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_472.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_472.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_472.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_472.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_472.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_473.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_473.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_473.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_473.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_473.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_473.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_474.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_474.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_474.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_474.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_474.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_474.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_475.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_475.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_475.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_475.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_475.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_475.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_476.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_476.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_476.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_476.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_476.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_476.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_477.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_477.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_477.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_477.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_477.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_477.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_478.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_478.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_478.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_478.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_478.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_478.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_479.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_479.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_479.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_479.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_479.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_479.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_480.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_480.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_480.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_480.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_480.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_480.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_481.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_481.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_481.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_481.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_481.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_481.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_482.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_482.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_482.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_482.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_482.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_482.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_483.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_483.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_483.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_483.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_483.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_483.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_484.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_484.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_484.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_484.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_484.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_484.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_485.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_485.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_485.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_485.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_485.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_485.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_486.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_486.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_486.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_486.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_486.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_486.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_487.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_487.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_487.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_487.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_487.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_487.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_488.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_488.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_488.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_488.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_488.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_488.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_489.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_489.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_489.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_489.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_489.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_489.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_490.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_490.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_490.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_490.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_490.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_490.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_491.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_491.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_491.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_491.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_491.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_491.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_492.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_492.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_492.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_492.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_492.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_492.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_493.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_493.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_493.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_493.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_493.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_493.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_494.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_494.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_494.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_494.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_494.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_494.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_495.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_495.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_495.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_495.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_495.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_495.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_496.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_496.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_496.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_496.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_496.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_496.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_497.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_497.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_497.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_497.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_497.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_497.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_498.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_498.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_498.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_498.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_498.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_498.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_499.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_499.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_499.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_499.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_499.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_499.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_500.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_500.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_500.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_500.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_500.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_500.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_501.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_501.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_501.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_501.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_501.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_501.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_502.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_502.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_502.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_502.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_502.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_502.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_503.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_503.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_503.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_503.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_503.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_503.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_504.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_504.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_504.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_504.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_504.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_504.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_505.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_505.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_505.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_505.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_505.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_505.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_506.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_506.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_506.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_506.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_506.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_506.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_507.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_507.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_507.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_507.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_507.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_507.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_508.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_508.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_508.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_508.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_508.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_508.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_509.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_509.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_509.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_509.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_509.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_509.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_510.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_510.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_510.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_510.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_510.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_510.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_511.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_511.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_511.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_511.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_511.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_511.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_512.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_512.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_512.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_512.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_512.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_512.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_513.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_513.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_513.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_513.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_513.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_513.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_514.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_514.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_514.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_514.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_514.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_514.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_515.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_515.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_515.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_515.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_515.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_515.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_516.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_516.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_516.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_516.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_516.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_516.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_517.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_517.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_517.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_517.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_517.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_517.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_518.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_518.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_518.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_518.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_518.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_518.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_519.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_519.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_519.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_519.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_519.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_519.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_520.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_520.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_520.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_520.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_520.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_520.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_521.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_521.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_521.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_521.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_521.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_521.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_522.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_522.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_522.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_522.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_522.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_522.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_523.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_523.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_523.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_523.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_523.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_523.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_524.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_524.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_524.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_524.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_524.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_524.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_525.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_525.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_525.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_525.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_525.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_525.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_526.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_526.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_526.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_526.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_526.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_526.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_527.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_527.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_527.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_527.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_527.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_527.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_528.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_528.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_528.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_528.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_528.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_528.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_529.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_529.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_529.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_529.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_529.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_529.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_530.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_530.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_530.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_530.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_530.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_530.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_531.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_531.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_531.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_531.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_531.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_531.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_532.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_532.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_532.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_532.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_532.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_532.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_533.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_533.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_533.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_533.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_533.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_533.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_534.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_534.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_534.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_534.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_534.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_534.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_535.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_535.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_535.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_535.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_535.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_535.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_536.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_536.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_536.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_536.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_536.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_536.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_537.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_537.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_537.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_537.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_537.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_537.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_538.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_538.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_538.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_538.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_538.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_538.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_539.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_539.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_539.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_539.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_539.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_539.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_540.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_540.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_540.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_540.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_540.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_540.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_541.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_541.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_541.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_541.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_541.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_541.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_542.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_542.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_542.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_542.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_542.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_542.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_543.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_543.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_543.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_543.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_543.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_543.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_544.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_544.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_544.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_544.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_544.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_544.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_545.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_545.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_545.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_545.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_545.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_545.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_546.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_546.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_546.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_546.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_546.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_546.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_547.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_547.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_547.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_547.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_547.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_547.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_548.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_548.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_548.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_548.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_548.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_548.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_549.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_549.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_549.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_549.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_549.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_549.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_550.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_550.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_550.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_550.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_550.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_550.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_551.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_551.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_551.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_551.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_551.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_551.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_552.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_552.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_552.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_552.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_552.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_552.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_553.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_553.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_553.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_553.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_553.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_553.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_554.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_554.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_554.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_554.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_554.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_554.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_555.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_555.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_555.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_555.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_555.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_555.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_556.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_556.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_556.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_556.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_556.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_556.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_557.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_557.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_557.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_557.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_557.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_557.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_558.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_558.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_558.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_558.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_558.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_558.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_559.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_559.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_559.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_559.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_559.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_559.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_560.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_560.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_560.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_560.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_560.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_560.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_561.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_561.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_561.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_561.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_561.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_561.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_562.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_562.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_562.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_562.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_562.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_562.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_563.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_563.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_563.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_563.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_563.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_563.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_564.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_564.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_564.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_564.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_564.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_564.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_565.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_565.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_565.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_565.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_565.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_565.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_566.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_566.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_566.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_566.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_566.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_566.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_567.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_567.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_567.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_567.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_567.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_567.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_568.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_568.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_568.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_568.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_568.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_568.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_569.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_569.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_569.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_569.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_569.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_569.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_570.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_570.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_570.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_570.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_570.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_570.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_571.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_571.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_571.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_571.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_571.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_571.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_572.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_572.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_572.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_572.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_572.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_572.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_573.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_573.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_573.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_573.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_573.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_573.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_574.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_574.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_574.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_574.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_574.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_574.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_575.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_575.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_575.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_575.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_575.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_575.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_576.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_576.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_576.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_576.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_576.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_576.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_577.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_577.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_577.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_577.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_577.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_577.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_578.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_578.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_578.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_578.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_578.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_578.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_579.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_579.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_579.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_579.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_579.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_579.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_580.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_580.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_580.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_580.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_580.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_580.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_581.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_581.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_581.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_581.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_581.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_581.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_582.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_582.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_582.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_582.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_582.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_582.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_583.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_583.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_583.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_583.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_583.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_583.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_584.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_584.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_584.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_584.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_584.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_584.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_585.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_585.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_585.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_585.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_585.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_585.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_586.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_586.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_586.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_586.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_586.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_586.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_587.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_587.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_587.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_587.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_587.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_587.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_588.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_588.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_588.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_588.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_588.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_588.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_589.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_589.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_589.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_589.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_589.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_589.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_590.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_590.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_590.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_590.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_590.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_590.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_591.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_591.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_591.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_591.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_591.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_591.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_592.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_592.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_592.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_592.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_592.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_592.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_593.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_593.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_593.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_593.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_593.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_593.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_594.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_594.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_594.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_594.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_594.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_594.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_595.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_595.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_595.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_595.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_595.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_595.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_596.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_596.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_596.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_596.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_596.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_596.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_597.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_597.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_597.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_597.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_597.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_597.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_598.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_598.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_598.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_598.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_598.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_598.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_599.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_599.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_599.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_599.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_599.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_599.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_600.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_600.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_600.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_600.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_600.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_600.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_601.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_601.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_601.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_601.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_601.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_601.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_602.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_602.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_602.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_602.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_602.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_602.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_603.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_603.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_603.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_603.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_603.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_603.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_604.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_604.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_604.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_604.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_604.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_604.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_605.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_605.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_605.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_605.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_605.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_605.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_606.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_606.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_606.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_606.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_606.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_606.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_607.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_607.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_607.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_607.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_607.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_607.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_608.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_608.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_608.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_608.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_608.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_608.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_609.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_609.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_609.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_609.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_609.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_609.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_610.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_610.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_610.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_610.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_610.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_610.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_611.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_611.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_611.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_611.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_611.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_611.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_612.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_612.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_612.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_612.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_612.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_612.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_613.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_613.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_613.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_613.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_613.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_613.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_614.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_614.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_614.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_614.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_614.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_614.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_615.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_615.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_615.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_615.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_615.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_615.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_616.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_616.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_616.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_616.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_616.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_616.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_617.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_617.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_617.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_617.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_617.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_617.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_618.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_618.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_618.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_618.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_618.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_618.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_619.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_619.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_619.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_619.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_619.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_619.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_620.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_620.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_620.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_620.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_620.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_620.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_621.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_621.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_621.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_621.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_621.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_621.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_622.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_622.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_622.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_622.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_622.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_622.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_623.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_623.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_623.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_623.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_623.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_623.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_624.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_624.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_624.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_624.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_624.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_624.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_625.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_625.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_625.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_625.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_625.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_625.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_626.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_626.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_626.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_626.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_626.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_626.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_627.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_627.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_627.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_627.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_627.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_627.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_628.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_628.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_628.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_628.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_628.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_628.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_629.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_629.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_629.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_629.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_629.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_629.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_630.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_630.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_630.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_630.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_630.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_630.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_631.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_631.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_631.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_631.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_631.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_631.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_632.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_632.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_632.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_632.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_632.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_632.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_633.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_633.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_633.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_633.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_633.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_633.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_634.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_634.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_634.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_634.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_634.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_634.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_635.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_635.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_635.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_635.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_635.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_635.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_636.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_636.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_636.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_636.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_636.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_636.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_637.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_637.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_637.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_637.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_637.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_637.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_638.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_638.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_638.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_638.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_638.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_638.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_639.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_639.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_639.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_639.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_639.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_639.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_640.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_640.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_640.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_640.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_640.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_640.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_641.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_641.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_641.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_641.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_641.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_641.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_642.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_642.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_642.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_642.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_642.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_642.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_643.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_643.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_643.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_643.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_643.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_643.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_644.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_644.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_644.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_644.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_644.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_644.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_645.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_645.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_645.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_645.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_645.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_645.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_646.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_646.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_646.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_646.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_646.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_646.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_647.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_647.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_647.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_647.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_647.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_647.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_648.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_648.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_648.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_648.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_648.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_648.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_649.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_649.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_649.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_649.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_649.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_649.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_650.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_650.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_650.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_650.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_650.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_650.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_651.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_651.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_651.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_651.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_651.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_651.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_652.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_652.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_652.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_652.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_652.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_652.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_653.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_653.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_653.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_653.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_653.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_653.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_654.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_654.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_654.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_654.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_654.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_654.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_655.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_655.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_655.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_655.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_655.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_655.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_656.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_656.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_656.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_656.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_656.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_656.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_657.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_657.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_657.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_657.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_657.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_657.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_658.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_658.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_658.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_658.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_658.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_658.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_659.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_659.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_659.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_659.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_659.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_659.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_660.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_660.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_660.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_660.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_660.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_660.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_661.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_661.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_661.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_661.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_661.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_661.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_662.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_662.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_662.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_662.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_662.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_662.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_663.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_663.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_663.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_663.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_663.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_663.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_664.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_664.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_664.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_664.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_664.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_664.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_665.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_665.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_665.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_665.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_665.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_665.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_666.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_666.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_666.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_666.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_666.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_666.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_667.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_667.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_667.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_667.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_667.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_667.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_668.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_668.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_668.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_668.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_668.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_668.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_669.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_669.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_669.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_669.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_669.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_669.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_670.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_670.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_670.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_670.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_670.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_670.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_671.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_671.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_671.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_671.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_671.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_671.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_672.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_672.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_672.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_672.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_672.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_672.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_673.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_673.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_673.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_673.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_673.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_673.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_674.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_674.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_674.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_674.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_674.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_674.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_675.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_675.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_675.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_675.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_675.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_675.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_676.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_676.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_676.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_676.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_676.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_676.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_677.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_677.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_677.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_677.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_677.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_677.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_678.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_678.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_678.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_678.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_678.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_678.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_679.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_679.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_679.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_679.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_679.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_679.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_680.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_680.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_680.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_680.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_680.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_680.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_681.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_681.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_681.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_681.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_681.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_681.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_682.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_682.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_682.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_682.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_682.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_682.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_683.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_683.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_683.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_683.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_683.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_683.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_684.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_684.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_684.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_684.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_684.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_684.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_685.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_685.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_685.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_685.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_685.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_685.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_686.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_686.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_686.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_686.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_686.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_686.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_687.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_687.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_687.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_687.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_687.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_687.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_688.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_688.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_688.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_688.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_688.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_688.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_689.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_689.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_689.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_689.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_689.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_689.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_690.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_690.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_690.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_690.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_690.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_690.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_691.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_691.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_691.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_691.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_691.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_691.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_692.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_692.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_692.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_692.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_692.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_692.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_693.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_693.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_693.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_693.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_693.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_693.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_694.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_694.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_694.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_694.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_694.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_694.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_695.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_695.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_695.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_695.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_695.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_695.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_696.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_696.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_696.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_696.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_696.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_696.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_697.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_697.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_697.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_697.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_697.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_697.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_698.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_698.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_698.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_698.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_698.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_698.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_699.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_699.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_699.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_699.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_699.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_699.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_700.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_700.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_700.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_700.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_700.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_700.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_701.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_701.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_701.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_701.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_701.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_701.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_702.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_702.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_702.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_702.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_702.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_702.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_703.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_703.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_703.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_703.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_703.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_703.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_704.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_704.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_704.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_704.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_704.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_704.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_705.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_705.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_705.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_705.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_705.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_705.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_706.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_706.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_706.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_706.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_706.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_706.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_707.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_707.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_707.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_707.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_707.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_707.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_708.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_708.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_708.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_708.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_708.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_708.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_709.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_709.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_709.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_709.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_709.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_709.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_710.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_710.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_710.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_710.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_710.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_710.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_711.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_711.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_711.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_711.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_711.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_711.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_712.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_712.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_712.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_712.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_712.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_712.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_713.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_713.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_713.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_713.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_713.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_713.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_714.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_714.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_714.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_714.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_714.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_714.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_715.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_715.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_715.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_715.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_715.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_715.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_716.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_716.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_716.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_716.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_716.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_716.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_717.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_717.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_717.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_717.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_717.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_717.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_718.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_718.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_718.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_718.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_718.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_718.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_719.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_719.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_719.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_719.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_719.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_719.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_720.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_720.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_720.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_720.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_720.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_720.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_721.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_721.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_721.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_721.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_721.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_721.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_722.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_722.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_722.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_722.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_722.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_722.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_723.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_723.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_723.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_723.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_723.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_723.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_724.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_724.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_724.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_724.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_724.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_724.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_725.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_725.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_725.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_725.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_725.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_725.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_726.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_726.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_726.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_726.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_726.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_726.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_727.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_727.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_727.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_727.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_727.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_727.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_728.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_728.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_728.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_728.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_728.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_728.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_729.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_729.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_729.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_729.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_729.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_729.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_730.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_730.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_730.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_730.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_730.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_730.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_731.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_731.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_731.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_731.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_731.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_731.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_732.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_732.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_732.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_732.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_732.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_732.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_733.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_733.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_733.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_733.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_733.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_733.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_734.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_734.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_734.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_734.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_734.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_734.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_735.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_735.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_735.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_735.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_735.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_735.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_736.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_736.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_736.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_736.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_736.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_736.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_737.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_737.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_737.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_737.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_737.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_737.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_738.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_738.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_738.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_738.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_738.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_738.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_739.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_739.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_739.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_739.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_739.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_739.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_740.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_740.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_740.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_740.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_740.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_740.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_741.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_741.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_741.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_741.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_741.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_741.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_742.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_742.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_742.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_742.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_742.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_742.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_743.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_743.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_743.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_743.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_743.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_743.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_744.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_744.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_744.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_744.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_744.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_744.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_745.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_745.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_745.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_745.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_745.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_745.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_746.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_746.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_746.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_746.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_746.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_746.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_747.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_747.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_747.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_747.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_747.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_747.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_748.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_748.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_748.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_748.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_748.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_748.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_749.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_749.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_749.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_749.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_749.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_749.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_750.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_750.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_750.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_750.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_750.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_750.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_751.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_751.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_751.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_751.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_751.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_751.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_752.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_752.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_752.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_752.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_752.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_752.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_753.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_753.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_753.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_753.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_753.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_753.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_754.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_754.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_754.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_754.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_754.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_754.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_755.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_755.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_755.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_755.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_755.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_755.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_756.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_756.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_756.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_756.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_756.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_756.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_757.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_757.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_757.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_757.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_757.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_757.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_758.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_758.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_758.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_758.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_758.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_758.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_759.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_759.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_759.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_759.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_759.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_759.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_760.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_760.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_760.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_760.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_760.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_760.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_761.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_761.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_761.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_761.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_761.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_761.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_762.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_762.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_762.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_762.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_762.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_762.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_763.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_763.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_763.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_763.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_763.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_763.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_764.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_764.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_764.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_764.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_764.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_764.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_765.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_765.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_765.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_765.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_765.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_765.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_766.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_766.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_766.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_766.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_766.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_766.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_767.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_767.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_767.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_767.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_767.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_767.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_768.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_768.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_768.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_768.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_768.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_768.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_769.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_769.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_769.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_769.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_769.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_769.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_770.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_770.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_770.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_770.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_770.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_770.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_771.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_771.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_771.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_771.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_771.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_771.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_772.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_772.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_772.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_772.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_772.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_772.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_773.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_773.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_773.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_773.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_773.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_773.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_774.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_774.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_774.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_774.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_774.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_774.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_775.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_775.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_775.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_775.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_775.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_775.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_776.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_776.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_776.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_776.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_776.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_776.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_777.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_777.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_777.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_777.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_777.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_777.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_778.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_778.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_778.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_778.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_778.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_778.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_779.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_779.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_779.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_779.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_779.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_779.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_780.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_780.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_780.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_780.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_780.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_780.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_781.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_781.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_781.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_781.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_781.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_781.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_782.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_782.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_782.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_782.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_782.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_782.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_783.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_783.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_783.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_783.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_783.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_783.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_784.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_784.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_784.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_784.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_784.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_784.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_785.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_785.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_785.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_785.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_785.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_785.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_786.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_786.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_786.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_786.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_786.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_786.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_787.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_787.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_787.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_787.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_787.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_787.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_788.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_788.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_788.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_788.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_788.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_788.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_789.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_789.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_789.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_789.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_789.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_789.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_790.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_790.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_790.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_790.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_790.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_790.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_791.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_791.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_791.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_791.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_791.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_791.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_792.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_792.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_792.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_792.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_792.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_792.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_793.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_793.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_793.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_793.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_793.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_793.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_794.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_794.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_794.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_794.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_794.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_794.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_795.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_795.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_795.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_795.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_795.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_795.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_796.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_796.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_796.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_796.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_796.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_796.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_797.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_797.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_797.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_797.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_797.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_797.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_798.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_798.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_798.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_798.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_798.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_798.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_799.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_799.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_799.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_799.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_799.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_799.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_800.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_800.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_800.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_800.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_800.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_800.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_801.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_801.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_801.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_801.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_801.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_801.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_802.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_802.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_802.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_802.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_802.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_802.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_803.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_803.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_803.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_803.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_803.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_803.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_804.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_804.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_804.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_804.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_804.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_804.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_805.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_805.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_805.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_805.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_805.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_805.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_806.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_806.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_806.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_806.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_806.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_806.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_807.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_807.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_807.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_807.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_807.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_807.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_808.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_808.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_808.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_808.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_808.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_808.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_809.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_809.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_809.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_809.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_809.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_809.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_810.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_810.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_810.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_810.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_810.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_810.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_811.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_811.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_811.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_811.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_811.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_811.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_812.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_812.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_812.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_812.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_812.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_812.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_813.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_813.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_813.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_813.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_813.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_813.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_814.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_814.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_814.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_814.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_814.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_814.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_815.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_815.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_815.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_815.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_815.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_815.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_816.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_816.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_816.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_816.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_816.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_816.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_817.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_817.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_817.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_817.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_817.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_817.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_818.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_818.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_818.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_818.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_818.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_818.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_819.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_819.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_819.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_819.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_819.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_819.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_820.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_820.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_820.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_820.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_820.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_820.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_821.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_821.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_821.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_821.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_821.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_821.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_822.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_822.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_822.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_822.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_822.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_822.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_823.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_823.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_823.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_823.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_823.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_823.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_824.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_824.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_824.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_824.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_824.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_824.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_825.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_825.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_825.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_825.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_825.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_825.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_826.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_826.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_826.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_826.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_826.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_826.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_827.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_827.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_827.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_827.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_827.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_827.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_828.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_828.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_828.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_828.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_828.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_828.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_829.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_829.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_829.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_829.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_829.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_829.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_830.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_830.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_830.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_830.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_830.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_830.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_831.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_831.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_831.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_831.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_831.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_831.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_832.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_832.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_832.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_832.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_832.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_832.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_833.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_833.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_833.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_833.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_833.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_833.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_834.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_834.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_834.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_834.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_834.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_834.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_835.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_835.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_835.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_835.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_835.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_835.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_836.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_836.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_836.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_836.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_836.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_836.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_837.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_837.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_837.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_837.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_837.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_837.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_838.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_838.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_838.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_838.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_838.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_838.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_839.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_839.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_839.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_839.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_839.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_839.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_840.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_840.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_840.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_840.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_840.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_840.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_841.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_841.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_841.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_841.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_841.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_841.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_842.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_842.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_842.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_842.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_842.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_842.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_843.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_843.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_843.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_843.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_843.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_843.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_844.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_844.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_844.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_844.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_844.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_844.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_845.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_845.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_845.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_845.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_845.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_845.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_846.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_846.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_846.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_846.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_846.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_846.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_847.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_847.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_847.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_847.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_847.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_847.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_848.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_848.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_848.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_848.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_848.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_848.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_849.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_849.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_849.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_849.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_849.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_849.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_850.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_850.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_850.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_850.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_850.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_850.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_851.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_851.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_851.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_851.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_851.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_851.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_852.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_852.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_852.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_852.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_852.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_852.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_853.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_853.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_853.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_853.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_853.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_853.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_854.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_854.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_854.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_854.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_854.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_854.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_855.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_855.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_855.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_855.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_855.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_855.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_856.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_856.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_856.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_856.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_856.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_856.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_857.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_857.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_857.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_857.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_857.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_857.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_858.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_858.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_858.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_858.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_858.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_858.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_859.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_859.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_859.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_859.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_859.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_859.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_860.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_860.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_860.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_860.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_860.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_860.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_861.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_861.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_861.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_861.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_861.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_861.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_862.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_862.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_862.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_862.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_862.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_862.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_863.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_863.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_863.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_863.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_863.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_863.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_864.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_864.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_864.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_864.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_864.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_864.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_865.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_865.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_865.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_865.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_865.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_865.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_866.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_866.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_866.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_866.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_866.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_866.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_867.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_867.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_867.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_867.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_867.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_867.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_868.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_868.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_868.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_868.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_868.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_868.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_869.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_869.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_869.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_869.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_869.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_869.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_870.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_870.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_870.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_870.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_870.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_870.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_871.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_871.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_871.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_871.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_871.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_871.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_872.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_872.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_872.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_872.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_872.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_872.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_873.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_873.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_873.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_873.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_873.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_873.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_874.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_874.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_874.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_874.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_874.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_874.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_875.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_875.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_875.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_875.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_875.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_875.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_876.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_876.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_876.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_876.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_876.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_876.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_877.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_877.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_877.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_877.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_877.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_877.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_878.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_878.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_878.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_878.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_878.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_878.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_879.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_879.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_879.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_879.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_879.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_879.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_880.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_880.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_880.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_880.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_880.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_880.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_881.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_881.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_881.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_881.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_881.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_881.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_882.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_882.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_882.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_882.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_882.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_882.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_883.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_883.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_883.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_883.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_883.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_883.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_884.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_884.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_884.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_884.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_884.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_884.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_885.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_885.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_885.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_885.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_885.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_885.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_886.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_886.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_886.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_886.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_886.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_886.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_887.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_887.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_887.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_887.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_887.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_887.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_888.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_888.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_888.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_888.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_888.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_888.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_889.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_889.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_889.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_889.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_889.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_889.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_890.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_890.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_890.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_890.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_890.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_890.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_891.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_891.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_891.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_891.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_891.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_891.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_892.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_892.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_892.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_892.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_892.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_892.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_893.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_893.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_893.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_893.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_893.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_893.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_894.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_894.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_894.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_894.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_894.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_894.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_895.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_895.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_895.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_895.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_895.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_895.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_896.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_896.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_896.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_896.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_896.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_896.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_897.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_897.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_897.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_897.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_897.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_897.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_898.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_898.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_898.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_898.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_898.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_898.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_899.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_899.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_899.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_899.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_899.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_899.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_900.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_900.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_900.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_900.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_900.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_900.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_901.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_901.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_901.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_901.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_901.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_901.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_902.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_902.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_902.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_902.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_902.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_902.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_903.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_903.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_903.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_903.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_903.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_903.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_904.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_904.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_904.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_904.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_904.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_904.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_905.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_905.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_905.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_905.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_905.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_905.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_906.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_906.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_906.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_906.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_906.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_906.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_907.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_907.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_907.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_907.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_907.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_907.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_908.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_908.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_908.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_908.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_908.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_908.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_909.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_909.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_909.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_909.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_909.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_909.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_910.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_910.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_910.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_910.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_910.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_910.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_911.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_911.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_911.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_911.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_911.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_911.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_912.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_912.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_912.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_912.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_912.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_912.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_913.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_913.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_913.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_913.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_913.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_913.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_914.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_914.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_914.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_914.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_914.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_914.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_915.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_915.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_915.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_915.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_915.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_915.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_916.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_916.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_916.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_916.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_916.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_916.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_917.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_917.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_917.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_917.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_917.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_917.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_918.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_918.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_918.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_918.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_918.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_918.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_919.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_919.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_919.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_919.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_919.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_919.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_920.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_920.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_920.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_920.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_920.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_920.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_921.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_921.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_921.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_921.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_921.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_921.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_922.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_922.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_922.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_922.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_922.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_922.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_923.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_923.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_923.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_923.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_923.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_923.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_924.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_924.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_924.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_924.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_924.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_924.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_925.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_925.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_925.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_925.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_925.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_925.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_926.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_926.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_926.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_926.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_926.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_926.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_927.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_927.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_927.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_927.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_927.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_927.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_928.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_928.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_928.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_928.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_928.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_928.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_929.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_929.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_929.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_929.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_929.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_929.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_930.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_930.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_930.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_930.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_930.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_930.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_931.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_931.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_931.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_931.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_931.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_931.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_932.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_932.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_932.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_932.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_932.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_932.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_933.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_933.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_933.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_933.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_933.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_933.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_934.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_934.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_934.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_934.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_934.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_934.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_935.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_935.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_935.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_935.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_935.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_935.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_936.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_936.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_936.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_936.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_936.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_936.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_937.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_937.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_937.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_937.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_937.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_937.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_938.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_938.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_938.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_938.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_938.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_938.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_939.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_939.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_939.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_939.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_939.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_939.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_940.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_940.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_940.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_940.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_940.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_940.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_941.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_941.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_941.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_941.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_941.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_941.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_942.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_942.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_942.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_942.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_942.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_942.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_943.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_943.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_943.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_943.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_943.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_943.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_944.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_944.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_944.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_944.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_944.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_944.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_945.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_945.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_945.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_945.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_945.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_945.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_946.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_946.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_946.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_946.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_946.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_946.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_947.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_947.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_947.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_947.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_947.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_947.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_948.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_948.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_948.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_948.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_948.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_948.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_949.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_949.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_949.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_949.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_949.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_949.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_950.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_950.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_950.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_950.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_950.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_950.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_951.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_951.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_951.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_951.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_951.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_951.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_952.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_952.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_952.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_952.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_952.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_952.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_953.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_953.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_953.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_953.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_953.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_953.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_954.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_954.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_954.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_954.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_954.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_954.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_955.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_955.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_955.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_955.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_955.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_955.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_956.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_956.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_956.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_956.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_956.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_956.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_957.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_957.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_957.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_957.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_957.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_957.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_958.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_958.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_958.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_958.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_958.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_958.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_959.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_959.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_959.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_959.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_959.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_959.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_960.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_960.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_960.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_960.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_960.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_960.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_961.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_961.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_961.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_961.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_961.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_961.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_962.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_962.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_962.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_962.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_962.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_962.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_963.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_963.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_963.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_963.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_963.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_963.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_964.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_964.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_964.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_964.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_964.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_964.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_965.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_965.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_965.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_965.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_965.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_965.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_966.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_966.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_966.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_966.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_966.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_966.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_967.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_967.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_967.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_967.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_967.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_967.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_968.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_968.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_968.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_968.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_968.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_968.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_969.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_969.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_969.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_969.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_969.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_969.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_970.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_970.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_970.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_970.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_970.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_970.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_971.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_971.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_971.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_971.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_971.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_971.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_972.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_972.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_972.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_972.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_972.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_972.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_973.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_973.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_973.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_973.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_973.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_973.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_974.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_974.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_974.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_974.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_974.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_974.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_975.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_975.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_975.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_975.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_975.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_975.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_976.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_976.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_976.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_976.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_976.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_976.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_977.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_977.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_977.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_977.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_977.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_977.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_978.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_978.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_978.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_978.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_978.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_978.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_979.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_979.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_979.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_979.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_979.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_979.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_980.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_980.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_980.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_980.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_980.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_980.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_981.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_981.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_981.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_981.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_981.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_981.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_982.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_982.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_982.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_982.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_982.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_982.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_983.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_983.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_983.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_983.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_983.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_983.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_984.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_984.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_984.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_984.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_984.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_984.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_985.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_985.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_985.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_985.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_985.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_985.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_986.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_986.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_986.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_986.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_986.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_986.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_987.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_987.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_987.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_987.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_987.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_987.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_988.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_988.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_988.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_988.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_988.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_988.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_989.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_989.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_989.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_989.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_989.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_989.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_990.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_990.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_990.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_990.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_990.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_990.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_991.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_991.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_991.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_991.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_991.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_991.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_992.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_992.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_992.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_992.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_992.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_992.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_993.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_993.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_993.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_993.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_993.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_993.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_994.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_994.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_994.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_994.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_994.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_994.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_995.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_995.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_995.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_995.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_995.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_995.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_996.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_996.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_996.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_996.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_996.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_996.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_997.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_997.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_997.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_997.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_997.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_997.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR0_998.txt",LLR_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ0_998.txt", Q_in_A);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputLLR1_998.txt", LLR_in_I);
$readmemb("D:/LDPC/Coding/Single_Check_Node/VerifyData/Seperate_Data/InputQ1_998.txt", Q_in_I); 
out_LLR_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputLLR_998.txt","w");
out_Q_file = $fopen("D:/LDPC/Coding/Single_Check_Node/VerifyData/testbench_outputs/OutputQ_998.txt", "w");
write_A = 1;
write_I = 1;
for(i = 0; i<32; i = i + 1)
begin
Input_LLR_A = LLR_in_A[i];
Input_Q_A = Q_in_A[i];
Input_LLR_I = LLR_in_I[i];
Input_Q_I = Q_in_I[i];
#40; 
end
write_A = 0;
write_I = 0;
#4000;
end

always@(posedge clk)
begin
if (Output_Valid == 1)
begin
LLRbuffer = Output_LLR;
$fwrite(out_LLR_file, "%d\n", LLRbuffer);
Qbuffer = Output_Q;
$fwrite(out_Q_file, "%d\n", Qbuffer);
end
end
always@(posedge full)
begin
$fclose(out_LLR_file);
$fclose(out_Q_file);
end

endmodule
