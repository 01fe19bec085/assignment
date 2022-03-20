module MUX1 MUX_in2(out,in0,in1,sel2);
input [15:0]in0,in1;
input sel2;
output [15:0] out;
assign sel2?ino:in1;
endmodule
