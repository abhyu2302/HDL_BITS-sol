//module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );

module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] b_adass;
    wire cout1,cout;
    wire [15:0] sum1,sum2;
    assign b_case = sub?~b:b;
    
  add16 ins1(.a(a[15:0]), .b(b_case[15:0]), .cin(sub), .sum(sum1), .cout(cout1));
  add16 ins2(.a(a[31:16]), .b(b_case[31:16]), .cin(cout1), .sum(sum2), .cout(cout));
    
    assign sum = {sum2,sum1};
endmodule
