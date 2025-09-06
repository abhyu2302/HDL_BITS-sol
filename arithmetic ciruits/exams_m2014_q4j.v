module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire [4:0] cout;
    always@(*)begin
        cout[0] = 0;
        for(int i=0;i<4;i=i+1)begin
            sum[i] = x[i]^y[i]^cout[i];
            cout[i+1] = x[i]&y[i] | y[i]&cout[i] | cout[i]&x[i];
        end
    end
    assign sum[4] = cout[4];
endmodule
