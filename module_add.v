//module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] sum1,sum2;
    wire cout1,cout;
    add16 ins1 (.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum1) , .cout(cout1));
    add16 ins2 (.a(a[31:16]), .b(b[31:16]), .cin(cout1), .sum(sum2) , .cout(cout));
    assign sum = {sum2,sum1};
    
endmodule
