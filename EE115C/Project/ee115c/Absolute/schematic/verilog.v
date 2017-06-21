// Verilog netlist generated by RFSiP netlister
// Cadence Design Systems, Inc.

module Absolute (
A0,A1,A2,A3,A4,A5,VDD,GND,O5,O4,O3,O2,O1,O0 );
input  A0;
input  A1;
input  A2;
input  A3;
input  A4;
input  A5;
input  VDD;
input  GND;
output  O5;
output  O4;
output  O3;
output  O2;
output  O1;
output  O0;
wire VDD;
wire A0;
wire O4;
wire net056;
wire net054;
wire net53;
wire O3;
wire O2;
wire GND;
wire A3;
wire net55;
wire net41;
wire O1;
wire \gnd! ;
wire A1;
wire net50;
wire net40;
wire A4;
wire net37;
wire net52;
wire net053;
wire net51;
wire net43;
wire A2;
wire net44;
wire A5;
wire O0;
wire net065;
wire O5;
wire net058;
wire net38;
wire net54;
wire net055;

\6bit_HA     
 I0  ( .S5( net55 ), .VDD( VDD ), .C5( \gnd!  ), .A1( net44 ), .S0( net53 ), .A0( net43 ), .S4( net54 ), .S3( net50 ), .A2( net41 ), .A5( net37 ), .A4( net38 ), .S1( net52 ), .GND( GND ), .A3( net40 ), .S2( net51 ) );

\12to1MUX     
 I1  ( .B5( net55 ), .Out4( O4 ), .B1( net52 ), .Vdd( VDD ), .A1( net058 ), .A0( net065 ), .Out0( O0 ), .B0( net53 ), .Out1( O1 ), .Selector( A5 ), .A2( net056 ), .Out3( O3 ), .B4( net54 ), .B2( net51 ), .A5( net054 ), .A4( net055 ), .GND( GND ), .B3( net50 ), .A3( net053 ), .Out5( O5 ), .Out2( O2 ) );

NOT    
 I19  ( .Vdd( VDD ), .In( A0 ), .GND( GND ), .Out( net43 ) );

NOT    
 I18  ( .Vdd( VDD ), .In( A1 ), .GND( GND ), .Out( net44 ) );

NOT    
 I17  ( .Vdd( VDD ), .In( A2 ), .GND( GND ), .Out( net41 ) );

NOT    
 I14  ( .Vdd( VDD ), .In( A3 ), .GND( GND ), .Out( net40 ) );

NOT    
 I13  ( .Vdd( VDD ), .In( A5 ), .GND( GND ), .Out( net37 ) );

NOT    
 I11  ( .Vdd( VDD ), .In( A4 ), .GND( GND ), .Out( net38 ) );

BUFX2    
 I27  ( .VDD( VDD ), .Y( net065 ), .A( A0 ), .VSS( GND ) );

BUFX2    
 I26  ( .VDD( VDD ), .Y( net056 ), .A( A2 ), .VSS( GND ) );

BUFX2    
 I25  ( .VDD( VDD ), .Y( net054 ), .A( A5 ), .VSS( GND ) );

BUFX2    
 I24  ( .VDD( VDD ), .Y( net055 ), .A( A4 ), .VSS( GND ) );

BUFX2    
 I23  ( .VDD( VDD ), .Y( net053 ), .A( A3 ), .VSS( GND ) );

BUFX2    
 I21  ( .VDD( VDD ), .Y( net058 ), .A( A1 ), .VSS( GND ) );

endmodule
