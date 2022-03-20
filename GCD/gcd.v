module GCD(gt,it,eq,lda,ldb,sel1,sel2,sel_in,data_in,clk);
input lda,ldb,sel1,sel2,clk;
input [15:0] data_in;
output gt,lt,eq;
wire [15:0] aout,bout,x,y,bus,subout);
PIPO1 A(aout,bus,lda,clk);
PIPO2 B(bout,bus,ldb,clk);
MUX MUX_in1(x,aout,bout,sel1);
MUX MUX_in2(y,aout,bout,sel2);
MUX MUX_load(bus,subout,data_in,sel_in);
SUB SB(subout,x,y);
COMPARE COMP(lt,gt,eq,aout,bout);
endmodule

module PIPO (data_out,data_in,load,clk);
input[15:0] data_in;
input load,clk;
output reg [15:0] data_out;
always @(posedge clk)
 if (load) data_out<=data_in;
endmodule

module SUB(out,in1,in2);
input[15:0] in1,in2;
output reg[15:0] out;
always @(*)
 out=in1-in2;
endmodule

module COMPARE(lt,gt,eq,data1,data2);
input[15:0] data1,data2;
output lt,gt,eq ;
assign lt=data1<data2;
assign gt=data1>data2;
assign eq=data1==data2;
endmodule

module MUX(out,in0,in1,sel);
input[15:0] in0,in1;
input sel;
output [15:0] out;
assign out=sel ? in1:in0;
endmodule


