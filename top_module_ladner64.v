module top_module_ladner64(
output [63:0]s,output cout,input [63:0]a,b,input cin
);            
wire [63:0]g,p;         
wire [63:0]go,po;       
assign g=a^b;       
assign p=a&b;
sixtyfourbit K0(.go(go),.po(po),.g(g),.p(p));    
assign s[0]=p[0]^cin;            
genvar i;
generate 
for(i=0;i<63;i=i+1)
begin 
assign s[i+1]=p[i+1]^go[i];
end
endgenerate    
assign cout=go[63];   
endmodule