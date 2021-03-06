module MUL_test;
reg[15:0] data_in;
reg clk,start;
wire done;
MUL_datapath DP(eqz,lda,ldb,ldp,clr_p,dec_b,data_in,clk);
controller CON(lda,ldb,ldp,clr_p,dec_,done,clk,eqz,start);
initial
begin
clk=1'b0;
#3 start = 1'b1;
#500 $finish;
end
always #5 clk = ~clk;

