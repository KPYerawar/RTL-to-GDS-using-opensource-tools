module all_gate (and1,
    nand1,
    nor1,
    or1,
    xnor1,
    xor1,
    a,
    b);
 output and1;
 output nand1;
 output nor1;
 output or1;
 output xnor1;
 output xor1;
 input a;
 input b;

 wire _01_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;

 sky130_fd_sc_hd__nor2_1 _08_ (.A(b),
    .B(a),
    .Y(_04_));
 sky130_fd_sc_hd__lpflow_inputiso1p_1 _09_ (.A(b),
    .SLEEP(a),
    .X(_05_));
 sky130_fd_sc_hd__and2_0 _10_ (.A(b),
    .B(a),
    .X(_01_));
 sky130_fd_sc_hd__nand2_1 _11_ (.A(b),
    .B(a),
    .Y(_03_));
 sky130_fd_sc_hd__xor2_1 _12_ (.A(b),
    .B(a),
    .X(_07_));
 sky130_fd_sc_hd__xnor2_1 _13_ (.A(b),
    .B(a),
    .Y(_06_));
 assign and1 = _01_;
 assign nand1 = _03_;
 assign nor1 = _04_;
 assign or1 = _05_;
 assign xnor1 = _06_;
 assign xor1 = _07_;
endmodule
