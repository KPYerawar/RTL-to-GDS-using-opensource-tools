module ortb;
wire out1 ;
reg in1 , in2 ;

or1 o1 (
.in1(in1),.in2(in2),.out1(out1));

initial begin 
$dumpfile ("or_dump");
$dumpvars ( 0 , ortb);
repeat(10) begin 
in1 = $random %2;
in2 = $random %2;
#20;
end 
end endmodule 
