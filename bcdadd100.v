module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum 
);
    wire [99:0] carry;

    genvar i;
    generate
        for (i = 0; i < 100; i = i + 1) begin : bcd_adders
            if (i == 0) begin
                
                bcd_fadd bcd_adder (
                    .a(a[3:0]),
                    .b(b[3:0]),
                    .cin(cin),
                    .cout(carry[i]),
                    .sum(sum[3:0])
                );
            end else begin
                bcd_fadd bcd_adder (
                    .a(a[4*i+3:4*i]),
                    .b(b[4*i+3:4*i]),
                    .cin(carry[i-1]),
                    .cout(carry[i]),
                    .sum(sum[4*i+3:4*i])
                );
            end
        end
    endgenerate
    assign cout = carry[99];

endmodule

/*module bcd_fadd (
    input [3:0] a,
    input [3:0] b,
    input     cin,
    output   cout,
    output [3:0] sum );
    */

