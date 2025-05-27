
module full_adder(
    input wire A,
    input wire B,
    input wire Cin,
    output wire sum,
    output wire carry
);

    wire sum1, carry1, carry2;

    half_adder g1 (
        .A(A), 
        .B(B), 
        .sum(sum1), 
        .carry(carry1)
    );

    half_adder g2 (
        .A(sum1), 
        .B(Cin), 
        .sum(sum), 
        .carry(carry2)
    );

    assign carry = carry1 | carry2;
endmodule
