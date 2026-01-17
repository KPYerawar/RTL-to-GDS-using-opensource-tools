
module and1tb;
reg  in1 ;
reg in2 ;
wire  out1;

and1 an1(
.in1(in1),
.in2(in2),
.out1(out1));

initial begin
$dumpfile ("dump.vcd");
$dumpvars( 0 , and1tb); 
in1 = 1 ; in2 = 0 ; #50;
in1 = 1 ; in2 = 1 ; #50;
in1 = 0 ; in2 = 0 ; #50;
in1 = 0 ; in2 = 1 ; #50;

in1 = 1 ; in2 = 1 ; #50;
in1 = 0 ; in2 = 0 ; #50;
in1 = 0 ; in2 = 1 ; #50;

end endmodule
