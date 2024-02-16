//module extVar(out, in)
//    input in[3:0]; // 4-bit input variable
//    output out[7:0];   // 8-bit output variable
//
//
//assign out = {4'b0000, in}; // Extend with zeroes
//
//endmodule


module mac(out, nout, A, B, nReset, clk, y);
	input [1:0]A; wire [1:0]A;
	input [1:0]B; wire [1:0]B;
	input nReset; wire nReset;
	input clk; wire clk;
	input y; wire y;
	output [7:0]out; wire [7:0]out;
	output [7:0]nout; wire [7:0]nout;
	wire [3:0]P;
	wire [7:0]S;

Multiplikator  mul(P, A, B);


eightbitadder add(S, Co, out, P);

//and(delayClk1, clk, clk);
//and(delayClk2, delayClk1, delayClk1);
//and(delayClk3, delayClk2, delayClk2);
//and(delayClk4, delayClk3, delayClk3);
//and(delayClk5, delayClk4, delayClk4);
//
//and(clky, y, delayClk5);

and(clky, clk, y);

accumulator acc(out, nout, nReset, S, clky);

endmodule