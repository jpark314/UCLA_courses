// Verilog netlist generated by RFSiP netlister
// Cadence Design Systems, Inc.

module \5AND  (
A,B,C,Vdd,GND,Out,D,E );
input  A;
input  B;
input  C;
input  Vdd;
input  GND;
output  Out;
input  D;
input  E;
wire net17;
wire Vdd;
wire C;
wire net16;
wire net15;
wire A;
wire E;
wire net030;
wire B;
wire D;
wire GND;
wire net011;
wire Out;

nmos1v    
 NM4  ( .S( GND ), .G( E ), .B( GND ), .D( net011 ) );

nmos1v    
 NM3  ( .S( net011 ), .G( D ), .B( GND ), .D( net030 ) );

nmos1v    
 NM2  ( .S( net030 ), .G( C ), .B( GND ), .D( net15 ) );

nmos1v    
 NM1  ( .S( net15 ), .G( B ), .B( GND ), .D( net16 ) );

nmos1v    
 NM0  ( .S( net16 ), .G( A ), .B( GND ), .D( net17 ) );

pmos1v    
 PM4  ( .S( Vdd ), .G( E ), .B( Vdd ), .D( net17 ) );

pmos1v    
 PM3  ( .S( Vdd ), .G( D ), .B( Vdd ), .D( net17 ) );

pmos1v    
 PM2  ( .S( Vdd ), .G( C ), .B( Vdd ), .D( net17 ) );

pmos1v    
 PM1  ( .S( Vdd ), .G( B ), .B( Vdd ), .D( net17 ) );

pmos1v    
 PM0  ( .S( Vdd ), .G( A ), .B( Vdd ), .D( net17 ) );

NOT    
 I1  ( .Vdd( Vdd ), .In( net17 ), .GND( GND ), .Out( Out ) );

endmodule
