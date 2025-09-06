module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
    wire [7:0] min_1,min_2,min_3,min_4, min_5, min_6, min_7;
    // assign intermediate_result1 = compare? true: false;
    assign min_1 = (a<b)?a:b;
    assign min_2 = (b<c)?b:c;
    assign min_3 = (c<d)?c:d;
    assign min_4 = (d<a)?d:a;
    assign min_5 = (min_1<min_2)?min_1:min_2;
    assign min_6 = (min_3<min_4)?min_3:min_4;
    assign min_7 = (min_5<min_6)?min_5:min_6;
    
    assign min = min_7;
endmodule
