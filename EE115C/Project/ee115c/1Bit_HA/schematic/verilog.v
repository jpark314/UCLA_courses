// Verilog netlist generated by RFSiP netlister
// Cadence Design Systems, Inc.

module \1Bit_HA  (
A,Cin,VDD,GND,Sum,Cout );
input  A;
input  Cin;
input  VDD;
input  GND;
output  Sum;
output  Cout;
wire VDD;
wire Cin;
wire net11;
wire A;
wire Cout;
wire GND;
wire Sum;

XORG    
 I5  ( .VDD( VDD ), .A( A ), .GND( GND ), .B( Cin ), .out( Sum ) );

NAND2    
 I4  ( .VDD( VDD ), .A( A ), .B( Cin ), .OUT( net11 ), .GND( GND ) );

Inv    
 I2  ( .VDD( VDD ), .inp( net11 ), .GND( GND ), .out( Cout ) );

endmodule
