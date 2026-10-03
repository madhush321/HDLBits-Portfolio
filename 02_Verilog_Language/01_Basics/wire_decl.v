`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    wire k;
    wire l;
    wire m;
    assign k = a&b;
    assign l = c&d;
    assign m = k|l;
    assign out =m;
    assign out_n = !m;
    

endmodule
