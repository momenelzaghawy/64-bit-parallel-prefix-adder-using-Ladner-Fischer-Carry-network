module sixtyfourbit(
output [63:0]go,po,input [63:0]g,p
);
wire [63:0]gw,pw;
thirtytwobit M0(gw[31:0],pw[31:0],g[31:0],p[31:0]);
thirtytwobit M1(gw[63:32],pw[63:32],g[63:32],p[63:32]);
assign go[31:0]=gw[31:0];
assign po[31:0]=pw[31:0];
assign go[32]=gw[32]|(gw[31]&pw[32]);
assign go[33]=gw[33]|(gw[31]&pw[33]);
assign go[34]=gw[34]|(gw[31]&pw[34]);
assign go[35]=gw[35]|(gw[31]&pw[35]);
assign go[36]=gw[36]|(gw[31]&pw[36]);
assign go[37]=gw[37]|(gw[31]&pw[37]);
assign go[38]=gw[38]|(gw[31]&pw[38]);
assign go[39]=gw[39]|(gw[31]&pw[39]);
assign go[40]=gw[40]|(gw[31]&pw[40]);
assign go[41]=gw[41]|(gw[31]&pw[41]);
assign go[42]=gw[42]|(gw[31]&pw[42]);
assign go[43]=gw[43]|(gw[31]&pw[43]);
assign go[44]=gw[44]|(gw[31]&pw[44]);
assign go[45]=gw[45]|(gw[31]&pw[45]);
assign go[46]=gw[46]|(gw[31]&pw[46]);
assign go[47]=gw[47]|(gw[31]&pw[47]);
assign go[48]=gw[48]|(gw[31]&pw[48]);
assign go[49]=gw[49]|(gw[31]&pw[49]);
assign go[50]=gw[50]|(gw[31]&pw[50]);
assign go[51]=gw[51]|(gw[31]&pw[51]);
assign go[52]=gw[52]|(gw[31]&pw[52]);
assign go[53]=gw[53]|(gw[31]&pw[53]);
assign go[54]=gw[54]|(gw[31]&pw[54]);
assign go[55]=gw[55]|(gw[31]&pw[55]);
assign go[56]=gw[56]|(gw[31]&pw[56]);
assign go[57]=gw[57]|(gw[31]&pw[57]);
assign go[58]=gw[58]|(gw[31]&pw[58]);
assign go[59]=gw[59]|(gw[31]&pw[59]);
assign go[60]=gw[60]|(gw[31]&pw[60]);
assign go[61]=gw[61]|(gw[31]&pw[61]);
assign go[62]=gw[62]|(gw[31]&pw[62]);
assign go[63]=gw[63]|(gw[31]&pw[63]);
assign po[32]=pw[32]&pw[31];
assign po[33]=pw[33]&pw[31];
assign po[34]=pw[34]&pw[31];
assign po[35]=pw[35]&pw[31];
assign po[36]=pw[36]&pw[31];
assign po[37]=pw[37]&pw[31];
assign po[38]=pw[38]&pw[31];
assign po[39]=pw[39]&pw[31];
assign po[40]=pw[40]&pw[31];
assign po[41]=pw[41]&pw[31];
assign po[42]=pw[42]&pw[31];
assign po[43]=pw[43]&pw[31];
assign po[44]=pw[44]&pw[31];
assign po[45]=pw[45]&pw[31];
assign po[46]=pw[46]&pw[31];
assign po[47]=pw[47]&pw[31];
assign po[48]=pw[48]&pw[31];
assign po[49]=pw[49]&pw[31];
assign po[50]=pw[50]&pw[31];
assign po[51]=pw[51]&pw[31];
assign po[52]=pw[52]&pw[31];
assign po[53]=pw[53]&pw[31];
assign po[54]=pw[54]&pw[31];
assign po[55]=pw[55]&pw[31];
assign po[56]=pw[56]&pw[31];
assign po[57]=pw[57]&pw[31];
assign po[58]=pw[58]&pw[31];
assign po[59]=pw[59]&pw[31];
assign po[60]=pw[60]&pw[31];
assign po[61]=pw[61]&pw[31];
assign po[62]=pw[62]&pw[31];
assign po[63]=pw[63]&pw[31];
endmodule