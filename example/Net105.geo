lc = 1e-2;
Point(1) = {-0.135667, 0.4739, 0, lc} ;
Point(2) = {-0.13474, 0.474047, 0, lc} ;
Point(3) = {-0.133904, 0.474473, 0, lc} ;
Point(4) = {-0.13324, 0.475137, 0, lc} ;
Point(5) = {-0.132814, 0.475973, 0, lc} ;
Point(6) = {-0.132667, 0.4769, 0, lc} ;
Point(7) = {-0.132667, 0.481499, 0, lc} ;
Point(8) = {-0.094573, 0.481499, 0, lc} ;
Point(9) = {-0.097481, 0.479289, 0, lc} ;
Point(10) = {-0.09813, 0.478611, 0, lc} ;
Point(11) = {-0.098539, 0.477765, 0, lc} ;
Point(12) = {-0.098665, 0.476835, 0, lc} ;
Point(13) = {-0.098499, 0.475912, 0, lc} ;
Point(14) = {-0.098055, 0.475085, 0, lc} ;
Point(15) = {-0.097377, 0.474436, 0, lc} ;
Point(16) = {-0.096531, 0.474027, 0, lc} ;
Point(17) = {-0.095601, 0.473901, 0, lc} ;
Point(18) = {-0.094678, 0.474067, 0, lc} ;
Point(19) = {-0.093851, 0.474511, 0, lc} ;
Point(20) = {-0.083852, 0.482111, 0, lc} ;
Point(21) = {-0.083202, 0.482788, 0, lc} ;
Point(22) = {-0.082794, 0.483634, 0, lc} ;
Point(23) = {-0.082668, 0.484564, 0, lc} ;
Point(24) = {-0.082835, 0.485487, 0, lc} ;
Point(25) = {-0.083279, 0.486314, 0, lc} ;
Point(26) = {-0.083956, 0.486963, 0, lc} ;
Point(27) = {-0.084802, 0.487372, 0, lc} ;
Point(28) = {-0.085667, 0.48749, 0, lc} ;
Point(29) = {-0.085667, 0.487499, 0, lc} ;
Point(30) = {-0.132667, 0.487499, 0, lc} ;
Point(31) = {-0.132667, 0.492099, 0, lc} ;
Point(32) = {-0.132814, 0.493026, 0, lc} ;
Point(33) = {-0.13324, 0.493862, 0, lc} ;
Point(34) = {-0.133904, 0.494526, 0, lc} ;
Point(35) = {-0.13474, 0.494952, 0, lc} ;
Point(36) = {-0.135667, 0.495099, 0, lc} ;
Point(37) = {-0.136594, 0.494952, 0, lc} ;
Point(38) = {-0.13743, 0.494526, 0, lc} ;
Point(39) = {-0.138094, 0.493862, 0, lc} ;
Point(40) = {-0.13852, 0.493026, 0, lc} ;
Point(41) = {-0.138667, 0.492099, 0, lc} ;
Point(42) = {-0.138667, 0.4769, 0, lc} ;
Point(43) = {-0.13852, 0.475973, 0, lc} ;
Point(44) = {-0.138094, 0.475137, 0, lc} ;
Point(45) = {-0.13743, 0.474473, 0, lc} ;
Point(46) = {-0.136594, 0.474047, 0, lc} ;
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
