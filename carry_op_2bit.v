module carry_op_2bit(
output[1:0]go,po,input [1:0]g,p
);
assign go[1]=g[1]|(g[0]&p[1]);
assign po[1]=p[0]&p[1];
assign go[0]=g[0];
assign po[0]=p[0];
endmodule