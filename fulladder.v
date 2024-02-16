//-----------------------------------------------------------------------------
//
// Title       : test
// Design      : MAC
// Author      : kgbesche@stud.ntnu.no
// Company     : Norwegian University of Science and Technology
//
//-----------------------------------------------------------------------------
//
// File        : C:\My_Designs\ICprosjekt\MAC\src\test.v
// Generated   : Mon Oct 23 16:36:47 2023
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
//{module {test}}
module fulladder (A ,B ,Ci ,Co ,S);


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


and(d0, Ci, B);	
xor(d1, Ci, B);
and(e0, A, d1);
xor(S, A, d1);
or(Co, d0, e0);

endmodule

