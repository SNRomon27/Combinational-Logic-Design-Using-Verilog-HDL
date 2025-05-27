
module adder_4b(
    input wire [3:0] A,
    input wire [3:0] B,
    input wire Cin,
    output wire [3:0] S, // For combinational Lodic using wire
    output wire Cout	// Output depends only on the inputs, that's why the  wire is used    
);
            
    wire C1, C2, C3;

    full_adder FA1(.A(A[0]), .B(B[0]), .Cin(Cin), .carry(C1), .sum(S[0]));
    full_adder FA2(.A(A[1]), .B(B[1]), .Cin(C1), .carry(C2), .sum(S[1]));
    full_adder FA3(.A(A[2]), .B(B[2]), .Cin(C2), .carry(C3), .sum(S[2]));
    full_adder FA4(.A(A[3]), .B(B[3]), .Cin(C3), .carry(Cout), .sum(S[3]));
                
endmodule
