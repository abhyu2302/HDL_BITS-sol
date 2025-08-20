`default_nettype none //all nets (like wire) must be explicitly declared
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
	wire out_one, out_two;
    
    assign out_one = a&b;
    assign out_two = c&d;
    assign out = out_one | out_two;
    assign out_n = ~out;
    
    
endmodule
