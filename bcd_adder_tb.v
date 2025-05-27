module bcd_adder_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0] S;
    wire Cout;

    bcd_adder uut (
        .A(A), 
        .B(B), 
        .Cin(Cin), 
        .S(S), 
        .Cout(Cout)
    );

    initial begin
        A = 0;
        B = 0;
        Cin = 0;

        #10;     
        A = 4'b0101; B = 4'b0011; Cin = 0; 
        #10;

        A = 4'b0111; B = 4'b0100; Cin = 0; 
        #10;
        A = 4'b1001; B = 4'b1001; Cin = 0; 
        #10;
        A = 4'b0010; B = 4'b0110; Cin = 0; 
        #10;
        $stop;
    end
endmodule
