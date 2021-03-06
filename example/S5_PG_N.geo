lc = 1e-2;
Point(1) = {2.141, 0.548, 0.10548, lc} ;
Point(2) = {2.161, 0.548, 0.10548, lc} ;
Point(3) = {2.161, 0.568, 0.10548, lc} ;
Point(4) = {2.1531, 0.568, 0.10548, lc} ;
Point(5) = {2.1531, 0.58113, 0.10548, lc} ;
Point(6) = {2.15887, 0.5869, 0.10548, lc} ;
Point(7) = {2.173, 0.5869, 0.10548, lc} ;
Point(8) = {2.17365, 0.587003, 0.10548, lc} ;
Point(9) = {2.17423, 0.587301, 0.10548, lc} ;
Point(10) = {2.17447, 0.587533, 0.10548, lc} ;
Point(11) = {2.17448, 0.587515, 0.10548, lc} ;
Point(12) = {2.18749, 0.600515, 0.10548, lc} ;
Point(13) = {2.18787, 0.601047, 0.10548, lc} ;
Point(14) = {2.18807, 0.601672, 0.10548, lc} ;
Point(15) = {2.18807, 0.602, 0.10548, lc} ;
Point(16) = {2.1881, 0.602, 0.10548, lc} ;
Point(17) = {2.1881, 0.6125, 0.10548, lc} ;
Point(18) = {2.206, 0.6125, 0.10548, lc} ;
Point(19) = {2.206, 0.6275, 0.10548, lc} ;
Point(20) = {2.1881, 0.6275, 0.10548, lc} ;
Point(21) = {2.1881, 0.6381, 0.10548, lc} ;
Point(22) = {2.206, 0.6381, 0.10548, lc} ;
Point(23) = {2.206, 0.6531, 0.10548, lc} ;
Point(24) = {2.166, 0.6531, 0.10548, lc} ;
Point(25) = {2.166, 0.6381, 0.10548, lc} ;
Point(26) = {2.1839, 0.6381, 0.10548, lc} ;
Point(27) = {2.1839, 0.6275, 0.10548, lc} ;
Point(28) = {2.166, 0.6275, 0.10548, lc} ;
Point(29) = {2.166, 0.6125, 0.10548, lc} ;
Point(30) = {2.1839, 0.6125, 0.10548, lc} ;
Point(31) = {2.1839, 0.60287, 0.10548, lc} ;
Point(32) = {2.17213, 0.5911, 0.10548, lc} ;
Point(33) = {2.158, 0.5911, 0.10548, lc} ;
Point(34) = {2.158, 0.591074, 0.10548, lc} ;
Point(35) = {2.15767, 0.591074, 0.10548, lc} ;
Point(36) = {2.15705, 0.590871, 0.10548, lc} ;
Point(37) = {2.15652, 0.590485, 0.10548, lc} ;
Point(38) = {2.14952, 0.583485, 0.10548, lc} ;
Point(39) = {2.14953, 0.583467, 0.10548, lc} ;
Point(40) = {2.1493, 0.583234, 0.10548, lc} ;
Point(41) = {2.149, 0.582649, 0.10548, lc} ;
Point(42) = {2.1489, 0.582, 0.10548, lc} ;
Point(43) = {2.1489, 0.568, 0.10548, lc} ;
Point(44) = {2.141, 0.568, 0.10548, lc} ;
Line(45) = {1,2} ;
Line(46) = {2,3} ;
Line(47) = {3,4} ;
Line(48) = {4,5} ;
Line(49) = {5,6} ;
Line(50) = {6,7} ;
Line(51) = {7,8} ;
Line(52) = {8,9} ;
Line(53) = {9,10} ;
Line(54) = {10,11} ;
Line(55) = {11,12} ;
Line(56) = {12,13} ;
Line(57) = {13,14} ;
Line(58) = {14,15} ;
Line(59) = {15,16} ;
Line(60) = {16,17} ;
Line(61) = {17,18} ;
Line(62) = {18,19} ;
Line(63) = {19,20} ;
Line(64) = {20,21} ;
Line(65) = {21,22} ;
Line(66) = {22,23} ;
Line(67) = {23,24} ;
Line(68) = {24,25} ;
Line(69) = {25,26} ;
Line(70) = {26,27} ;
Line(71) = {27,28} ;
Line(72) = {28,29} ;
Line(73) = {29,30} ;
Line(74) = {30,31} ;
Line(75) = {31,32} ;
Line(76) = {32,33} ;
Line(77) = {33,34} ;
Line(78) = {34,35} ;
Line(79) = {35,36} ;
Line(80) = {36,37} ;
Line(81) = {37,38} ;
Line(82) = {38,39} ;
Line(83) = {39,40} ;
Line(84) = {40,41} ;
Line(85) = {41,42} ;
Line(86) = {42,43} ;
Line(87) = {43,44} ;
Line(88) = {44,1} ;
Line Loop(89) = {45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88} ;
Plane Surface(90) = {89} ;
Extrude{0,0,0.00137}{ Surface{90}; }
Point(995) = {2.206, 0.6531, 0.10548, lc} ;
Point(996) = {2.206, 0.6381, 0.10548, lc} ;
Point(997) = {2.166, 0.6381, 0.10548, lc} ;
Point(998) = {2.166, 0.6531, 0.10548, lc} ;
Line(999) = {995,996} ;
Line(1000) = {996,997} ;
Line(1001) = {997,998} ;
Line(1002) = {998,995} ;
Line Loop(1003) = {999,1000,1001,1002} ;
Plane Surface(1004) = {1003} ;
Extrude{0,0,0.00137}{ Surface{1004}; }
Point(1269) = {2.206, 0.6275, 0.10548, lc} ;
Point(1270) = {2.206, 0.6125, 0.10548, lc} ;
Point(1271) = {2.166, 0.6125, 0.10548, lc} ;
Point(1272) = {2.166, 0.6275, 0.10548, lc} ;
Line(1273) = {1269,1270} ;
Line(1274) = {1270,1271} ;
Line(1275) = {1271,1272} ;
Line(1276) = {1272,1269} ;
Line Loop(1277) = {1273,1274,1275,1276} ;
Plane Surface(1278) = {1277} ;
Extrude{0,0,0.00137}{ Surface{1278}; }
Point(1543) = {2.161, 0.568, 0.10548, lc} ;
Point(1544) = {2.161, 0.548, 0.10548, lc} ;
Point(1545) = {2.141, 0.548, 0.10548, lc} ;
Point(1546) = {2.141, 0.568, 0.10548, lc} ;
Line(1547) = {1543,1544} ;
Line(1548) = {1544,1545} ;
Line(1549) = {1545,1546} ;
Line(1550) = {1546,1543} ;
Line Loop(1551) = {1547,1548,1549,1550} ;
Plane Surface(1552) = {1551} ;
Extrude{0,0,0.00137}{ Surface{1552}; }
