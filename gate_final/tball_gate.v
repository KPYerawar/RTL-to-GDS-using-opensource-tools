module tball_gate;
reg a , b ;
wire and1,or1,xor1,nand1,nor1,xnor1;

all_gate a1 (
.a(a),.b(b),.and1(and1),.or1(or1),.xor1(xor1),.nand1(nand1),.nor1(nor1),.xnor1(xnor1));

initial begin 
$dumpfile ("all_gate.vcd");
$dumpvars(0, tball_gate);

repeat (10) begin 
a = $random%2;
b = $random%2;
#10;
end
end 
endmodule 
