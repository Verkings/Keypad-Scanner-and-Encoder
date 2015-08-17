
module keypad ( row, col, data, v, clock, reset );
  input [3:0] row;
  output [3:0] col;
  output [3:0] data;
  input clock, reset;
  output v;
  wire   N15, N16, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N43, N44, N45, N46, N47, N48, N49,
         N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63,
         N64, N65, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91,
         N92, N93, N94, N95, N96, N97, N98, N121, N122, N123, N124, N125, N126,
         N127, N128, N129, N130, N131, N132, N133, N134, N135, N136, N137,
         N138, N139, N162, N163, N164, N165, N166, N167, N168, N169, N170,
         N171, N172, N173, N174, N175, N176, N177, N178, N179, N180, N210,
         N212, N214, N216, N218, N220, N222, N224, N226, N228, N230, N231,
         N232, N264, N266, N267, N268, N269, N270, N271, N272, N273, N274,
         N275, N276, N277, N278, N279, N280, N281, N282, N283, N284, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80;
  wire   [2:0] state;
  wire   [3:0] store;
  wire   [2:0] next_state;

  CIVX2 I_38 ( .A(N176), .Z(N177) );
  CIVX2 I_37 ( .A(N172), .Z(N173) );
  CIVX2 I_36 ( .A(N168), .Z(N169) );
  CIVX2 I_35 ( .A(N164), .Z(N165) );
  CIVX2 I_33 ( .A(N135), .Z(N136) );
  CIVX2 I_32 ( .A(N131), .Z(N132) );
  CIVX2 I_31 ( .A(N127), .Z(N128) );
  CIVX2 I_30 ( .A(N123), .Z(N124) );
  CIVX2 I_28 ( .A(N94), .Z(N95) );
  CIVX2 I_27 ( .A(N90), .Z(N91) );
  CIVX2 I_26 ( .A(N86), .Z(N87) );
  CIVX2 I_25 ( .A(N82), .Z(N83) );
  CIVX2 I_23 ( .A(N61), .Z(N62) );
  CIVX2 I_22 ( .A(N57), .Z(N58) );
  CIVX2 I_21 ( .A(N53), .Z(N54) );
  CIVX2 I_20 ( .A(store[0]), .Z(N50) );
  CIVX2 I_19 ( .A(N48), .Z(N49) );
  CIVX2 I_18 ( .A(store[1]), .Z(N45) );
  CIVX2 I_17 ( .A(store[2]), .Z(N44) );
  CIVX2 I_16 ( .A(store[3]), .Z(N43) );
  CIVX2 I_14 ( .A(N33), .Z(N34) );
  CIVX2 I_13 ( .A(N30), .Z(N31) );
  CIVX2 I_12 ( .A(N27), .Z(N28) );
  CIVX2 I_11 ( .A(N24), .Z(N25) );
  CIVX2 I_10 ( .A(N21), .Z(N22) );
  CIVX2 I_1 ( .A(N35), .Z(N36) );
  COR4X1 C636 ( .A(N165), .B(N169), .C(N173), .D(N177), .Z(N180) );
  COR4X1 C612 ( .A(N124), .B(N128), .C(N132), .D(N136), .Z(N139) );
  COR4X1 C588 ( .A(N83), .B(N87), .C(N91), .D(N95), .Z(N98) );
  COR4X1 C564 ( .A(N49), .B(N54), .C(N58), .D(N62), .Z(N65) );
  COR3X1 C556 ( .A(N25), .B(N31), .C(N34), .Z(N284) );
  COR2X1 C554 ( .A(N19), .B(N34), .Z(N283) );
  COR2X1 C548 ( .A(N173), .B(N177), .Z(N179) );
  COR2X1 C545 ( .A(N169), .B(N177), .Z(N178) );
  COR2X1 C542 ( .A(N132), .B(N136), .Z(N138) );
  COR2X1 C539 ( .A(N128), .B(N136), .Z(N137) );
  COR2X1 C536 ( .A(N91), .B(N95), .Z(N97) );
  COR2X1 C533 ( .A(N87), .B(N95), .Z(N96) );
  COR2X1 C530 ( .A(N58), .B(N62), .Z(N64) );
  COR2X1 C527 ( .A(N54), .B(N62), .Z(N63) );
  CAN2X2 C525 ( .A(store[0]), .B(N281), .Z(N282) );
  CAN2X2 C524 ( .A(store[1]), .B(N280), .Z(N281) );
  CAN2X2 C523 ( .A(store[2]), .B(store[3]), .Z(N280) );
  CAN2X2 C522 ( .A(store[0]), .B(N278), .Z(N279) );
  CAN2X2 C521 ( .A(store[1]), .B(N277), .Z(N278) );
  CAN2X2 C520 ( .A(store[2]), .B(store[3]), .Z(N277) );
  CAN2X2 C519 ( .A(store[0]), .B(N275), .Z(N276) );
  CAN2X2 C518 ( .A(store[1]), .B(N274), .Z(N275) );
  CAN2X2 C517 ( .A(store[2]), .B(store[3]), .Z(N274) );
  CAN2X2 C516 ( .A(store[0]), .B(N272), .Z(N273) );
  CAN2X2 C515 ( .A(store[1]), .B(N271), .Z(N272) );
  CAN2X2 C514 ( .A(store[2]), .B(store[3]), .Z(N271) );
  CAN2X2 C513 ( .A(store[0]), .B(N270), .Z(N35) );
  CAN2X2 C512 ( .A(store[1]), .B(N269), .Z(N270) );
  CAN2X2 C511 ( .A(store[2]), .B(store[3]), .Z(N269) );
  CAN2X2 C510 ( .A(store[0]), .B(N267), .Z(N268) );
  CAN2X2 C509 ( .A(store[1]), .B(N266), .Z(N267) );
  CAN2X2 C508 ( .A(store[2]), .B(store[3]), .Z(N266) );
  COR2X1 C375 ( .A(N45), .B(N50), .Z(N175) );
  COR2X1 C374 ( .A(store[3]), .B(N44), .Z(N174) );
  COR2X1 C368 ( .A(N45), .B(N50), .Z(N171) );
  COR2X1 C367 ( .A(N43), .B(store[2]), .Z(N170) );
  COR2X1 C361 ( .A(store[1]), .B(N50), .Z(N167) );
  COR2X1 C360 ( .A(N43), .B(N44), .Z(N166) );
  COR2X1 C354 ( .A(N45), .B(store[0]), .Z(N163) );
  COR2X1 C353 ( .A(N43), .B(N44), .Z(N162) );
  COR2X1 C282 ( .A(N45), .B(N50), .Z(N134) );
  COR2X1 C281 ( .A(store[3]), .B(N44), .Z(N133) );
  COR2X1 C275 ( .A(N45), .B(N50), .Z(N130) );
  COR2X1 C274 ( .A(N43), .B(store[2]), .Z(N129) );
  COR2X1 C268 ( .A(store[1]), .B(N50), .Z(N126) );
  COR2X1 C267 ( .A(N43), .B(N44), .Z(N125) );
  COR2X1 C261 ( .A(N45), .B(store[0]), .Z(N122) );
  COR2X1 C260 ( .A(N43), .B(N44), .Z(N121) );
  COR2X1 C189 ( .A(N45), .B(N50), .Z(N93) );
  COR2X1 C188 ( .A(store[3]), .B(N44), .Z(N92) );
  COR2X1 C182 ( .A(N45), .B(N50), .Z(N89) );
  COR2X1 C181 ( .A(N43), .B(store[2]), .Z(N88) );
  COR2X1 C175 ( .A(store[1]), .B(N50), .Z(N85) );
  COR2X1 C174 ( .A(N43), .B(N44), .Z(N84) );
  COR2X1 C168 ( .A(N45), .B(store[0]), .Z(N81) );
  COR2X1 C167 ( .A(N43), .B(N44), .Z(N80) );
  COR2X1 C96 ( .A(N45), .B(N50), .Z(N60) );
  COR2X1 C95 ( .A(store[3]), .B(N44), .Z(N59) );
  COR2X1 C89 ( .A(N45), .B(N50), .Z(N56) );
  COR2X1 C88 ( .A(N43), .B(store[2]), .Z(N55) );
  COR2X1 C82 ( .A(store[1]), .B(N50), .Z(N52) );
  COR2X1 C81 ( .A(N43), .B(N44), .Z(N51) );
  COR2X1 C75 ( .A(N45), .B(store[0]), .Z(N47) );
  COR2X1 C74 ( .A(N43), .B(N44), .Z(N46) );
  COR2X1 C47 ( .A(N15), .B(state[1]), .Z(N32) );
  COR2X1 C42 ( .A(N15), .B(state[1]), .Z(N29) );
  COR2X1 C38 ( .A(state[2]), .B(N16), .Z(N26) );
  COR2X1 C33 ( .A(state[2]), .B(N16), .Z(N23) );
  COR2X1 C29 ( .A(state[2]), .B(state[1]), .Z(N20) );
  CAN2X2 C26 ( .A(N15), .B(N16), .Z(N18) );
  CIVX2 U3 ( .A(n62), .Z(n2) );
  CIVX2 U4 ( .A(n63), .Z(n3) );
  CIVX2 U5 ( .A(n64), .Z(n4) );
  CIVX2 U6 ( .A(n65), .Z(n5) );
  CIVX2 U7 ( .A(n66), .Z(n6) );
  CIVX2 U8 ( .A(n67), .Z(n7) );
  CIVX2 U9 ( .A(n68), .Z(n8) );
  CIVX2 U10 ( .A(n69), .Z(n9) );
  CNR2IX1 U11 ( .B(row[0]), .A(reset), .Z(n63) );
  CNR2X1 U12 ( .A(row[0]), .B(reset), .Z(n62) );
  CNR2IX1 U13 ( .B(row[1]), .A(reset), .Z(n65) );
  CNR2X1 U14 ( .A(row[1]), .B(reset), .Z(n64) );
  CNR2IX1 U15 ( .B(row[2]), .A(reset), .Z(n67) );
  CNR2X1 U16 ( .A(row[2]), .B(reset), .Z(n66) );
  CNR2IX1 U17 ( .B(row[3]), .A(reset), .Z(n69) );
  CNR2X1 U18 ( .A(row[3]), .B(reset), .Z(n68) );
  COR2X1 U19 ( .A(N92), .B(N93), .Z(N94) );
  COR2X1 U20 ( .A(N88), .B(N89), .Z(N90) );
  COR2X1 U21 ( .A(N84), .B(N85), .Z(N86) );
  COR2X1 U22 ( .A(N80), .B(N81), .Z(N82) );
  COR2X1 U23 ( .A(N59), .B(N60), .Z(N61) );
  COR2X1 U24 ( .A(N55), .B(N56), .Z(N57) );
  COR2X1 U25 ( .A(N51), .B(N52), .Z(N53) );
  COR2X1 U26 ( .A(N46), .B(N47), .Z(N48) );
  COR2X1 U27 ( .A(N32), .B(n10), .Z(N33) );
  COR2X1 U28 ( .A(N29), .B(state[0]), .Z(N30) );
  COR2X1 U29 ( .A(N26), .B(n10), .Z(N27) );
  COR2X1 U30 ( .A(N23), .B(state[0]), .Z(N24) );
  CAN3X1 U31 ( .A(n11), .B(n12), .C(N231), .Z(N264) );
  CND2X1 U32 ( .A(n13), .B(n14), .Z(N232) );
  COR4X1 U33 ( .A(n15), .B(n16), .C(n17), .D(N22), .Z(N230) );
  CIVX1 U34 ( .A(n18), .Z(n15) );
  COND4CX1 U35 ( .A(N31), .B(N279), .C(n19), .D(col[3]), .Z(n18) );
  CND2X1 U36 ( .A(n20), .B(n21), .Z(N228) );
  CANR4CX1 U37 ( .A(n22), .B(n23), .C(col[2]), .D(N22), .Z(n20) );
  CIVX1 U38 ( .A(n24), .Z(n23) );
  CND4X1 U39 ( .A(n25), .B(n26), .C(n14), .D(n27), .Z(N226) );
  COND1XL U40 ( .A(n22), .B(n28), .C(col[1]), .Z(n25) );
  CIVX1 U41 ( .A(n29), .Z(n22) );
  CND2X1 U42 ( .A(n30), .B(n21), .Z(N224) );
  CANR4CX1 U43 ( .A(N31), .B(n19), .C(col[0]), .D(n17), .Z(n30) );
  CND3XL U44 ( .A(n31), .B(n32), .C(n29), .Z(n19) );
  COND3X1 U45 ( .A(N268), .B(n12), .C(n32), .D(n13), .Z(N222) );
  COAN1X1 U46 ( .A(N282), .B(n27), .C(n21), .Z(n13) );
  CIVX1 U47 ( .A(N34), .Z(n12) );
  COND3X1 U48 ( .A(N282), .B(n27), .C(n29), .D(n33), .Z(N218) );
  CNR2X1 U49 ( .A(N284), .B(n17), .Z(n33) );
  CND2X1 U50 ( .A(N36), .B(N19), .Z(n29) );
  CIVX1 U51 ( .A(N22), .Z(n27) );
  CND4X1 U52 ( .A(n34), .B(n35), .C(n36), .D(n37), .Z(N231) );
  CNR2X1 U53 ( .A(N283), .B(N220), .Z(n37) );
  CND2X1 U54 ( .A(n11), .B(n38), .Z(N220) );
  CND2X1 U55 ( .A(N282), .B(N22), .Z(n11) );
  CANR2X1 U56 ( .A(N139), .B(N28), .C(N180), .D(N31), .Z(n36) );
  CANR2X1 U57 ( .A(N65), .B(N22), .C(N98), .D(N25), .Z(n34) );
  CND3XL U58 ( .A(n39), .B(n40), .C(n41), .Z(N216) );
  CANR2X1 U59 ( .A(data[3]), .B(n42), .C(N64), .D(N22), .Z(n41) );
  CND2X1 U60 ( .A(N138), .B(n17), .Z(n40) );
  CANR2X1 U61 ( .A(N97), .B(n16), .C(N179), .D(n43), .Z(n39) );
  CND3XL U62 ( .A(n44), .B(n45), .C(n46), .Z(N214) );
  CANR2X1 U63 ( .A(data[2]), .B(n42), .C(N63), .D(N22), .Z(n46) );
  CND2X1 U64 ( .A(n35), .B(n38), .Z(n42) );
  CANR2X1 U65 ( .A(N279), .B(N31), .C(N276), .D(N28), .Z(n35) );
  CND2X1 U66 ( .A(N137), .B(n17), .Z(n45) );
  CANR2X1 U67 ( .A(N96), .B(n16), .C(N178), .D(n43), .Z(n44) );
  CND3XL U68 ( .A(n26), .B(n14), .C(n47), .Z(N212) );
  CND2X1 U69 ( .A(data[1]), .B(n28), .Z(n47) );
  CND3XL U70 ( .A(n32), .B(n48), .C(n38), .Z(n28) );
  CND2X1 U71 ( .A(N273), .B(N25), .Z(n38) );
  CIVX1 U72 ( .A(n17), .Z(n14) );
  CNR2X1 U73 ( .A(n32), .B(N276), .Z(n17) );
  CIVX1 U74 ( .A(N28), .Z(n32) );
  CIVX1 U75 ( .A(n43), .Z(n26) );
  COND1XL U76 ( .A(n49), .B(n24), .C(n21), .Z(N210) );
  CNR2X1 U77 ( .A(n43), .B(n16), .Z(n21) );
  CNR2X1 U78 ( .A(n31), .B(N273), .Z(n16) );
  CIVX1 U79 ( .A(N25), .Z(n31) );
  CNR2X1 U80 ( .A(n48), .B(N279), .Z(n43) );
  CIVX1 U81 ( .A(N31), .Z(n48) );
  CANR3X1 U82 ( .A(N276), .B(N28), .C(N25), .D(N31), .Z(n24) );
  COR2X1 U83 ( .A(N20), .B(n10), .Z(N21) );
  CAN2X1 U84 ( .A(N18), .B(n10), .Z(N19) );
  COR2X1 U86 ( .A(N174), .B(N175), .Z(N176) );
  COR2X1 U87 ( .A(N170), .B(N171), .Z(N172) );
  COR2X1 U88 ( .A(N166), .B(N167), .Z(N168) );
  COR2X1 U89 ( .A(N162), .B(N163), .Z(N164) );
  COR2X1 U90 ( .A(N133), .B(N134), .Z(N135) );
  COR2X1 U91 ( .A(N129), .B(N130), .Z(N131) );
  COR2X1 U92 ( .A(N125), .B(N126), .Z(N127) );
  COR2X1 U93 ( .A(N121), .B(N122), .Z(N123) );
  CMX2X1 U94 ( .A0(next_state[0]), .A1(N218), .S(N231), .Z(n61) );
  CMX2X1 U95 ( .A0(next_state[2]), .A1(N222), .S(N231), .Z(n60) );
  CMX2X1 U96 ( .A0(next_state[1]), .A1(N220), .S(N231), .Z(n59) );
  CMX2X1 U97 ( .A0(v), .A1(N232), .S(N231), .Z(n58) );
  CMX2X1 U98 ( .A0(data[0]), .A1(N210), .S(N264), .Z(n57) );
  CMX2X1 U99 ( .A0(data[1]), .A1(N212), .S(N264), .Z(n56) );
  CMX2X1 U100 ( .A0(data[2]), .A1(N214), .S(N264), .Z(n55) );
  CMX2X1 U101 ( .A0(data[3]), .A1(N216), .S(N264), .Z(n54) );
  CMX2X1 U102 ( .A0(col[0]), .A1(N224), .S(N264), .Z(n53) );
  CMX2X1 U103 ( .A0(col[1]), .A1(N226), .S(N264), .Z(n52) );
  CMX2X1 U104 ( .A0(col[2]), .A1(N228), .S(N264), .Z(n51) );
  CMX2X1 U105 ( .A0(col[3]), .A1(N230), .S(N264), .Z(n50) );
  CFD3QXL \store_reg[3]  ( .D(n70), .CP(clock), .CD(n8), .SD(n9), .Q(store[3])
         );
  CFD3QXL \store_reg[2]  ( .D(n72), .CP(clock), .CD(n6), .SD(n7), .Q(store[2])
         );
  CFD3QXL \store_reg[1]  ( .D(n74), .CP(clock), .CD(n4), .SD(n5), .Q(store[1])
         );
  CFD3QXL \store_reg[0]  ( .D(n76), .CP(clock), .CD(n2), .SD(n3), .Q(store[0])
         );
  CFD2XL \state_reg[2]  ( .D(n78), .CP(clock), .CD(reset), .Q(state[2]), .QN(
        N15) );
  CFD2XL \state_reg[1]  ( .D(n79), .CP(clock), .CD(reset), .Q(state[1]), .QN(
        N16) );
  CFD2XL \state_reg[0]  ( .D(n80), .CP(clock), .CD(reset), .Q(state[0]), .QN(
        n10) );
  CFD1QXL v_reg ( .D(n58), .CP(clock), .Q(v) );
  CFD1QXL \next_state_reg[2]  ( .D(n60), .CP(clock), .Q(next_state[2]) );
  CFD1QXL \next_state_reg[1]  ( .D(n59), .CP(clock), .Q(next_state[1]) );
  CFD1QXL \next_state_reg[0]  ( .D(n61), .CP(clock), .Q(next_state[0]) );
  CFD1QXL \data_reg[3]  ( .D(n54), .CP(clock), .Q(data[3]) );
  CFD1QXL \data_reg[2]  ( .D(n55), .CP(clock), .Q(data[2]) );
  CFD1QXL \data_reg[1]  ( .D(n56), .CP(clock), .Q(data[1]) );
  CFD1QXL \col_reg[3]  ( .D(n50), .CP(clock), .Q(col[3]) );
  CFD1QXL \col_reg[2]  ( .D(n51), .CP(clock), .Q(col[2]) );
  CFD1QXL \col_reg[1]  ( .D(n52), .CP(clock), .Q(col[1]) );
  CFD1QXL \col_reg[0]  ( .D(n53), .CP(clock), .Q(col[0]) );
  CFD1XL \data_reg[0]  ( .D(n57), .CP(clock), .Q(data[0]), .QN(n49) );
  CDLY1XL U106 ( .A(row[3]), .Z(n71) );
  CNIVX1 U107 ( .A(n71), .Z(n70) );
  CDLY1XL U108 ( .A(row[2]), .Z(n73) );
  CNIVX1 U109 ( .A(n73), .Z(n72) );
  CDLY1XL U110 ( .A(row[1]), .Z(n75) );
  CNIVX1 U111 ( .A(n75), .Z(n74) );
  CDLY1XL U112 ( .A(row[0]), .Z(n77) );
  CNIVX1 U113 ( .A(n77), .Z(n76) );
  CNIVX1 U114 ( .A(next_state[2]), .Z(n78) );
  CNIVX1 U115 ( .A(next_state[1]), .Z(n79) );
  CNIVX1 U116 ( .A(next_state[0]), .Z(n80) );
endmodule

