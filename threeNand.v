module threeNand(Q, A, B, C);
	input A; wire A;
	input B; wire B;
	input C; wire C;
	output Q; wire Q;

and(e0, A, B);
nand(Q, C, e0);

endmodule