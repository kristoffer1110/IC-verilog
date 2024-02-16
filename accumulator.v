module accumulator (Q, nQ, nReset, Data, clk);
	input nReset; wire nReset;
	input [7:0]Data; wire [7:0]Data;
	input clk; wire clk;
	output [7:0]Q; wire [7:0]Q;
	output [7:0]nQ; wire [7:0]nQ;
	
oneBitRegister reg0(Q[0], nQ[0], Data[0], clk, nReset);
oneBitRegister reg1(Q[1], nQ[1], Data[1], clk, nReset);
oneBitRegister reg2(Q[2], nQ[2], Data[2], clk, nReset);
oneBitRegister reg3(Q[3], nQ[3], Data[3], clk, nReset);
oneBitRegister reg4(Q[4], nQ[4], Data[4], clk, nReset);
oneBitRegister reg5(Q[5], nQ[5], Data[5], clk, nReset);
oneBitRegister reg6(Q[6], nQ[6], Data[6], clk, nReset);
oneBitRegister reg7(Q[7], nQ[7], Data[7], clk, nReset);

endmodule