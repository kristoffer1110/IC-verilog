module unit (Yout, nYout, A, B, Run, Reset, clk);
	input [1:0]A; wire [1:0]A;
	input [1:0]B; wire [1:0]B;
	input Run; wire Run;
	input Reset; wire Reset;
	input clk; wire clk;
	output [7:0]Yout; wire [7:0]Yout;
	output [7:0]nYout; wire [7:0]nYout;

	fsm states(nReset, y, Reset, Run, clk);
	mac operation(Yout, nYout, A, B, nReset, clk, y);
	
endmodule