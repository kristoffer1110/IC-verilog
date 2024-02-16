//-----------------------------------------------------------------------------
//
// Title       : Multiplikator
// Design      : MAC
// Author      : kgbesche@stud.ntnu.no
// Company     : Norwegian University of Science and Technology
//
//-----------------------------------------------------------------------------
//
// File        : c:\My_Designs\ICprosjekt\MAC\src\Multiplikator.v
// Generated   : Mon Oct 16 16:52:45 2023
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
//{module {Multiplikator}}
module Multiplikator(P, A, B);

input [1:0] A ;
wire [1:0] A ;
input [1:0] B ;
wire [1:0] B ;
output [3:0] P ;
wire [3:0] P ;


and(P[0], A[0], B[0]);
and(c1, A[0], B[1]);
and(c2, A[1], B[0]);
and(c3, A[1], B[1]);
xor(P[1], c1, c2);
and(d2, c1, c2);
xor(P[2], d2, c3);
and(P[3], c3, d2);


endmodule
