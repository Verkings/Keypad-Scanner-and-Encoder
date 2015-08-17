
module decoder ( code, rd_enable, clock, BCD );
  input [3:0] code;
  output [7:0] BCD;
  input rd_enable, clock;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43;
  assign BCD[7] = 1'b0;
  assign BCD[6] = 1'b0;
  assign BCD[5] = 1'b0;

  CFD1QX1 \BCD_reg[4]  ( .D(n39), .CP(clock), .Q(BCD[4]) );
  CFD1QX1 \BCD_reg[3]  ( .D(n14), .CP(clock), .Q(BCD[3]) );
  CFD1QX1 \BCD_reg[2]  ( .D(n13), .CP(clock), .Q(BCD[2]) );
  CFD1QX1 \BCD_reg[1]  ( .D(n12), .CP(clock), .Q(BCD[1]) );
  CFD1QX1 \BCD_reg[0]  ( .D(n11), .CP(clock), .Q(BCD[0]) );
  CAOR2X1 U2 ( .A(n24), .B(n17), .C(n16), .D(n1), .Z(n11) );
  CAOR2X1 U3 ( .A(n22), .B(n1), .C(n24), .D(n2), .Z(n12) );
  COND2X1 U4 ( .A(n26), .B(n23), .C(n4), .D(n5), .Z(n2) );
  COND11X1 U5 ( .A(n28), .B(n6), .C(n1), .D(n7), .Z(n13) );
  CIVX1 U7 ( .A(n34), .Z(n6) );
  CIVX1 U8 ( .A(n36), .Z(n5) );
  CND2X1 U10 ( .A(n29), .B(n1), .Z(n8) );
  CIVX1 U11 ( .A(n37), .Z(n1) );
  CND2X1 U12 ( .A(n31), .B(n3), .Z(n4) );
  CIVX1 U13 ( .A(n38), .Z(n3) );
  COND3X1 U15 ( .A(n42), .B(n38), .C(n41), .D(n43), .Z(n10) );
  CIVX1 U16 ( .A(BCD[4]), .Z(n9) );
  CNIVX1 U20 ( .A(BCD[0]), .Z(n16) );
  CNIVX1 U21 ( .A(n18), .Z(n17) );
  CNIVX1 U22 ( .A(n19), .Z(n18) );
  CNIVX1 U23 ( .A(n20), .Z(n19) );
  CNIVX1 U24 ( .A(code[0]), .Z(n20) );
  CIVX2 U25 ( .A(BCD[1]), .Z(n21) );
  CIVX2 U26 ( .A(n21), .Z(n22) );
  CNIVX1 U27 ( .A(n3), .Z(n23) );
  CNIVX1 U28 ( .A(n37), .Z(n24) );
  CIVXL U29 ( .A(n30), .Z(n31) );
  CIVXL U30 ( .A(code[3]), .Z(n30) );
  CIVX2 U31 ( .A(n31), .Z(n25) );
  CIVX2 U32 ( .A(n25), .Z(n26) );
  CNIVX1 U33 ( .A(BCD[2]), .Z(n27) );
  CND2XL U34 ( .A(n27), .B(n1), .Z(n7) );
  CNIVX1 U35 ( .A(code[2]), .Z(n42) );
  CNIVX1 U36 ( .A(n5), .Z(n28) );
  CNIVX1 U37 ( .A(BCD[3]), .Z(n29) );
  CIVDXL U38 ( .A(n36), .Z1(n35) );
  CIVX2 U39 ( .A(n4), .Z(n33) );
  CIVX2 U40 ( .A(n33), .Z(n34) );
  COND11X2 U41 ( .A(n34), .B(n35), .C(n1), .D(n8), .Z(n14) );
  CNIVX1 U42 ( .A(n42), .Z(n36) );
  CNIVX1 U43 ( .A(n43), .Z(n37) );
  CNIVX1 U44 ( .A(code[1]), .Z(n38) );
  COND1X2 U45 ( .A(n9), .B(n37), .C(n10), .Z(n15) );
  CNIVX1 U46 ( .A(n40), .Z(n39) );
  CNIVX1 U47 ( .A(n15), .Z(n40) );
  CNIVX1 U48 ( .A(code[3]), .Z(n41) );
  CNIVX1 U49 ( .A(rd_enable), .Z(n43) );
endmodule

