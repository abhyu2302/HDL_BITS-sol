//module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
//module add1 ( input a, input b, input cin, output sum, output cout );

module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] sum1, sum2;
    wire cout, cout1;
    add16 mod1(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum1), .cout(cout1));
    add16 mod2(.a(a[31:16]), .b(b[31:16]), .cin(cout1), .sum(sum2), .cout(cout));
    
    assign sum = {sum2,sum1};
    

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module 
    assign sum = a^b^cin;
    assign cout = a&b | b&cin | cin&a;
    

endmodule
