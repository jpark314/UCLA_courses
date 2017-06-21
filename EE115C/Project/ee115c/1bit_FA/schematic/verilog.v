// Verilog netlist generated by RFSiP netlister
// Cadence Design Systems, Inc.

module \1bit_FA  (
A,B,Cin,VDD,GND,Sum,Cout );
input  A;
input  B;
input  Cin;
input  VDD;
input  GND;
output  Sum;
output  Cout;
wire VDD;
wire Cin;
wire net25;
wire net15;
wire Cout;
wire net24;
wire A;
wire B;
wire GND;
wire Sum;

NAND2    
 I2  ( .b1( net24 ), .VDD( VDD ), .a1( net25 ), .out1( Cout ), .GND( GND ) );

NAND2    
 I1  ( .b1( B ), .VDD( VDD ), .a1( A ), .out1( net24 ), .GND( GND ) );

NAND2    
 I0  ( .b1( Cin ), .VDD( VDD ), .a1( net15 ), .out1( net25 ), .GND( GND ) );

XORG    
 I4  ( .VDD( VDD ), .A( net15 ), .GND( GND ), .B( Cin ), .out( Sum ) );

XORG    
 I3  ( .VDD( VDD ), .A( A ), .GND( GND ), .B( B ), .out( net15 ) );

endmodule
