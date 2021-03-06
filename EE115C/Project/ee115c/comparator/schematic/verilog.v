// Verilog netlist generated by RFSiP netlister
// Cadence Design Systems, Inc.

module comparator (
A0,B0,A1,B1,A2,B2,A3,B3,A4,B4,Out,GND,Vdd );
input  A0;
input  B0;
input  A1;
input  B1;
input  A2;
input  B2;
input  A3;
input  B3;
input  A4;
input  B4;
output  Out;
input  GND;
input  Vdd;
wire net083;
wire net099;
wire net075;
wire net022;
wire A0;
wire net052;
wire net056;
wire net080;
wire net39;
wire net059;
wire net028;
wire GND;
wire A3;
wire net087;
wire net074;
wire B1;
wire net072;
wire net078;
wire A1;
wire net077;
wire net073;
wire B2;
wire A4;
wire net082;
wire net025;
wire Vdd;
wire net069;
wire net0101;
wire net053;
wire net0100;
wire net098;
wire net086;
wire A2;
wire net076;
wire net070;
wire net085;
wire net071;
wire net0102;
wire net081;
wire B0;
wire net026;
wire net027;
wire net023;
wire B4;
wire net068;
wire Out;
wire B3;
wire net055;

NOT    
 I39  ( .Vdd( Vdd ), .In( B4 ), .GND( GND ), .Out( net070 ) );

NOT    
 I37  ( .Vdd( Vdd ), .In( A4 ), .GND( GND ), .Out( net069 ) );

NOT    
 I36  ( .Vdd( Vdd ), .In( B3 ), .GND( GND ), .Out( net071 ) );

NOT    
 I32  ( .Vdd( Vdd ), .In( A3 ), .GND( GND ), .Out( net072 ) );

NOT    
 I31  ( .Vdd( Vdd ), .In( A2 ), .GND( GND ), .Out( net073 ) );

NOT    
 I27  ( .Vdd( Vdd ), .In( B2 ), .GND( GND ), .Out( net074 ) );

NOT    
 I22  ( .Vdd( Vdd ), .In( A1 ), .GND( GND ), .Out( net076 ) );

NOT    
 I23  ( .Vdd( Vdd ), .In( B1 ), .GND( GND ), .Out( net075 ) );

NOT    
 I20  ( .Vdd( Vdd ), .In( B0 ), .GND( GND ), .Out( net077 ) );

NOR    
 I41  ( .Vdd( Vdd ), .A( net056 ), .GND( GND ), .B( net39 ), .Out( net028 ) );

NOR    
 I34  ( .Vdd( Vdd ), .A( net055 ), .GND( GND ), .B( net025 ), .Out( net027 ) );

NOR    
 I26  ( .Vdd( Vdd ), .A( net052 ), .GND( GND ), .B( net022 ), .Out( net059 ) );

NOR    
 I29  ( .Vdd( Vdd ), .A( net053 ), .GND( GND ), .B( net023 ), .Out( net026 ) );

AND    
 I64  ( .Vdd( Vdd ), .A( net026 ), .GND( GND ), .B( net059 ), .Out( net0100 ) );

AND    
 I63  ( .Vdd( Vdd ), .A( net028 ), .GND( GND ), .B( net027 ), .Out( net098 ) );

AND    
 I62  ( .Vdd( Vdd ), .A( net098 ), .GND( GND ), .B( net0100 ), .Out( net080 ) );

AND    
 I56  ( .Vdd( Vdd ), .A( net028 ), .GND( GND ), .B( net025 ), .Out( net078 ) );

AND    
 I55  ( .Vdd( Vdd ), .A( net0101 ), .GND( GND ), .B( net023 ), .Out( net082 ) );

AND    
 I54  ( .Vdd( Vdd ), .A( net028 ), .GND( GND ), .B( net027 ), .Out( net0101 ) );

AND    
 I53  ( .Vdd( Vdd ), .A( net0102 ), .GND( GND ), .B( net099 ), .Out( net081 ) );

AND    
 I52  ( .Vdd( Vdd ), .A( net028 ), .GND( GND ), .B( net027 ), .Out( net0102 ) );

AND    
 I51  ( .Vdd( Vdd ), .A( net026 ), .GND( GND ), .B( net022 ), .Out( net099 ) );

AND    
 I50  ( .Vdd( Vdd ), .A( net080 ), .GND( GND ), .B( net068 ), .Out( net083 ) );

AND    
 I40  ( .Vdd( Vdd ), .A( A4 ), .GND( GND ), .B( net070 ), .Out( net39 ) );

AND    
 I38  ( .Vdd( Vdd ), .A( net069 ), .GND( GND ), .B( B4 ), .Out( net056 ) );

AND    
 I35  ( .Vdd( Vdd ), .A( A3 ), .GND( GND ), .B( net071 ), .Out( net025 ) );

AND    
 I33  ( .Vdd( Vdd ), .A( net072 ), .GND( GND ), .B( B3 ), .Out( net055 ) );

AND    
 I30  ( .Vdd( Vdd ), .A( net073 ), .GND( GND ), .B( B2 ), .Out( net053 ) );

AND    
 I28  ( .Vdd( Vdd ), .A( A2 ), .GND( GND ), .B( net074 ), .Out( net023 ) );

AND    
 I25  ( .Vdd( Vdd ), .A( A1 ), .GND( GND ), .B( net075 ), .Out( net022 ) );

AND    
 I24  ( .Vdd( Vdd ), .A( net076 ), .GND( GND ), .B( B1 ), .Out( net052 ) );

AND    
 I21  ( .Vdd( Vdd ), .A( A0 ), .GND( GND ), .B( net077 ), .Out( net068 ) );

OR    
 I61  ( .Vdd( Vdd ), .A( net087 ), .GND( GND ), .B( net083 ), .Out( Out ) );

OR    
 I59  ( .Vdd( Vdd ), .A( net086 ), .GND( GND ), .B( net085 ), .Out( net087 ) );

OR    
 I58  ( .Vdd( Vdd ), .A( net082 ), .GND( GND ), .B( net081 ), .Out( net085 ) );

OR    
 I57  ( .Vdd( Vdd ), .A( net39 ), .GND( GND ), .B( net078 ), .Out( net086 ) );

endmodule

