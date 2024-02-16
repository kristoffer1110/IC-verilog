module fsmFlipFlop_tb;
	reg D, clk;
	wire Q, nQ;
	
	fsmFlipFlop test (
		.Q(Q),
		.nQ(nQ),
		.D(D),
		.clk(clk)
	);
	
	initial
		begin
			assign D = 0;
			assign clk = 0;
			#50000;
			assign clk = !clk;
			#20000;
			assign D = 1;
			#30000;
			assign clk = !clk;
			#50000;
			assign clk = !clk;
			#30000;
			assign D = 0;
			#20000;
			assign clk = !clk;
			$finish;
		end

endmodule
	