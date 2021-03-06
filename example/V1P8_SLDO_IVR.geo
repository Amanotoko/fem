lc = 1e-2;
Point(1) = {1.773, 1.267, 0.10548, lc} ;
Point(2) = {1.77394, 1.26707, 0.10548, lc} ;
Point(3) = {1.77485, 1.26729, 0.10548, lc} ;
Point(4) = {1.77572, 1.26765, 0.10548, lc} ;
Point(5) = {1.77653, 1.26815, 0.10548, lc} ;
Point(6) = {1.77724, 1.26876, 0.10548, lc} ;
Point(7) = {1.77785, 1.26947, 0.10548, lc} ;
Point(8) = {1.77835, 1.27028, 0.10548, lc} ;
Point(9) = {1.77871, 1.27115, 0.10548, lc} ;
Point(10) = {1.77893, 1.27206, 0.10548, lc} ;
Point(11) = {1.779, 1.273, 0.10548, lc} ;
Point(12) = {1.77893, 1.27394, 0.10548, lc} ;
Point(13) = {1.77871, 1.27485, 0.10548, lc} ;
Point(14) = {1.77835, 1.27572, 0.10548, lc} ;
Point(15) = {1.77785, 1.27653, 0.10548, lc} ;
Point(16) = {1.77724, 1.27724, 0.10548, lc} ;
Point(17) = {1.77653, 1.27785, 0.10548, lc} ;
Point(18) = {1.77572, 1.27835, 0.10548, lc} ;
Point(19) = {1.77485, 1.27871, 0.10548, lc} ;
Point(20) = {1.77394, 1.27893, 0.10548, lc} ;
Point(21) = {1.773, 1.279, 0.10548, lc} ;
Point(22) = {1.77206, 1.27893, 0.10548, lc} ;
Point(23) = {1.77115, 1.27871, 0.10548, lc} ;
Point(24) = {1.77028, 1.27835, 0.10548, lc} ;
Point(25) = {1.76947, 1.27785, 0.10548, lc} ;
Point(26) = {1.76876, 1.27724, 0.10548, lc} ;
Point(27) = {1.76815, 1.27653, 0.10548, lc} ;
Point(28) = {1.76765, 1.27572, 0.10548, lc} ;
Point(29) = {1.76729, 1.27485, 0.10548, lc} ;
Point(30) = {1.76707, 1.27394, 0.10548, lc} ;
Point(31) = {1.767, 1.273, 0.10548, lc} ;
Point(32) = {1.76707, 1.27206, 0.10548, lc} ;
Point(33) = {1.76729, 1.27115, 0.10548, lc} ;
Point(34) = {1.76765, 1.27028, 0.10548, lc} ;
Point(35) = {1.76815, 1.26947, 0.10548, lc} ;
Point(36) = {1.76876, 1.26876, 0.10548, lc} ;
Point(37) = {1.76947, 1.26815, 0.10548, lc} ;
Point(38) = {1.77028, 1.26765, 0.10548, lc} ;
Point(39) = {1.77115, 1.26729, 0.10548, lc} ;
Point(40) = {1.77206, 1.26707, 0.10548, lc} ;
Line(41) = {1,2} ;
Line(42) = {2,3} ;
Line(43) = {3,4} ;
Line(44) = {4,5} ;
Line(45) = {5,6} ;
Line(46) = {6,7} ;
Line(47) = {7,8} ;
Line(48) = {8,9} ;
Line(49) = {9,10} ;
Line(50) = {10,11} ;
Line(51) = {11,12} ;
Line(52) = {12,13} ;
Line(53) = {13,14} ;
Line(54) = {14,15} ;
Line(55) = {15,16} ;
Line(56) = {16,17} ;
Line(57) = {17,18} ;
Line(58) = {18,19} ;
Line(59) = {19,20} ;
Line(60) = {20,21} ;
Line(61) = {21,22} ;
Line(62) = {22,23} ;
Line(63) = {23,24} ;
Line(64) = {24,25} ;
Line(65) = {25,26} ;
Line(66) = {26,27} ;
Line(67) = {27,28} ;
Line(68) = {28,29} ;
Line(69) = {29,30} ;
Line(70) = {30,31} ;
Line(71) = {31,32} ;
Line(72) = {32,33} ;
Line(73) = {33,34} ;
Line(74) = {34,35} ;
Line(75) = {35,36} ;
Line(76) = {36,37} ;
Line(77) = {37,38} ;
Line(78) = {38,39} ;
Line(79) = {39,40} ;
Line(80) = {40,1} ;
Line Loop(81) = {41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80} ;
Plane Surface(82) = {81} ;
Extrude{0,0,0.00137}{ Surface{82}; }
Point(923) = {1.773,1.273,0.10548, lc};
Point(924) = {1.773,1.279,0.10548, lc};
Point(925) = {1.779,1.273,0.10548, lc};
Point(926) = {1.773,1.267,0.10548, lc};
Point(927) = {1.767,1.273,0.10548, lc};
Circle(928) = {924, 923,925};
Circle(929) = {925, 923,926};
Circle(930) = {926, 923,927};
Circle(931) = {927, 923,924};
Line Loop(932) = {928,929,930,931};
Plane Surface(933) = {932};
Extrude {0,0,0.00137} { 
  Surface{933};
}
