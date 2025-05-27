module adder_4b_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0] S;
    wire Cout;

    adder_4b uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );

    initial begin
        A = 4'b0000; B = 4'b0000; Cin = 0; #10;
        A = 4'b0001; B = 4'b0000; Cin = 0; #10;
        A = 4'b0110; B = 4'b0101; Cin = 0; #10;
        A = 4'b1100; B = 4'b1010; Cin = 1; #10;
        A = 4'b1111; B = 4'b1111; Cin = 1; #10;
        $stop;
    end

endmodule
