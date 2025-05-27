
module full_adder_tb();
    reg A;
    reg B;
    reg Cin;
    wire sum;
    wire carry;

    full_adder g4 (
        .A(A),
        .B(B),
        .Cin(Cin),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        A = 0; B = 0; Cin = 0;
        #10; A = 0; B = 1; Cin = 0;
        #10; A = 1; B = 0; Cin = 0;
        #10; A = 1; B = 1; Cin = 0;
        #10; A = 0; B = 0; Cin = 1;
        #10; A = 0; B = 1; Cin = 1;
        #10; A = 1; B = 0; Cin = 1;
        #10; A = 1; B = 1; Cin = 1;
        #10; $finish;
    end
endmodule
