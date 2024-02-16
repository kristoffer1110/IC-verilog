//-----------------------------------------------------------------------------
//
// Title       : \\1-bit_full-adder
// Design      : MAC
// Author      : kgbesche@stud.ntnu.no
// Company     : Norwegian University of Science and Technology
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\ICprosjekt\MAC\src\1-bit full-dder.v
// Generated   : Sat Oct 21 15:02:04 2023
// From        : interface description file
// By          : Itf2Vhdl ver. 1.22
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ps

//{{ Section below this comment is automatically maintained
//   and may be overwritten
//{module {\\1-bit_full-adder}}
module bit_full-adder ( A ,B ,Ci ,Co ,S);

input A;
wire A;
input B;
wire B;
input Ci;
wire Ci;
output Co;
wire Co;
output S;
wire S;
wire d0;
wire d1;
wire e0;
//}} End of automatically maintained section

// -- Enter your statements here -- //


and(d0, Ci, B);
xor(d1, Ci, B);
and(e0, A, d1);
xor(S, A, d1);
or(Co, d0, e0);

endmodule
