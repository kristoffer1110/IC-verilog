module fsm_tb;
	reg Reset, Run, clk;
	wire nR, y;

	fsm  test (
		.nR(nR),
		.y(y),
		.Reset(Reset),
		.Run(Run),
		.clk(clk)
	);
	
	initial
		begin
			Reset = 0; Run = 0; #20;
			Reset = 1; 			#25;
			Reset = 1; Run = 1; #10;
			Reset = 0;
			#1000;
			$finish;
		end
	
	always
		begin
			clk = 0; #50;
			clk = 1; #50;
		end
		
endmodule