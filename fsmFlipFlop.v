
//module fsmFlipFlop(Q, D, clk);
//	input D;
//	input clk;
//	output reg Q;
//	
//	always @(posedge clk)
//		begin
//			Q <= D;
//		end
//		
//endmodule

module fsmFlipFlop(Q, nQ, D, clk);
	input D; wire D;
	input clk; wire clk;
	output Q; wire Q;
	output nQ; wire nQ;
	
	nand(c0, D, c1);
	threeNand nand3(c1, c0, clk, c2);
	nand(c2, clk, c3);
	nand(c3, c0, c2);
	nand(nQ, c1, Q);
	nand(Q, nQ, c2);
endmodule