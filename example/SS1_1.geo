lc = 1e-2;
Point(1) = {2.6816, 1.45438, 0.10548, lc} ;
Point(2) = {2.6926, 1.45438, 0.10548, lc} ;
Point(3) = {2.6926, 1.48738, 0.10548, lc} ;
Point(4) = {2.6892, 1.48738, 0.10548, lc} ;
Point(5) = {2.6892, 1.4989, 0.10548, lc} ;
Point(6) = {2.68917, 1.4989, 0.10548, lc} ;
Point(7) = {2.68917, 1.49923, 0.10548, lc} ;
Point(8) = {2.68897, 1.49985, 0.10548, lc} ;
Point(9) = {2.68858, 1.50039, 0.10548, lc} ;
Point(10) = {2.67748, 1.51148, 0.10548, lc} ;
Point(11) = {2.67747, 1.51147, 0.10548, lc} ;
Point(12) = {2.67723, 1.5117, 0.10548, lc} ;
Point(13) = {2.67665, 1.512, 0.10548, lc} ;
Point(14) = {2.676, 1.5121, 0.10548, lc} ;
Point(15) = {2.63487, 1.5121, 0.10548, lc} ;
Point(16) = {2.6091, 1.53787, 0.10548, lc} ;
Point(17) = {2.6091, 1.5541, 0.10548, lc} ;
Point(18) = {2.60907, 1.5541, 0.10548, lc} ;
Point(19) = {2.60907, 1.55443, 0.10548, lc} ;
Point(20) = {2.60887, 1.55505, 0.10548, lc} ;
Point(21) = {2.60848, 1.55558, 0.10548, lc} ;
Point(22) = {2.59259, 1.57149, 0.10548, lc} ;
Point(23) = {2.59257, 1.57147, 0.10548, lc} ;
Point(24) = {2.59233, 1.5717, 0.10548, lc} ;
Point(25) = {2.59175, 1.572, 0.10548, lc} ;
Point(26) = {2.5911, 1.5721, 0.10548, lc} ;
Point(27) = {2.584, 1.5721, 0.10548, lc} ;
Point(28) = {2.584, 1.58, 0.10548, lc} ;
Point(29) = {2.564, 1.58, 0.10548, lc} ;
Point(30) = {2.564, 1.56, 0.10548, lc} ;
Point(31) = {2.584, 1.56, 0.10548, lc} ;
Point(32) = {2.584, 1.5679, 0.10548, lc} ;
Point(33) = {2.59023, 1.5679, 0.10548, lc} ;
Point(34) = {2.6049, 1.55323, 0.10548, lc} ;
Point(35) = {2.6049, 1.537, 0.10548, lc} ;
Point(36) = {2.605, 1.53635, 0.10548, lc} ;
Point(37) = {2.6053, 1.53577, 0.10548, lc} ;
Point(38) = {2.60553, 1.53553, 0.10548, lc} ;
Point(39) = {2.60552, 1.53551, 0.10548, lc} ;
Point(40) = {2.63252, 1.50852, 0.10548, lc} ;
Point(41) = {2.63305, 1.50813, 0.10548, lc} ;
Point(42) = {2.63367, 1.50793, 0.10548, lc} ;
Point(43) = {2.634, 1.50793, 0.10548, lc} ;
Point(44) = {2.634, 1.5079, 0.10548, lc} ;
Point(45) = {2.67513, 1.5079, 0.10548, lc} ;
Point(46) = {2.685, 1.49803, 0.10548, lc} ;
Point(47) = {2.685, 1.48738, 0.10548, lc} ;
Point(48) = {2.6816, 1.48738, 0.10548, lc} ;
Line(49) = {1,2} ;
Line(50) = {2,3} ;
Line(51) = {3,4} ;
Line(52) = {4,5} ;
Line(53) = {5,6} ;
Line(54) = {6,7} ;
Line(55) = {7,8} ;
Line(56) = {8,9} ;
Line(57) = {9,10} ;
Line(58) = {10,11} ;
Line(59) = {11,12} ;
Line(60) = {12,13} ;
Line(61) = {13,14} ;
Line(62) = {14,15} ;
Line(63) = {15,16} ;
Line(64) = {16,17} ;
Line(65) = {17,18} ;
Line(66) = {18,19} ;
Line(67) = {19,20} ;
Line(68) = {20,21} ;
Line(69) = {21,22} ;
Line(70) = {22,23} ;
Line(71) = {23,24} ;
Line(72) = {24,25} ;
Line(73) = {25,26} ;
Line(74) = {26,27} ;
Line(75) = {27,28} ;
Line(76) = {28,29} ;
Line(77) = {29,30} ;
Line(78) = {30,31} ;
Line(79) = {31,32} ;
Line(80) = {32,33} ;
Line(81) = {33,34} ;
Line(82) = {34,35} ;
Line(83) = {35,36} ;
Line(84) = {36,37} ;
Line(85) = {37,38} ;
Line(86) = {38,39} ;
Line(87) = {39,40} ;
Line(88) = {40,41} ;
Line(89) = {41,42} ;
Line(90) = {42,43} ;
Line(91) = {43,44} ;
Line(92) = {44,45} ;
Line(93) = {45,46} ;
Line(94) = {46,47} ;
Line(95) = {47,48} ;
Line(96) = {48,1} ;
Line Loop(97) = {49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96} ;
Plane Surface(98) = {97} ;
Extrude{0,0,0.00137}{ Surface{98}; }
Point(1067) = {2.6816, 1.45438, 0.10548, lc} ;
Point(1068) = {2.6816, 1.48738, 0.10548, lc} ;
Point(1069) = {2.6926, 1.48738, 0.10548, lc} ;
Point(1070) = {2.6926, 1.45438, 0.10548, lc} ;
Line(1071) = {1067,1068} ;
Line(1072) = {1068,1069} ;
Line(1073) = {1069,1070} ;
Line(1074) = {1070,1067} ;
Line Loop(1075) = {1071,1072,1073,1074} ;
Plane Surface(1076) = {1075} ;
Extrude{0,0,0.00137}{ Surface{1076}; }
Point(1341) = {2.584, 1.58, 0.10548, lc} ;
Point(1342) = {2.584, 1.56, 0.10548, lc} ;
Point(1343) = {2.564, 1.56, 0.10548, lc} ;
Point(1344) = {2.564, 1.58, 0.10548, lc} ;
Line(1345) = {1341,1342} ;
Line(1346) = {1342,1343} ;
Line(1347) = {1343,1344} ;
Line(1348) = {1344,1341} ;
Line Loop(1349) = {1345,1346,1347,1348} ;
Plane Surface(1350) = {1349} ;
Extrude{0,0,0.00137}{ Surface{1350}; }