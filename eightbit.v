module eightbit (
output [7:0]go,po,input[7:0]g,p
);
wire [7:0]gw,pw;
fourbit F0(gw[3:0],pw[3:0],g[3:0],p[3:0]);
fourbit F1(gw[7:4],pw[7:4],g[7:4],p[7:4]);
assign go[3:0]=g[3:0];
assign po[3:0]=p[3:0];
assign go[4]=gw[4]|(gw[3]&pw[4]);
assign go[5]=gw[5]|(gw[3]&pw[5]);
assign go[6]=gw[6]|(gw[3]&pw[6]);
assign go[7]=gw[7]|(gw[3]&pw[7]);
assign po[4]=pw[4]&pw[3];
assign po[5]=pw[5]&pw[3];
assign po[6]=pw[6]&pw[3];
assign po[7]=pw[7]&pw[3];
endmodule