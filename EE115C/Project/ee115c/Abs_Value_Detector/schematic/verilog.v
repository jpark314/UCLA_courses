// Verilog netlist generated by RFSiP netlister
// Cadence Design Systems, Inc.

module Abs_Value_Detector (
X1,X2,X3,X4,X5,T0,VDD,GND,X0,T1,T2,T3,T4,OUT );
input  X1;
input  X2;
input  X3;
input  X4;
input  X5;
input  T0;
input  VDD;
input  GND;
input  X0;
input  T1;
input  T2;
input  T3;
input  T4;
output  OUT;
wire VDD;
wire net31;
wire net34;
wire X1;
wire X3;
wire X0;
wire X4;
wire T2;
wire X2;
wire T3;
wire X5;
wire net35;
wire T4;
wire net32;
wire OUT;
wire T0;
wire GND;
wire T1;
wire net33;
wire net30;

ABSol    
 I1  ( .S5( net35 ), .VDD( VDD ), .A1( X1 ), .S0( net34 ), .A0( X0 ), .S4( net30 ), .S3( net31 ), .A2( X2 ), .A5( X5 ), .A4( X4 ), .S1( net33 ), .GND( GND ), .A3( X3 ), .S2( net32 ) );

comparator    
 I2  ( .B1( T1 ), .Vdd( VDD ), .A1( net33 ), .A0( net34 ), .B0( T0 ), .A2( net32 ), .B4( T4 ), .B2( T2 ), .A4( net30 ), .GND( GND ), .B3( T3 ), .A3( net31 ), .Out( OUT ) );

endmodule

