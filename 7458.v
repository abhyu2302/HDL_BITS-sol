module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
	wire out_1, out_2, out_3, out_4;
    
    assign out_1 = p2a&p2b;
    assign out_2 = p2c&p2d;
    
    assign p2y = out_1 | out_2;
    
    assign out_3 = p1a&p1b&p1c;
    assign out_4 = p1d&p1e&p1f;
    
    assign p1y = out_3 | out_4;

endmodule
