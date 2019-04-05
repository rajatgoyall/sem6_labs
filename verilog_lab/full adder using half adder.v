module halfadde(a,b,s,c);
input a;
input b;
output s,c;
assign s=a^b;
assign c=a&b;
endmodule

module fulladde(a1,b1,c1,s2,d);
input a1,b1,c1;
output s2,d;
wire s1,co1,co2;
halfadde h1(a1,b1,s1,co1);
halfadde h2(s1,c1,s2,co2);
assign d= co1 | co2;
endmodule


module test;
reg a1,b1,c1;
wire s2,d;
fulladde m(a1,b1,c1,s2,d);
initial
begin
$dumpfile("filea.vcd");
$dumpvars(0,test);
$display("a1 \t  b1 \t c1 \t s2 \t d");
$monitor("%b\t %b\t %b\t %b\t %b\t",a1,b1,c1,s2,d);
a1=0;
b1=0;
c1=0;
#10;
a1=0;
b1=0;
c1=1;
#10;
a1=0;
b1=1;
c1=0;
#10;
a1=0;
b1=1;
c1=1;
#10;
a1=1;
b1=0;
c1=0;
#10;
a1=1;
b1=0;
c1=1;
#10;
a1=1;
b1=1;
c1=0;
#10;
a1=1;
b1=1;
c1=1;
#10;
end
endmodule



