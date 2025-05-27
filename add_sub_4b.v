module add_sub_4b(
	input wire [3:0] A,
	input wire [3:0] Y,
	input wire Cin,
	output wire [3:0] S,
	output wire Cout
		);

    wire [3:0] B;
	assign B = Y ^ {4{Cin}}; // 1 bit Cin accross 4 bit Cin = 0000 if C = 0
				 // Cin = 1111 if Cin = 1

	/* If Cin = 1 and Y = 1010, {4{Cin}} = 1111, so:
		- B[3] = Y[3] ^ Cin = 1 ^ 1 = 0
		- B[2] = Y[2] ^ Cin = 0 ^ 1 = 1
		- B[1] = Y[1] ^ Cin = 1 ^ 1 = 0
		- B[0] = Y[0] ^ Cin = 0 ^ 1 = 1
		- Final B = 0101 (bitwise complement of Y)
	*/

    wire C1, C2, C3;

    full_adder FA1(.A(A[0]), .B(B[0]), .Cin(Cin), .carry(C1), .sum(S[0]));
    full_adder FA2(.A(A[1]), .B(B[1]), .Cin(C1), .carry(C2), .sum(S[1]));
    full_adder FA3(.A(A[2]), .B(B[2]), .Cin(C2), .carry(C3), .sum(S[2]));
    full_adder FA4(.A(A[3]), .B(B[3]), .Cin(C3), .carry(Cout), .sum(S[3]));

endmodule
