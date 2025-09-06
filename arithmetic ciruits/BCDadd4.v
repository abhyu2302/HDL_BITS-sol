/*
module bcd_fadd (
    input [3:0] a,
    input [3:0] b,
    input     cin,
    output   cout,
    output [3:0] sum );
*/

module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    wire [3:0]carry;
    
    
    
    bcd_fadd ins1(.a(a[3:0]), .b(b[3:0]), .cin(cin) , .cout(carry[0]), .sum(sum[3:0]));
    bcd_fadd ins2(.a(a[7:4]), .b(b[7:4]), .cin(carry[0]) , .cout(carry[1]), .sum(sum[7:4]));
    bcd_fadd ins3(.a(a[11:8]), .b(b[11:8]), .cin(carry[1]) , .cout(carry[2]), .sum(sum[11:8]));
    bcd_fadd ins4(.a(a[15:12]), .b(b[15:12]), .cin(carry[2]) , .cout(carry[3]), .sum(sum[15:12]));
    
    assign cout = carry[3];
                  
                  
    /* always@(*)begin
        {carry[0],sum[3:0]} = a[3:0] + b[3:0] + cin;
        {carry[1],sum[7:4]} = a[7:4] + b[7:4] + carry[0];
        {carry[2],sum[11:8]} = a[11:8] + b[11:8] + carry[1];
        {carry[3],sum[15:12]} = a[15:12] + b[15:12] + carry[2];
    end
    assign cout = carry[3]; */
        
        
        
endmodule
