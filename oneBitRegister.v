module oneBitRegister(Q, nQ, Data, Clk, nReset);
	input Data; wire Data;
	input Clk; wire Clk;
	input nReset; wire nReset;
	output Q; wire Q;
	output nQ; wire nQ;

threeNand nand0(nand0_out, nReset, Data, nand1_out);
threeNand nand1(nand1_out, nand0_out, Clk, nand2_out);
threeNand nand2(nand2_out, nReset, Clk, nand3_out);
nand(nand3_out, nand2_out, nand0_out);
threeNand nand4(nQ, nReset, nand1_out, Q);
nand(Q, nQ, nand2_out);

endmodule