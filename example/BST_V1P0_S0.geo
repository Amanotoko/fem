lc = 1e-2;
Point(1) = {3.0145, 1.114, 0.10548, lc} ;
Point(2) = {3.1395, 1.114, 0.10548, lc} ;
Point(3) = {3.1395, 1.15, 0.10548, lc} ;
Point(4) = {3.142, 1.15, 0.10548, lc} ;
Point(5) = {3.142, 1.205, 0.10548, lc} ;
Point(6) = {3.1395, 1.2075, 0.10548, lc} ;
Point(7) = {3.1395, 1.214, 0.10548, lc} ;
Point(8) = {3.133, 1.214, 0.10548, lc} ;
Point(9) = {3.078, 1.269, 0.10548, lc} ;
Point(10) = {3.073, 1.269, 0.10548, lc} ;
Point(11) = {3.029, 1.313, 0.10548, lc} ;
Point(12) = {3.001, 1.313, 0.10548, lc} ;
Point(13) = {3.001, 1.38, 0.10548, lc} ;
Point(14) = {2.976, 1.405, 0.10548, lc} ;
Point(15) = {2.945, 1.405, 0.10548, lc} ;
Point(16) = {2.944, 1.404, 0.10548, lc} ;
Point(17) = {2.944, 1.38344, 0.10548, lc} ;
Point(18) = {2.93256, 1.372, 0.10548, lc} ;
Point(19) = {2.91044, 1.372, 0.10548, lc} ;
Point(20) = {2.90444, 1.378, 0.10548, lc} ;
Point(21) = {2.903, 1.378, 0.10548, lc} ;
Point(22) = {2.894, 1.387, 0.10548, lc} ;
Point(23) = {2.88938, 1.387, 0.10548, lc} ;
Point(24) = {2.88938, 1.38903, 0.10548, lc} ;
Point(25) = {2.85638, 1.38903, 0.10548, lc} ;
Point(26) = {2.85638, 1.387, 0.10548, lc} ;
Point(27) = {2.856, 1.387, 0.10548, lc} ;
Point(28) = {2.856, 1.361, 0.10548, lc} ;
Point(29) = {2.85638, 1.361, 0.10548, lc} ;
Point(30) = {2.85638, 1.35834, 0.10548, lc} ;
Point(31) = {2.88938, 1.35834, 0.10548, lc} ;
Point(32) = {2.88938, 1.361, 0.10548, lc} ;
Point(33) = {2.90056, 1.361, 0.10548, lc} ;
Point(34) = {2.90856, 1.353, 0.10548, lc} ;
Point(35) = {2.919, 1.353, 0.10548, lc} ;
Point(36) = {2.987, 1.285, 0.10548, lc} ;
Point(37) = {2.987, 1.254, 0.10548, lc} ;
Point(38) = {2.952, 1.219, 0.10548, lc} ;
Point(39) = {2.952, 1.169, 0.10548, lc} ;
Point(40) = {2.971, 1.15, 0.10548, lc} ;
Point(41) = {3.0145, 1.15, 0.10548, lc} ;
Line(42) = {1,2} ;
Line(43) = {2,3} ;
Line(44) = {3,4} ;
Line(45) = {4,5} ;
Line(46) = {5,6} ;
Line(47) = {6,7} ;
Line(48) = {7,8} ;
Line(49) = {8,9} ;
Line(50) = {9,10} ;
Line(51) = {10,11} ;
Line(52) = {11,12} ;
Line(53) = {12,13} ;
Line(54) = {13,14} ;
Line(55) = {14,15} ;
Line(56) = {15,16} ;
Line(57) = {16,17} ;
Line(58) = {17,18} ;
Line(59) = {18,19} ;
Line(60) = {19,20} ;
Line(61) = {20,21} ;
Line(62) = {21,22} ;
Line(63) = {22,23} ;
Line(64) = {23,24} ;
Line(65) = {24,25} ;
Line(66) = {25,26} ;
Line(67) = {26,27} ;
Line(68) = {27,28} ;
Line(69) = {28,29} ;
Line(70) = {29,30} ;
Line(71) = {30,31} ;
Line(72) = {31,32} ;
Line(73) = {32,33} ;
Line(74) = {33,34} ;
Line(75) = {34,35} ;
Line(76) = {35,36} ;
Line(77) = {36,37} ;
Line(78) = {37,38} ;
Line(79) = {38,39} ;
Line(80) = {39,40} ;
Line(81) = {40,41} ;
Line(82) = {41,1} ;
Line Loop(83) = {42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82} ;
Plane Surface(84) = {83} ;
Extrude{0,0,0.00137}{ Surface{84}; }
Point(941) = {3.0145, 1.114, 0.10548, lc} ;
Point(942) = {3.0145, 1.214, 0.10548, lc} ;
Point(943) = {3.1395, 1.214, 0.10548, lc} ;
Point(944) = {3.1395, 1.114, 0.10548, lc} ;
Line(945) = {941,942} ;
Line(946) = {942,943} ;
Line(947) = {943,944} ;
Line(948) = {944,941} ;
Line Loop(949) = {945,946,947,948} ;
Plane Surface(950) = {949} ;
Extrude{0,0,0.00137}{ Surface{950}; }
Point(1215) = {2.85638, 1.35834, 0.10548, lc} ;
Point(1216) = {2.85638, 1.36934, 0.10548, lc} ;
Point(1217) = {2.88938, 1.36934, 0.10548, lc} ;
Point(1218) = {2.88938, 1.35834, 0.10548, lc} ;
Line(1219) = {1215,1216} ;
Line(1220) = {1216,1217} ;
Line(1221) = {1217,1218} ;
Line(1222) = {1218,1215} ;
Line Loop(1223) = {1219,1220,1221,1222} ;
Plane Surface(1224) = {1223} ;
Extrude{0,0,0.00137}{ Surface{1224}; }
Point(1489) = {2.85638, 1.37803, 0.10548, lc} ;
Point(1490) = {2.85638, 1.38903, 0.10548, lc} ;
Point(1491) = {2.88938, 1.38903, 0.10548, lc} ;
Point(1492) = {2.88938, 1.37803, 0.10548, lc} ;
Line(1493) = {1489,1490} ;
Line(1494) = {1490,1491} ;
Line(1495) = {1491,1492} ;
Line(1496) = {1492,1489} ;
Line Loop(1497) = {1493,1494,1495,1496} ;
Plane Surface(1498) = {1497} ;
Extrude{0,0,0.00137}{ Surface{1498}; }
Point(1763) = {2.976, 1.404, 0.10548, lc} ;
Point(1764) = {2.976, 1.364, 0.10548, lc} ;
Point(1765) = {2.946, 1.364, 0.10548, lc} ;
Point(1766) = {2.946, 1.404, 0.10548, lc} ;
Line(1767) = {1763,1764} ;
Line(1768) = {1764,1765} ;
Line(1769) = {1765,1766} ;
Line(1770) = {1766,1763} ;
Line Loop(1771) = {1767,1768,1769,1770} ;
Plane Surface(1772) = {1771} ;
Extrude{0,0,0.00137}{ Surface{1772}; }
