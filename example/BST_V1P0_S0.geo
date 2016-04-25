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
Line(1) = {1,2} ;
Line(2) = {2,3} ;
Line(3) = {3,4} ;
Line(4) = {4,5} ;
Line(5) = {5,6} ;
Line(6) = {6,7} ;
Line(7) = {7,8} ;
Line(8) = {8,9} ;
Line(9) = {9,10} ;
Line(10) = {10,11} ;
Line(11) = {11,12} ;
Line(12) = {12,13} ;
Line(13) = {13,14} ;
Line(14) = {14,15} ;
Line(15) = {15,16} ;
Line(16) = {16,17} ;
Line(17) = {17,18} ;
Line(18) = {18,19} ;
Line(19) = {19,20} ;
Line(20) = {20,21} ;
Line(21) = {21,22} ;
Line(22) = {22,23} ;
Line(23) = {23,24} ;
Line(24) = {24,25} ;
Line(25) = {25,26} ;
Line(26) = {26,27} ;
Line(27) = {27,28} ;
Line(28) = {28,29} ;
Line(29) = {29,30} ;
Line(30) = {30,31} ;
Line(31) = {31,32} ;
Line(32) = {32,33} ;
Line(33) = {33,34} ;
Line(34) = {34,35} ;
Line(35) = {35,36} ;
Line(36) = {36,37} ;
Line(37) = {37,38} ;
Line(38) = {38,39} ;
Line(39) = {39,40} ;
Line(40) = {40,41} ;
Line(41) = {41,1} ;
Line Loop(1) = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41} ;
Plane Surface(1) = {1} ;
Extrude{0,0,0.00137}{ Surface{1}; };
Point(42) = {3.0145, 1.114, 0.10548, lc} ;
Point(43) = {3.0145, 1.214, 0.10548, lc} ;
Point(44) = {3.1395, 1.214, 0.10548, lc} ;
Point(45) = {3.1395, 1.114, 0.10548, lc} ;
Line(42) = {42,43} ;
Line(43) = {43,44} ;
Line(44) = {44,45} ;
Line(45) = {45,42} ;
Line Loop(1) = {42,43,44,45} ;
Plane Surface(1) = {1} ;
Extrude{0,0,0.00137}{ Surface{1}; };
Point(46) = {2.85638, 1.35834, 0.10548, lc} ;
Point(47) = {2.85638, 1.36934, 0.10548, lc} ;
Point(48) = {2.88938, 1.36934, 0.10548, lc} ;
Point(49) = {2.88938, 1.35834, 0.10548, lc} ;
Line(46) = {46,47} ;
Line(47) = {47,48} ;
Line(48) = {48,49} ;
Line(49) = {49,46} ;
Line Loop(1) = {46,47,48,49} ;
Plane Surface(1) = {1} ;
Extrude{0,0,0.00137}{ Surface{1}; };
Point(50) = {2.85638, 1.37803, 0.10548, lc} ;
Point(51) = {2.85638, 1.38903, 0.10548, lc} ;
Point(52) = {2.88938, 1.38903, 0.10548, lc} ;
Point(53) = {2.88938, 1.37803, 0.10548, lc} ;
Line(50) = {50,51} ;
Line(51) = {51,52} ;
Line(52) = {52,53} ;
Line(53) = {53,50} ;
Line Loop(1) = {50,51,52,53} ;
Plane Surface(1) = {1} ;
Extrude{0,0,0.00137}{ Surface{1}; };
Point(54) = {2.976, 1.404, 0.10548, lc} ;
Point(55) = {2.976, 1.364, 0.10548, lc} ;
Point(56) = {2.946, 1.364, 0.10548, lc} ;
Point(57) = {2.946, 1.404, 0.10548, lc} ;
Line(54) = {54,55} ;
Line(55) = {55,56} ;
Line(56) = {56,57} ;
Line(57) = {57,54} ;
Line Loop(1) = {54,55,56,57} ;
Plane Surface(1) = {1} ;
Extrude{0,0,0.00137}{ Surface{1}; };
