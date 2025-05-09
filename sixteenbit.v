module sixteenbit(
output [15:0]go,po,input [15:0]g,p
);
wire [15:0]gw,pw;
eightbit E0(gw[7:0],pw[7:0],g[7:0],p[7:0]);
eightbit E1(gw[15:8],pw[15:8],g[15:8],p[15:8]);
assign go[7:0]=gw[7:0];
assign po[7:0]=pw[7:0];
assign go[8]=gw[8]|(gw[7]&pw[8]);
assign go[9]=gw[9]|(gw[7]&pw[9]);
assign go[10]=gw[10]|(gw[7]&pw[10]);
assign go[11]=gw[11]|(gw[7]&pw[11]);
assign go[12]=gw[12]|(gw[7]&pw[12]);
assign go[13]=gw[13]|(gw[7]&pw[13]);
assign go[14]=gw[14]|(gw[7]&pw[14]);
assign go[15]=gw[15]|(gw[7]&pw[15]);
assign po[8]=pw[8]&pw[7];
assign po[9]=pw[9]&pw[7];
assign po[10]=pw[10]&pw[7];
assign po[11]=pw[11]&pw[7];
assign po[12]=pw[12]&pw[7];
assign po[13]=pw[13]&pw[7];
assign po[14]=pw[14]&pw[7];
assign po[15]=pw[15]&pw[7];
endmodule