lc = 1e-2;
Point(1) = {2.804, -0.106, 0.10548, lc} ;
Point(2) = {2.816, -0.106, 0.10548, lc} ;
Point(3) = {2.81693, -0.105853, 0.10548, lc} ;
Point(4) = {2.81776, -0.105427, 0.10548, lc} ;
Point(5) = {2.81843, -0.104763, 0.10548, lc} ;
Point(6) = {2.81885, -0.103927, 0.10548, lc} ;
Point(7) = {2.819, -0.103, 0.10548, lc} ;
Point(8) = {2.81885, -0.102073, 0.10548, lc} ;
Point(9) = {2.81843, -0.101237, 0.10548, lc} ;
Point(10) = {2.81776, -0.100573, 0.10548, lc} ;
Point(11) = {2.81693, -0.100147, 0.10548, lc} ;
Point(12) = {2.816, -0.1, 0.10548, lc} ;
Point(13) = {2.813, -0.1, 0.10548, lc} ;
Point(14) = {2.813, -0.063, 0.10548, lc} ;
Point(15) = {2.81299, -0.063, 0.10548, lc} ;
Point(16) = {2.81287, -0.062116, 0.10548, lc} ;
Point(17) = {2.81245, -0.061274, 0.10548, lc} ;
Point(18) = {2.8118, -0.0606, 0.10548, lc} ;
Point(19) = {2.81097, -0.060161, 0.10548, lc} ;
Point(20) = {2.81005, -0.06, 0.10548, lc} ;
Point(21) = {2.80912, -0.060133, 0.10548, lc} ;
Point(22) = {2.80827, -0.060547, 0.10548, lc} ;
Point(23) = {2.8076, -0.0612, 0.10548, lc} ;
Point(24) = {2.8016, -0.0692, 0.10548, lc} ;
Point(25) = {2.80116, -0.07003, 0.10548, lc} ;
Point(26) = {2.801, -0.070955, 0.10548, lc} ;
Point(27) = {2.80113, -0.071884, 0.10548, lc} ;
Point(28) = {2.80155, -0.072726, 0.10548, lc} ;
Point(29) = {2.8022, -0.0734, 0.10548, lc} ;
Point(30) = {2.80303, -0.073839, 0.10548, lc} ;
Point(31) = {2.80396, -0.074, 0.10548, lc} ;
Point(32) = {2.80488, -0.073867, 0.10548, lc} ;
Point(33) = {2.80573, -0.073454, 0.10548, lc} ;
Point(34) = {2.8064, -0.0728, 0.10548, lc} ;
Point(35) = {2.807, -0.072, 0.10548, lc} ;
Point(36) = {2.807, -0.1, 0.10548, lc} ;
Point(37) = {2.804, -0.1, 0.10548, lc} ;
Point(38) = {2.80307, -0.100147, 0.10548, lc} ;
Point(39) = {2.80224, -0.100573, 0.10548, lc} ;
Point(40) = {2.80157, -0.101237, 0.10548, lc} ;
Point(41) = {2.80115, -0.102073, 0.10548, lc} ;
Point(42) = {2.801, -0.103, 0.10548, lc} ;
Point(43) = {2.80115, -0.103927, 0.10548, lc} ;
Point(44) = {2.80157, -0.104763, 0.10548, lc} ;
Point(45) = {2.80224, -0.105427, 0.10548, lc} ;
Point(46) = {2.80307, -0.105853, 0.10548, lc} ;
Line(47) = {1,2} ;
Line(48) = {2,3} ;
Line(49) = {3,4} ;
Line(50) = {4,5} ;
Line(51) = {5,6} ;
Line(52) = {6,7} ;
Line(53) = {7,8} ;
Line(54) = {8,9} ;
Line(55) = {9,10} ;
Line(56) = {10,11} ;
Line(57) = {11,12} ;
Line(58) = {12,13} ;
Line(59) = {13,14} ;
Line(60) = {14,15} ;
Line(61) = {15,16} ;
Line(62) = {16,17} ;
Line(63) = {17,18} ;
Line(64) = {18,19} ;
Line(65) = {19,20} ;
Line(66) = {20,21} ;
Line(67) = {21,22} ;
Line(68) = {22,23} ;
Line(69) = {23,24} ;
Line(70) = {24,25} ;
Line(71) = {25,26} ;
Line(72) = {26,27} ;
Line(73) = {27,28} ;
Line(74) = {28,29} ;
Line(75) = {29,30} ;
Line(76) = {30,31} ;
Line(77) = {31,32} ;
Line(78) = {32,33} ;
Line(79) = {33,34} ;
Line(80) = {34,35} ;
Line(81) = {35,36} ;
Line(82) = {36,37} ;
Line(83) = {37,38} ;
Line(84) = {38,39} ;
Line(85) = {39,40} ;
Line(86) = {40,41} ;
Line(87) = {41,42} ;
Line(88) = {42,43} ;
Line(89) = {43,44} ;
Line(90) = {44,45} ;
Line(91) = {45,46} ;
Line(92) = {46,1} ;
Line Loop(93) = {47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92} ;
Plane Surface(94) = {93} ;
Extrude{0,0,0.00137}{ Surface{94}; }
