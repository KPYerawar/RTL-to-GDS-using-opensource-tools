module all_gate (
input a , b , 
output and1,or1,xor1,nand1,nor1,xnor1);

assign and1= a&b ;
assign or1 = a | b ;
assign xor1 = a ^ b ;
assign nand1 = ~ (a & b ) ;
assign nor1 = ~ ( a | b ) ;
assign xnor1 = ~ (a ^ b ) ;
endmodule 
