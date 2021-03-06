`timescale 1ns / 1ps

module divider_r(
	input wire [7:0] A,
	input wire [7:0] B,
	output wire [7:0] Q,
	output wire [7:0] R
	);
	
	wire [7:0] Cout [7:0];
	wire [7:0] Z [7:0];
	wire [7:0] B_inv;
	
	// inverter
	assign B_inv = ~B;
	
	assign R = Z[7];
	assign Q = {Cout[0][7], Cout[1][7], Cout[2][7], Cout[3][7], Cout[4][7], Cout[5][7], Cout[6][7], Cout[7][7]};

	// row 0
	block_r B00(.A(A[7]), .B(B_inv[0]), .Cin(1'b1), .Sel(Cout[0][7]), .Cout(Cout[0][0]), .Z(Z[0][0]));
	block_r B01(.A(1'b0), .B(B_inv[1]), .Cin(Cout[0][0]), .Sel(Cout[0][7]), .Cout(Cout[0][1]), .Z(Z[0][1]));
	block_r B02(.A(1'b0), .B(B_inv[2]), .Cin(Cout[0][1]), .Sel(Cout[0][7]), .Cout(Cout[0][2]), .Z(Z[0][2]));
	block_r B03(.A(1'b0), .B(B_inv[3]), .Cin(Cout[0][2]), .Sel(Cout[0][7]), .Cout(Cout[0][3]), .Z(Z[0][3]));
	block_r B04(.A(1'b0), .B(B_inv[4]), .Cin(Cout[0][3]), .Sel(Cout[0][7]), .Cout(Cout[0][4]), .Z(Z[0][4]));
	block_r B05(.A(1'b0), .B(B_inv[5]), .Cin(Cout[0][4]), .Sel(Cout[0][7]), .Cout(Cout[0][5]), .Z(Z[0][5]));
	block_r B06(.A(1'b0), .B(B_inv[6]), .Cin(Cout[0][5]), .Sel(Cout[0][7]), .Cout(Cout[0][6]), .Z(Z[0][6]));
	block_r B07(.A(1'b0), .B(B_inv[7]), .Cin(Cout[0][6]), .Sel(Cout[0][7]), .Cout(Cout[0][7]), .Z(Z[0][7]));
	
	// row 1
	block_r B10(.A(A[6]), .B(B_inv[0]), .Cin(1'b1), .Sel(Cout[1][7]), .Cout(Cout[1][0]), .Z(Z[1][0]));
	block_r B11(.A(Z[0][0]), .B(B_inv[1]), .Cin(Cout[1][0]), .Sel(Cout[1][7]), .Cout(Cout[1][1]), .Z(Z[1][1]));
	block_r B12(.A(Z[0][1]), .B(B_inv[2]), .Cin(Cout[1][1]), .Sel(Cout[1][7]), .Cout(Cout[1][2]), .Z(Z[1][2]));
	block_r B13(.A(Z[0][2]), .B(B_inv[3]), .Cin(Cout[1][2]), .Sel(Cout[1][7]), .Cout(Cout[1][3]), .Z(Z[1][3]));
	block_r B14(.A(Z[0][3]), .B(B_inv[4]), .Cin(Cout[1][3]), .Sel(Cout[1][7]), .Cout(Cout[1][4]), .Z(Z[1][4]));
	block_r B15(.A(Z[0][4]), .B(B_inv[5]), .Cin(Cout[1][4]), .Sel(Cout[1][7]), .Cout(Cout[1][5]), .Z(Z[1][5]));
	block_r B16(.A(Z[0][5]), .B(B_inv[6]), .Cin(Cout[1][5]), .Sel(Cout[1][7]), .Cout(Cout[1][6]), .Z(Z[1][6]));
	block_r B17(.A(Z[0][6]), .B(B_inv[7]), .Cin(Cout[1][6]), .Sel(Cout[1][7]), .Cout(Cout[1][7]), .Z(Z[1][7]));
	
	// row 2
	block_r B20(.A(A[5]), .B(B_inv[0]), .Cin(1'b1), .Sel(Cout[2][7]), .Cout(Cout[2][0]), .Z(Z[2][0]));
	block_r B21(.A(Z[1][0]), .B(B_inv[1]), .Cin(Cout[2][0]), .Sel(Cout[2][7]), .Cout(Cout[2][1]), .Z(Z[2][1]));
	block_r B22(.A(Z[1][1]), .B(B_inv[2]), .Cin(Cout[2][1]), .Sel(Cout[2][7]), .Cout(Cout[2][2]), .Z(Z[2][2]));
	block_r B23(.A(Z[1][2]), .B(B_inv[3]), .Cin(Cout[2][2]), .Sel(Cout[2][7]), .Cout(Cout[2][3]), .Z(Z[2][3]));
	block_r B24(.A(Z[1][3]), .B(B_inv[4]), .Cin(Cout[2][3]), .Sel(Cout[2][7]), .Cout(Cout[2][4]), .Z(Z[2][4]));
	block_r B25(.A(Z[1][4]), .B(B_inv[5]), .Cin(Cout[2][4]), .Sel(Cout[2][7]), .Cout(Cout[2][5]), .Z(Z[2][5]));
	block_r B26(.A(Z[1][5]), .B(B_inv[6]), .Cin(Cout[2][5]), .Sel(Cout[2][7]), .Cout(Cout[2][6]), .Z(Z[2][6]));
	block_r B27(.A(Z[1][6]), .B(B_inv[7]), .Cin(Cout[2][6]), .Sel(Cout[2][7]), .Cout(Cout[2][7]), .Z(Z[2][7]));
	
	// row 3
	block_r B30(.A(A[4]), .B(B_inv[0]), .Cin(1'b1), .Sel(Cout[3][7]), .Cout(Cout[3][0]), .Z(Z[3][0]));
	block_r B31(.A(Z[2][0]), .B(B_inv[1]), .Cin(Cout[3][0]), .Sel(Cout[3][7]), .Cout(Cout[3][1]), .Z(Z[3][1]));
	block_r B32(.A(Z[2][1]), .B(B_inv[2]), .Cin(Cout[3][1]), .Sel(Cout[3][7]), .Cout(Cout[3][2]), .Z(Z[3][2]));
	block_r B33(.A(Z[2][2]), .B(B_inv[3]), .Cin(Cout[3][2]), .Sel(Cout[3][7]), .Cout(Cout[3][3]), .Z(Z[3][3]));
	block_r B34(.A(Z[2][3]), .B(B_inv[4]), .Cin(Cout[3][3]), .Sel(Cout[3][7]), .Cout(Cout[3][4]), .Z(Z[3][4]));
	block_r B35(.A(Z[2][4]), .B(B_inv[5]), .Cin(Cout[3][4]), .Sel(Cout[3][7]), .Cout(Cout[3][5]), .Z(Z[3][5]));
	block_r B36(.A(Z[2][5]), .B(B_inv[6]), .Cin(Cout[3][5]), .Sel(Cout[3][7]), .Cout(Cout[3][6]), .Z(Z[3][6]));
	block_r B37(.A(Z[2][6]), .B(B_inv[7]), .Cin(Cout[3][6]), .Sel(Cout[3][7]), .Cout(Cout[3][7]), .Z(Z[3][7]));
	
	// row 4
	block_r B40(.A(A[3]), .B(B_inv[0]), .Cin(1'b1), .Sel(Cout[4][7]), .Cout(Cout[4][0]), .Z(Z[4][0]));
	block_r B41(.A(Z[3][0]), .B(B_inv[1]), .Cin(Cout[4][0]), .Sel(Cout[4][7]), .Cout(Cout[4][1]), .Z(Z[4][1]));
	block_r B42(.A(Z[3][1]), .B(B_inv[2]), .Cin(Cout[4][1]), .Sel(Cout[4][7]), .Cout(Cout[4][2]), .Z(Z[4][2]));
	block_r B43(.A(Z[3][2]), .B(B_inv[3]), .Cin(Cout[4][2]), .Sel(Cout[4][7]), .Cout(Cout[4][3]), .Z(Z[4][3]));
	block_r B44(.A(Z[3][3]), .B(B_inv[4]), .Cin(Cout[4][3]), .Sel(Cout[4][7]), .Cout(Cout[4][4]), .Z(Z[4][4]));
	block_r B45(.A(Z[3][4]), .B(B_inv[5]), .Cin(Cout[4][4]), .Sel(Cout[4][7]), .Cout(Cout[4][5]), .Z(Z[4][5]));
	block_r B46(.A(Z[3][5]), .B(B_inv[6]), .Cin(Cout[4][5]), .Sel(Cout[4][7]), .Cout(Cout[4][6]), .Z(Z[4][6]));
	block_r B47(.A(Z[3][6]), .B(B_inv[7]), .Cin(Cout[4][6]), .Sel(Cout[4][7]), .Cout(Cout[4][7]), .Z(Z[4][7]));
	
	// row 5
	block_r B50(.A(A[2]), .B(B_inv[0]), .Cin(1'b1), .Sel(Cout[5][7]), .Cout(Cout[5][0]), .Z(Z[5][0]));
	block_r B51(.A(Z[4][0]), .B(B_inv[1]), .Cin(Cout[5][0]), .Sel(Cout[5][7]), .Cout(Cout[5][1]), .Z(Z[5][1]));
	block_r B52(.A(Z[4][1]), .B(B_inv[2]), .Cin(Cout[5][1]), .Sel(Cout[5][7]), .Cout(Cout[5][2]), .Z(Z[5][2]));
	block_r B53(.A(Z[4][2]), .B(B_inv[3]), .Cin(Cout[5][2]), .Sel(Cout[5][7]), .Cout(Cout[5][3]), .Z(Z[5][3]));
	block_r B54(.A(Z[4][3]), .B(B_inv[4]), .Cin(Cout[5][3]), .Sel(Cout[5][7]), .Cout(Cout[5][4]), .Z(Z[5][4]));
	block_r B55(.A(Z[4][4]), .B(B_inv[5]), .Cin(Cout[5][4]), .Sel(Cout[5][7]), .Cout(Cout[5][5]), .Z(Z[5][5]));
	block_r B56(.A(Z[4][5]), .B(B_inv[6]), .Cin(Cout[5][5]), .Sel(Cout[5][7]), .Cout(Cout[5][6]), .Z(Z[5][6]));
	block_r B57(.A(Z[4][6]), .B(B_inv[7]), .Cin(Cout[5][6]), .Sel(Cout[5][7]), .Cout(Cout[5][7]), .Z(Z[5][7]));
	
	// row 6
	block_r B60(.A(A[1]), .B(B_inv[0]), .Cin(1'b1), .Sel(Cout[6][7]), .Cout(Cout[6][0]), .Z(Z[6][0]));
	block_r B61(.A(Z[5][0]), .B(B_inv[1]), .Cin(Cout[6][0]), .Sel(Cout[6][7]), .Cout(Cout[6][1]), .Z(Z[6][1]));
	block_r B62(.A(Z[5][1]), .B(B_inv[2]), .Cin(Cout[6][1]), .Sel(Cout[6][7]), .Cout(Cout[6][2]), .Z(Z[6][2]));
	block_r B63(.A(Z[5][2]), .B(B_inv[3]), .Cin(Cout[6][2]), .Sel(Cout[6][7]), .Cout(Cout[6][3]), .Z(Z[6][3]));
	block_r B64(.A(Z[5][3]), .B(B_inv[4]), .Cin(Cout[6][3]), .Sel(Cout[6][7]), .Cout(Cout[6][4]), .Z(Z[6][4]));
	block_r B65(.A(Z[5][4]), .B(B_inv[5]), .Cin(Cout[6][4]), .Sel(Cout[6][7]), .Cout(Cout[6][5]), .Z(Z[6][5]));
	block_r B66(.A(Z[5][5]), .B(B_inv[6]), .Cin(Cout[6][5]), .Sel(Cout[6][7]), .Cout(Cout[6][6]), .Z(Z[6][6]));
	block_r B67(.A(Z[5][6]), .B(B_inv[7]), .Cin(Cout[6][6]), .Sel(Cout[6][7]), .Cout(Cout[6][7]), .Z(Z[6][7]));
	
	// row 7
	block_r B70(.A(A[0]), .B(B_inv[0]), .Cin(1'b1), .Sel(Cout[7][7]), .Cout(Cout[7][0]), .Z(Z[7][0]));
	block_r B71(.A(Z[6][0]), .B(B_inv[1]), .Cin(Cout[7][0]), .Sel(Cout[7][7]), .Cout(Cout[7][1]), .Z(Z[7][1]));
	block_r B72(.A(Z[6][1]), .B(B_inv[2]), .Cin(Cout[7][1]), .Sel(Cout[7][7]), .Cout(Cout[7][2]), .Z(Z[7][2]));
	block_r B73(.A(Z[6][2]), .B(B_inv[3]), .Cin(Cout[7][2]), .Sel(Cout[7][7]), .Cout(Cout[7][3]), .Z(Z[7][3]));
	block_r B74(.A(Z[6][3]), .B(B_inv[4]), .Cin(Cout[7][3]), .Sel(Cout[7][7]), .Cout(Cout[7][4]), .Z(Z[7][4]));
	block_r B75(.A(Z[6][4]), .B(B_inv[5]), .Cin(Cout[7][4]), .Sel(Cout[7][7]), .Cout(Cout[7][5]), .Z(Z[7][5]));
	block_r B76(.A(Z[6][5]), .B(B_inv[6]), .Cin(Cout[7][5]), .Sel(Cout[7][7]), .Cout(Cout[7][6]), .Z(Z[7][6]));
	block_r B77(.A(Z[6][6]), .B(B_inv[7]), .Cin(Cout[7][6]), .Sel(Cout[7][7]), .Cout(Cout[7][7]), .Z(Z[7][7]));

endmodule
