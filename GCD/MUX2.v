module MUX2 MUX_load(out,in0,in1,sel1);
input [15:0]in0,in1;
input sel1;
output [15:0] out;
assign sel1?ino:in1;
endmodule
