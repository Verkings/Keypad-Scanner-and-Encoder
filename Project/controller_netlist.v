
module controller ( v, clock, reset, full, empty, read, valid, wr_enable, 
        rd_enable );
  input v, clock, reset, full, empty, read;
  output valid, wr_enable, rd_enable;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N21, n1, n2, n3, n4, n5;

  CIVX2 I_7 ( .A(N13), .Z(N14) );
  CIVX2 I_6 ( .A(N10), .Z(N11) );
  CIVX2 I_5 ( .A(n5), .Z(N8) );
  CIVX2 I_4 ( .A(N6), .Z(N7) );
  CIVX2 I_3 ( .A(v), .Z(N4) );
  CIVX2 I_2 ( .A(N2), .Z(N3) );
  CIVX2 I_1 ( .A(read), .Z(N0) );
  COR3X1 C77 ( .A(N7), .B(N11), .C(N18), .Z(N21) );
  COR3X1 C70 ( .A(N3), .B(N14), .C(n3), .Z(N19) );
  CAN2X2 C32 ( .A(v), .B(read), .Z(N15) );
  COR2X1 C30 ( .A(N12), .B(n5), .Z(N13) );
  COR2X1 C29 ( .A(N4), .B(N0), .Z(N12) );
  COR2X1 C25 ( .A(N9), .B(N8), .Z(N10) );
  COR2X1 C24 ( .A(N4), .B(read), .Z(N9) );
  COR2X1 C20 ( .A(N5), .B(n5), .Z(N6) );
  COR2X1 C19 ( .A(N4), .B(read), .Z(N5) );
  COR2X1 C11 ( .A(N1), .B(n5), .Z(N2) );
  COR2X1 C10 ( .A(v), .B(N0), .Z(N1) );
  CFD4QXL valid_reg ( .D(N21), .CP(clock), .SD(reset), .Q(valid) );
  CFD2QXL wr_enable_reg ( .D(n1), .CP(clock), .CD(reset), .Q(wr_enable) );
  CFD2QXL rd_enable_reg ( .D(N19), .CP(clock), .CD(reset), .Q(rd_enable) );
  CAN2X4 U3 ( .A(N17), .B(N8), .Z(N18) );
  CDLY1XL U4 ( .A(v), .Z(n2) );
  CNIVX1 U5 ( .A(n2), .Z(n1) );
  CNIVXL U6 ( .A(N16), .Z(n3) );
  CAN2X1 U7 ( .A(N15), .B(n5), .Z(N16) );
  CIVX3 U8 ( .A(n4), .Z(n5) );
  CIVX1 U9 ( .A(empty), .Z(n4) );
  CAN2XL U10 ( .A(N4), .B(N0), .Z(N17) );
endmodule

