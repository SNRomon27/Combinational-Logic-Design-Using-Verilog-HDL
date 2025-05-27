
module add_sub_4b_tb;

	reg [3:0] A ;
	reg [3:0] Y ;
	reg Cin ;
	wire [3:0] S ;
	wire Cout ;

	add_sub_4b uut1 ( .A(A), .Y(Y), .Cin(Cin), .Cout(Cout), .S(S) );

	initial
    	 begin
        A = 4'b0001; Y = 4'b0000; Cin = 0; #10;
        A = 4'b0000; Y = 4'b0001; #10
        A = 4'b0110; Y = 4'b0001; #10
        A = 4'b1100; Y = 4'b1010; Cin = 1; #10;
        A = 4'b1011; Y = 4'b1111; #10
	A = 4'b1111; Y = 4'b0111; #10
        $finish;
    end
endmodule
