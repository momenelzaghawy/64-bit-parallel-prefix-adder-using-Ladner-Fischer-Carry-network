module fourbit(
output [3:0]go,po,input [3:0]g,p
);
wire [3:0]gw,pw;

carry_op_2bit C0(gw[1:0],pw[1:0],g[1:0],p[1:0]);
carry_op_2bit C1(gw[3:2],pw[3:2],g[3:2],p[3:2]);
assign go[1:0]=gw[1:0];
assign po[1:0]=pw[1:0];
assign go[2]=gw[2]|(gw[1]&pw[2]);
assign go[3]=gw[3]|(gw[2]&pw[3]);
assign po[2]=pw[2]&pw[1];
assign po[2]=pw[2]&pw[1];
endmodule