module unit_tb;
	reg [1:0]A;
	reg [1:0]B;
	reg Run;
	reg Reset;
	reg clk;
	wire [7:0]Yout;
	wire [7:0]nYout;

	
	unit test (
		.Yout(Yout),
		.nYout(nYout),
		.A(A),
		.B(B),
		.Run(Run),
		.Reset(Reset),
		.clk(clk)
	);
	
	initial
		begin
			Reset = 1;
			Run = 1;
			clk = 0;
			A = 0;
			B = 0;
			#75;
			Reset = 0;
			//for (int i = 0; i < 3; i += 1)
//				begin
//					A = 1;
//					for (int j = 0; j < 2; j += 1)
//						begin
//							for (int k = 0; k < 2; k += 1)
//								begin
//									B += 1;
//									#100;
//								end
//							A += 1;
//						end
//					Run = !Run;
//		
//				end
			A = 1;
			B = 1;
			#1500;
			#75;
			Run = 0;
			#1500;
			Run = 1;
			#1500;
		$finish;
		end
	
	always
		begin
			#50;
			clk = !clk;
		end
endmodule