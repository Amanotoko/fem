lc = 1e-2;
Point(1) = {2.782, 1.115, 0.10548, lc} ;
Point(2) = {2.832, 1.115, 0.10548, lc} ;
Point(3) = {2.832, 1.175, 0.10548, lc} ;
Point(4) = {2.812, 1.175, 0.10548, lc} ;
Point(5) = {2.812, 1.20883, 0.10548, lc} ;
Point(6) = {2.81194, 1.20883, 0.10548, lc} ;
Point(7) = {2.81194, 1.20961, 0.10548, lc} ;
Point(8) = {2.81146, 1.2111, 0.10548, lc} ;
Point(9) = {2.81053, 1.21237, 0.10548, lc} ;
Point(10) = {2.81021, 1.21269, 0.10548, lc} ;
Point(11) = {2.81021, 1.22062, 0.10548, lc} ;
Point(12) = {2.81071, 1.22062, 0.10548, lc} ;
Point(13) = {2.81071, 1.25362, 0.10548, lc} ;
Point(14) = {2.79971, 1.25362, 0.10548, lc} ;
Point(15) = {2.79971, 1.22062, 0.10548, lc} ;
Point(16) = {2.80021, 1.22062, 0.10548, lc} ;
Point(17) = {2.80021, 1.21062, 0.10548, lc} ;
Point(18) = {2.80045, 1.20907, 0.10548, lc} ;
Point(19) = {2.80117, 1.20768, 0.10548, lc} ;
Point(20) = {2.80172, 1.20713, 0.10548, lc} ;
Point(21) = {2.80167, 1.20708, 0.10548, lc} ;
Point(22) = {2.802, 1.20676, 0.10548, lc} ;
Point(23) = {2.802, 1.175, 0.10548, lc} ;
Point(24) = {2.782, 1.175, 0.10548, lc} ;
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
Extrude{0,0,0.00137}{ Surface{50}; }
Point(635) = {2.79971, 1.22062, 0.10548, lc} ;
Point(636) = {2.79971, 1.25362, 0.10548, lc} ;
Point(637) = {2.81071, 1.25362, 0.10548, lc} ;
Point(638) = {2.81071, 1.22062, 0.10548, lc} ;
Line(639) = {635,636} ;
Line(640) = {636,637} ;
Line(641) = {637,638} ;
Line(642) = {638,635} ;
Line Loop(643) = {639,640,641,642} ;
Plane Surface(644) = {643} ;
Extrude{0,0,0.00137}{ Surface{644}; }
Point(909) = {2.782, 1.115, 0.10548, lc} ;
Point(910) = {2.782, 1.175, 0.10548, lc} ;
Point(911) = {2.832, 1.175, 0.10548, lc} ;
Point(912) = {2.832, 1.115, 0.10548, lc} ;
Line(913) = {909,910} ;
Line(914) = {910,911} ;
Line(915) = {911,912} ;
Line(916) = {912,909} ;
Line Loop(917) = {913,914,915,916} ;
Plane Surface(918) = {917} ;
Extrude{0,0,0.00137}{ Surface{918}; }
