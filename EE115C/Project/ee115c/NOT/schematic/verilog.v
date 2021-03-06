// Verilog netlist generated by RFSiP netlister
// Cadence Design Systems, Inc.

module NOT (
In,Out,Vdd,GND );
input  In;
output  Out;
input  Vdd;
input  GND;
wire Vdd;
wire In;
wire GND;
wire Out;

nmos1v    
 NM0  ( .S( GND ), .G( In ), .B( GND ), .D( Out ) );

pmos1v    
 PM0  ( .S( Vdd ), .G( In ), .B( Vdd ), .D( Out ) );

endmodule

