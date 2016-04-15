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
Line(41) = {41,42} ;
Line(42) = {42,43} ;
Line(43) = {43,44} ;
Line(44) = {44,45} ;
Line(45) = {45,46} ;
Line(46) = {46,1} ;
Line Loop(1) = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46} ;
Plane Surface(1) = {1} ;
Extrude{0,0,0.00137}{ Surface{1}; };
