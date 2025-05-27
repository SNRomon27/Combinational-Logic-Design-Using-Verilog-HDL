
module bcd_adder(
    input wire [3:0] A,
    input wire [3:0] B,
    input wire Cin,
    output wire [3:0] S,
    output wire Cout
);

    wire Z0, Z1, Z2, Z3, C0; 
    reg C1, C2, C4; 

    adder_4b Adder1( 
        .A(A), 
        .B(B), 
        .Cin(Cin), 
        .Cout(C0), 
        .S({Z3, Z2, Z1, Z0})
    );

    always @(*) begin
        C1 = Z3 & Z2;
        C2 = Z3 & Z1;
        C4 = (C0 | C1 | C2);
    end

    adder_4b Adder2( 
        .A({Z3, Z2, Z1, Z0}), 
        .B({1'b0, C4, C4, 1'b0}), 
        .Cin(1'b0), 
        .Cout(Cout), 
        .S(S)
    );

endmodule
