module MUX MUX_in1(out,in0,in1,sel);
input [15:0]in0,in1;
input sel;
output [15:0] out;
assign sel?ino:in1;
endmodule




