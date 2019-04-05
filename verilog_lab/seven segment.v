module segment(input [3:0]a, output [6:0]b);
reg [6:0]b;
always @(*)
begin
case (a)
4'b0000:b=7'b0111111;
4'b0001:b=7'b0000110;
4'b0010:b=7'b1011011;
4'b0011:b=7'b1001111;
4'b0100:b=7'b1100110;
4'b0101:b=7'b1101101;
4'b0110:b=7'b1111101;
4'b0111:b=7'b0000111;
4'b1000:b=7'b1111111;
4'b1001:b=7'b1101111;
4'b1010:b=7'b1110111;
4'b1011:b=7'b1111111;
4'b1100:b=7'b0111001;
4'b1101:b=7'b0111111;
4'b1110:b=7'b1111001;
4'b1111:b=7'b1110001;
endcase
end
endmodule

module test;
reg [3:0]a;
wire [6:0]b;
segment s(a,b);
initial begin
$dumpfile("segment.vcd");
$dumpvars(0, test);
$display("a3 a2 a1 a0\tb6 b5 b4 b3 b2 b1 b0");
$monitor("%b%b%b%b\t\t\t%b%b%b%b%b%b%b", a[3], a[2], a[1], a[0], b[6], b[5], b[4], b[3], b[2], b[1], b[0]);
a = 4'b0000;
#10;
a = 4'b0001;
#10;
a = 4'b0010;
#10;
a = 4'b0011;
#10;
a = 4'b0100;
#10;
a = 4'b0101;
#10;
a = 4'b0110;
#10;
a = 4'b0111;
#10;
a = 4'b1000;
#10;
a = 4'b1001;
#10;
a = 4'b1010;
#10;
a = 4'b1011;
#10;
a = 4'b1100;
#10;
a = 4'b1101;
#10;
a = 4'b1110;
#10;
a = 4'b1111;
#10;
$finish;
end
endmodule