module xorgatetb;
reg in1 , in2 ;
wire out1 ;

xorgate x1 (
.in1(in1),.in2(in2),.out1(out1));

initial begin 
$dumpfile ("xor1.vcd");
$dumpvars ( 0 , xorgatetb);
repeat (100) begin 
in1 = $random%2 ;
in2 = $random %2 ;
#20 ;
end 
end 
endmodule 
