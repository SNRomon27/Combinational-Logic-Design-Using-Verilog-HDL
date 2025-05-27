module half_adder(
    input wire A,
    input wire B,
    output wire sum,  // Using wire for combinational circuit
    output wire carry
);

    assign sum = A ^ B;
    assign carry = A & B;

endmodule


