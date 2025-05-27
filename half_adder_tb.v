 
module half_adder_tb();
reg A,B;
wire sum,carry;

half_adder dut(.sum(sum),.carry(carry),.A(A),.B(B));
initial
begin
    A=0; B=0; 
    #80 $finish;
end
    always #10 B =~ B;
    always #20 A =~ A;
endmodule
