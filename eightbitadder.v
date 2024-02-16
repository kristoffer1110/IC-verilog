module eightbitadder(S, Co, A, B);
	input [7:0]A; wire [7:0]A;
	input [3:0]B; wire [3:0]B;
	output [7:0]S; wire [7:0]S;
	output Co; wire Co;

fulladder adder0 (A[0], B[0], 0, tempCo0, S[0]);
fulladder adder1 (A[1], B[1], tempCo0, tempCo1, S[1]);
fulladder adder2 (A[2], B[2], tempCo1, tempCo2, S[2]);
fulladder adder3 (A[3], B[3], tempCo2, tempCo3, S[3]);
fulladder adder4 (A[4], 0, tempCo3, tempCo4, S[4]); 
fulladder adder5 (A[5], 0, tempCo4, tempCo5, S[5]);
fulladder adder6 (A[6], 0, tempCo5, tempCo6, S[6]);
fulladder adder7 (A[7], 0, tempCo6, Co, S[7]); 

endmodule