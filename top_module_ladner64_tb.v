`timescale 1ns/1ps
module top_module_ladner64_tb;
wire [63:0]s;
wire cout;
reg [63:0]a,b;
reg cin;
top_module_ladner64 uut(.s(s),.cout(cout),.a(a),.b(b),.cin(cin));
initial 
begin 
a=0; 
b=0; 
cin=0;
#10 a=64'h0000000000000001; b=64'h0000000000000001;cin=0;
#10 a=64'h0000000000000001; b=64'h0000000000000001;cin=1;
#10 a=64'h0000000100000000; b=64'h0000000200000000;cin=0;
#10 a=64'hffffffffffffffff; b=64'h0000000000000001;cin=0;
#10 a=64'hffffffffffffffff; b=64'h0000000000000001;cin=1;
#10 a=64'h0000000000000000; b=64'h0000000000000001;cin=0;
#10 $stop;
 end 
 initial begin 
$monitor("At time %t,s=%b,cout=%b,a=%b,b=%b,cin=%b", 
$time,s,cout,a,b,cin); 
end 
endmodule