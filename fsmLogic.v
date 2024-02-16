module fsmLogic (nR, y, DA, DB, Reset, Run, QA, QB);
	input Reset; wire Reset;
	input Run; wire Run;
	input QA; wire QA;
	input QB; wire QB;
	output DA; wire DA;
	output DB; wire DB;
	output nR; wire nR;
	output y; wire y;

//output to registers

not(nReset, Reset);
and(a0, QB, Run);
xor(a1, a0, QA);
and(DA, a1, nReset);

not(nReset, Reset);
xor(b0, QB, Run);
and(DB, nReset, b0);

//output control signals

not(nR, Reset);

or(yTemp, QA, QB);
and(y, Run, yTemp);

endmodule	