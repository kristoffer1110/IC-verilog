module fsm(nR, y, Reset, Run, clk);
	input Reset; wire Reset;
	input Run; wire Run;
	input clk; wire clk;
	output nR; wire nR;
	output y; wire y;
	
	fsmFlipFlop A (QA, nQA, DA, clk);
	fsmFlipFlop B (QB, nQB, DB, clk);
	
	fsmLogic control (nR, y, DA, DB, Reset, Run, QA, QB);

endmodule