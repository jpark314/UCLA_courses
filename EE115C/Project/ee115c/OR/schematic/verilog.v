// Verilog netlist generated by RFSiP netlister
// Cadence Design Systems, Inc.

module OR (
A,B,Vdd,GND,Out );
input  A;
input  B;
input  Vdd;
input  GND;
output  Out;
wire Vdd;
wire net07;
wire A;
wire GND;
wire B;
wire net014;
wire Out;

pmos1v    
 PM1  ( .S( net014 ), .G( A ), .B( Vdd ), .D( net07 ) );

pmos1v    
 PM0  ( .S( Vdd ), .G( B ), .B( Vdd ), .D( net014 ) );

nmos1v    
 NM1  ( .S( GND ), .G( B ), .B( GND ), .D( net07 ) );

nmos1v    
 NM0  ( .S( GND ), .G( A ), .B( GND ), .D( net07 ) );

NOT    
 I0  ( .Vdd( Vdd ), .In( net07 ), .GND( GND ), .Out( Out ) );

endmodule
