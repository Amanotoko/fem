lc = 1e-2;
Point(1) = {-0.006, 1.988, 0.10548, lc} ;
Point(2) = {0.014, 1.988, 0.10548, lc} ;
Point(3) = {0.014, 2.00503, 0.10548, lc} ;
Point(4) = {0.114285, 2.10532, 0.10548, lc} ;
Point(5) = {0.114267, 2.10533, 0.10548, lc} ;
Point(6) = {0.114499, 2.10557, 0.10548, lc} ;
Point(7) = {0.114797, 2.10615, 0.10548, lc} ;
Point(8) = {0.1149, 2.1068, 0.10548, lc} ;
Point(9) = {0.1149, 2.25185, 0.10548, lc} ;
Point(10) = {0.240952, 2.3779, 0.10548, lc} ;
Point(11) = {0.2785, 2.3779, 0.10548, lc} ;
Point(12) = {0.2785, 2.37484, 0.10548, lc} ;
Point(13) = {0.2965, 2.37484, 0.10548, lc} ;
Point(14) = {0.2965, 2.38484, 0.10548, lc} ;
Point(15) = {0.2785, 2.38484, 0.10548, lc} ;
Point(16) = {0.2785, 2.3821, 0.10548, lc} ;
Point(17) = {0.240082, 2.3821, 0.10548, lc} ;
Point(18) = {0.239433, 2.382, 0.10548, lc} ;
Point(19) = {0.238848, 2.3817, 0.10548, lc} ;
Point(20) = {0.238615, 2.38147, 0.10548, lc} ;
Point(21) = {0.238597, 2.38149, 0.10548, lc} ;
Point(22) = {0.111315, 2.2542, 0.10548, lc} ;
Point(23) = {0.110929, 2.25367, 0.10548, lc} ;
Point(24) = {0.110726, 2.25305, 0.10548, lc} ;
Point(25) = {0.110726, 2.25272, 0.10548, lc} ;
Point(26) = {0.1107, 2.25272, 0.10548, lc} ;
Point(27) = {0.1107, 2.10767, 0.10548, lc} ;
Point(28) = {0.01103, 2.008, 0.10548, lc} ;
Point(29) = {-0.006, 2.008, 0.10548, lc} ;
Line(30) = {1,2} ;
Line(31) = {2,3} ;
Line(32) = {3,4} ;
Line(33) = {4,5} ;
Line(34) = {5,6} ;
Line(35) = {6,7} ;
Line(36) = {7,8} ;
Line(37) = {8,9} ;
Line(38) = {9,10} ;
Line(39) = {10,11} ;
Line(40) = {11,12} ;
Line(41) = {12,13} ;
Line(42) = {13,14} ;
Line(43) = {14,15} ;
Line(44) = {15,16} ;
Line(45) = {16,17} ;
Line(46) = {17,18} ;
Line(47) = {18,19} ;
Line(48) = {19,20} ;
Line(49) = {20,21} ;
Line(50) = {21,22} ;
Line(51) = {22,23} ;
Line(52) = {23,24} ;
Line(53) = {24,25} ;
Line(54) = {25,26} ;
Line(55) = {26,27} ;
Line(56) = {27,28} ;
Line(57) = {28,29} ;
Line(58) = {29,1} ;
Line Loop(59) = {30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58} ;
Plane Surface(60) = {59} ;
Extrude{0,0,0.00137}{ Surface{60}; }
Point(725) = {0.2965, 2.38484, 0.10548, lc} ;
Point(726) = {0.2965, 2.37484, 0.10548, lc} ;
Point(727) = {0.2785, 2.37484, 0.10548, lc} ;
Point(728) = {0.2785, 2.38484, 0.10548, lc} ;
Line(729) = {725,726} ;
Line(730) = {726,727} ;
Line(731) = {727,728} ;
Line(732) = {728,725} ;
Line Loop(733) = {729,730,731,732} ;
Plane Surface(734) = {733} ;
Extrude{0,0,0.00137}{ Surface{734}; }
Point(999) = {-0.006, 2.008, 0.10548, lc} ;
Point(1000) = {0.014, 2.008, 0.10548, lc} ;
Point(1001) = {0.014, 1.988, 0.10548, lc} ;
Point(1002) = {-0.006, 1.988, 0.10548, lc} ;
Line(1003) = {999,1000} ;
Line(1004) = {1000,1001} ;
Line(1005) = {1001,1002} ;
Line(1006) = {1002,999} ;
Line Loop(1007) = {1003,1004,1005,1006} ;
Plane Surface(1008) = {1007} ;
Extrude{0,0,0.00137}{ Surface{1008}; }
