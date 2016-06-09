lc = 1e-2;
Point(1) = {2.847, -0.126, 0.08548, lc} ;
Point(2) = {2.898, -0.126, 0.08548, lc} ;
Point(3) = {2.89893, -0.125853, 0.08548, lc} ;
Point(4) = {2.89976, -0.125427, 0.08548, lc} ;
Point(5) = {2.90043, -0.124763, 0.08548, lc} ;
Point(6) = {2.90085, -0.123927, 0.08548, lc} ;
Point(7) = {2.901, -0.123, 0.08548, lc} ;
Point(8) = {2.901, -0.053, 0.08548, lc} ;
Point(9) = {2.90085, -0.052073, 0.08548, lc} ;
Point(10) = {2.90043, -0.051237, 0.08548, lc} ;
Point(11) = {2.89976, -0.050573, 0.08548, lc} ;
Point(12) = {2.89893, -0.050147, 0.08548, lc} ;
Point(13) = {2.898, -0.05, 0.08548, lc} ;
Point(14) = {2.847, -0.05, 0.08548, lc} ;
Point(15) = {2.84607, -0.050147, 0.08548, lc} ;
Point(16) = {2.84524, -0.050573, 0.08548, lc} ;
Point(17) = {2.84457, -0.051237, 0.08548, lc} ;
Point(18) = {2.84415, -0.052073, 0.08548, lc} ;
Point(19) = {2.844, -0.053, 0.08548, lc} ;
Point(20) = {2.844, -0.123, 0.08548, lc} ;
Point(21) = {2.84415, -0.123927, 0.08548, lc} ;
Point(22) = {2.84457, -0.124763, 0.08548, lc} ;
Point(23) = {2.84524, -0.125427, 0.08548, lc} ;
Point(24) = {2.84607, -0.125853, 0.08548, lc} ;
Line(25) = {1,2} ;
Line(26) = {2,3} ;
Line(27) = {3,4} ;
Line(28) = {4,5} ;
Line(29) = {5,6} ;
Line(30) = {6,7} ;
Line(31) = {7,8} ;
Line(32) = {8,9} ;
Line(33) = {9,10} ;
Line(34) = {10,11} ;
Line(35) = {11,12} ;
Line(36) = {12,13} ;
Line(37) = {13,14} ;
Line(38) = {14,15} ;
Line(39) = {15,16} ;
Line(40) = {16,17} ;
Line(41) = {17,18} ;
Line(42) = {18,19} ;
Line(43) = {19,20} ;
Line(44) = {20,21} ;
Line(45) = {21,22} ;
Line(46) = {22,23} ;
Line(47) = {23,24} ;
Line(48) = {24,1} ;
Line Loop(49) = {25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48} ;
Plane Surface(50) = {49} ;
Extrude{0,0,0.01}{ Surface{50}; }
Point(635) = {2.85, -0.12, 0.08548, lc} ;
Point(636) = {2.85, -0.056, 0.08548, lc} ;
Point(637) = {2.895, -0.056, 0.08548, lc} ;
Point(638) = {2.895, -0.12, 0.08548, lc} ;
Line(639) = {635,636} ;
Line(640) = {636,637} ;
Line(641) = {637,638} ;
Line(642) = {638,635} ;
Line Loop(643) = {639,640,641,642} ;
Plane Surface(644) = {643} ;
Extrude{0,0,0.01}{ Surface{644}; }
