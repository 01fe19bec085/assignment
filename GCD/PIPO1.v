module PIPO1 A(data_out,data_in,lda,clk);
input [15:0] data_in;
input lda,clk;
output reg[15:0] data_out;
always @(posedge clk)
if(load)data_out <= data_in;
endmodule


