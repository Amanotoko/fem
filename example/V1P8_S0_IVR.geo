lc = 1e-2;
Point(1) = {1.709, 1.299, 0.10548, lc} ;
Point(2) = {1.70994, 1.29907, 0.10548, lc} ;
Point(3) = {1.71085, 1.29929, 0.10548, lc} ;
Point(4) = {1.71172, 1.29965, 0.10548, lc} ;
Point(5) = {1.71253, 1.30015, 0.10548, lc} ;
Point(6) = {1.71324, 1.30076, 0.10548, lc} ;
Point(7) = {1.71385, 1.30147, 0.10548, lc} ;
Point(8) = {1.71418, 1.302, 0.10548, lc} ;
Point(9) = {1.715, 1.302, 0.10548, lc} ;
Point(10) = {1.715, 1.372, 0.10548, lc} ;
Point(11) = {1.711, 1.376, 0.10548, lc} ;
Point(12) = {1.695, 1.376, 0.10548, lc} ;
Point(13) = {1.69, 1.371, 0.10548, lc} ;
Point(14) = {1.69, 1.356, 0.10548, lc} ;
Point(15) = {1.677, 1.343, 0.10548, lc} ;
Point(16) = {1.67606, 1.34293, 0.10548, lc} ;
Point(17) = {1.67515, 1.34271, 0.10548, lc} ;
Point(18) = {1.67428, 1.34235, 0.10548, lc} ;
Point(19) = {1.67347, 1.34185, 0.10548, lc} ;
Point(20) = {1.67276, 1.34124, 0.10548, lc} ;
Point(21) = {1.67215, 1.34053, 0.10548, lc} ;
Point(22) = {1.67165, 1.33972, 0.10548, lc} ;
Point(23) = {1.67129, 1.33885, 0.10548, lc} ;
Point(24) = {1.67107, 1.33794, 0.10548, lc} ;
Point(25) = {1.671, 1.337, 0.10548, lc} ;
Point(26) = {1.67107, 1.33606, 0.10548, lc} ;
Point(27) = {1.67129, 1.33515, 0.10548, lc} ;
Point(28) = {1.67165, 1.33428, 0.10548, lc} ;
Point(29) = {1.67215, 1.33347, 0.10548, lc} ;
Point(30) = {1.67276, 1.33276, 0.10548, lc} ;
Point(31) = {1.67347, 1.33215, 0.10548, lc} ;
Point(32) = {1.674, 1.33182, 0.10548, lc} ;
Point(33) = {1.674, 1.32854, 0.10548, lc} ;
Point(34) = {1.67437, 1.32787, 0.10548, lc} ;
Point(35) = {1.6747, 1.32717, 0.10548, lc} ;
Point(36) = {1.675, 1.32646, 0.10548, lc} ;
Point(37) = {1.67526, 1.32574, 0.10548, lc} ;
Point(38) = {1.691, 1.31, 0.10548, lc} ;
Point(39) = {1.691, 1.305, 0.10548, lc} ;
Point(40) = {1.694, 1.302, 0.10548, lc} ;
Point(41) = {1.70382, 1.302, 0.10548, lc} ;
Point(42) = {1.70415, 1.30147, 0.10548, lc} ;
Point(43) = {1.70476, 1.30076, 0.10548, lc} ;
Point(44) = {1.70547, 1.30015, 0.10548, lc} ;
Point(45) = {1.70628, 1.29965, 0.10548, lc} ;
Point(46) = {1.70715, 1.29929, 0.10548, lc} ;
Point(47) = {1.70806, 1.29907, 0.10548, lc} ;
Line(48) = {1,2} ;
Line(49) = {2,3} ;
Line(50) = {3,4} ;
Line(51) = {4,5} ;
Line(52) = {5,6} ;
Line(53) = {6,7} ;
Line(54) = {7,8} ;
Line(55) = {8,9} ;
Line(56) = {9,10} ;
Line(57) = {10,11} ;
Line(58) = {11,12} ;
Line(59) = {12,13} ;
Line(60) = {13,14} ;
Line(61) = {14,15} ;
Line(62) = {15,16} ;
Line(63) = {16,17} ;
Line(64) = {17,18} ;
Line(65) = {18,19} ;
Line(66) = {19,20} ;
Line(67) = {20,21} ;
Line(68) = {21,22} ;
Line(69) = {22,23} ;
Line(70) = {23,24} ;
Line(71) = {24,25} ;
Line(72) = {25,26} ;
Line(73) = {26,27} ;
Line(74) = {27,28} ;
Line(75) = {28,29} ;
Line(76) = {29,30} ;
Line(77) = {30,31} ;
Line(78) = {31,32} ;
Line(79) = {32,33} ;
Line(80) = {33,34} ;
Line(81) = {34,35} ;
Line(82) = {35,36} ;
Line(83) = {36,37} ;
Line(84) = {37,38} ;
Line(85) = {38,39} ;
Line(86) = {39,40} ;
Line(87) = {40,41} ;
Line(88) = {41,42} ;
Line(89) = {42,43} ;
Line(90) = {43,44} ;
Line(91) = {44,45} ;
Line(92) = {45,46} ;
Line(93) = {46,47} ;
Line(94) = {47,1} ;
Line Loop(95) = {48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94} ;
Plane Surface(96) = {95} ;
Extrude{0,0,0.00137}{ Surface{96}; }
Point(1049) = {1.709,1.369,0.10548, lc};
Point(1050) = {1.709,1.375,0.10548, lc};
Point(1051) = {1.715,1.369,0.10548, lc};
Point(1052) = {1.709,1.363,0.10548, lc};
Point(1053) = {1.703,1.369,0.10548, lc};
Circle(1054) = {1050, 1049,1051};
Circle(1055) = {1051, 1049,1052};
Circle(1056) = {1052, 1049,1053};
Circle(1057) = {1053, 1049,1050};
Line Loop(1058) = {1054,1055,1056,1057};
Plane Surface(1059) = {1058};
Extrude {0,0,0.00137} { 
  Surface{1059};
}
Point(1328) = {1.709,1.337,0.10548, lc};
Point(1329) = {1.709,1.343,0.10548, lc};
Point(1330) = {1.715,1.337,0.10548, lc};
Point(1331) = {1.709,1.331,0.10548, lc};
Point(1332) = {1.703,1.337,0.10548, lc};
Circle(1333) = {1329, 1328,1330};
Circle(1334) = {1330, 1328,1331};
Circle(1335) = {1331, 1328,1332};
Circle(1336) = {1332, 1328,1329};
Line Loop(1337) = {1333,1334,1335,1336};
Plane Surface(1338) = {1337};
Extrude {0,0,0.00137} { 
  Surface{1338};
}
Point(1607) = {1.709,1.305,0.10548, lc};
Point(1608) = {1.709,1.311,0.10548, lc};
Point(1609) = {1.715,1.305,0.10548, lc};
Point(1610) = {1.709,1.299,0.10548, lc};
Point(1611) = {1.703,1.305,0.10548, lc};
Circle(1612) = {1608, 1607,1609};
Circle(1613) = {1609, 1607,1610};
Circle(1614) = {1610, 1607,1611};
Circle(1615) = {1611, 1607,1608};
Line Loop(1616) = {1612,1613,1614,1615};
Plane Surface(1617) = {1616};
Extrude {0,0,0.00137} { 
  Surface{1617};
}
Point(1886) = {1.677,1.337,0.10548, lc};
Point(1887) = {1.677,1.343,0.10548, lc};
Point(1888) = {1.683,1.337,0.10548, lc};
Point(1889) = {1.677,1.331,0.10548, lc};
Point(1890) = {1.671,1.337,0.10548, lc};
Circle(1891) = {1887, 1886,1888};
Circle(1892) = {1888, 1886,1889};
Circle(1893) = {1889, 1886,1890};
Circle(1894) = {1890, 1886,1887};
Line Loop(1895) = {1891,1892,1893,1894};
Plane Surface(1896) = {1895};
Extrude {0,0,0.00137} { 
  Surface{1896};
}
