module fourAnd(Q, A, B, C, D);
	input A; wire A;
	input B; wire B;
	input C; wire C;
	input D; wire D;
	output Q; wire Q;

and(e0, A, B);
and(e1, C, D);
and(Q, e0, e1);

endmodule