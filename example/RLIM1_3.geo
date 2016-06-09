lc = 1e-2;
Point(1) = {2.83908, 1.45438, 0.10548, lc} ;
Point(2) = {2.85008, 1.45438, 0.10548, lc} ;
Point(3) = {2.85008, 1.46878, 0.10548, lc} ;
Point(4) = {2.863, 1.46878, 0.10548, lc} ;
Point(5) = {2.86365, 1.46888, 0.10548, lc} ;
Point(6) = {2.86423, 1.46918, 0.10548, lc} ;
Point(7) = {2.86447, 1.46941, 0.10548, lc} ;
Point(8) = {2.86449, 1.4694, 0.10548, lc} ;
Point(9) = {2.90748, 1.51239, 0.10548, lc} ;
Point(10) = {2.90787, 1.51293, 0.10548, lc} ;
Point(11) = {2.90807, 1.51355, 0.10548, lc} ;
Point(12) = {2.90807, 1.51388, 0.10548, lc} ;
Point(13) = {2.9081, 1.51388, 0.10548, lc} ;
Point(14) = {2.9081, 1.537, 0.10548, lc} ;
Point(15) = {2.916, 1.537, 0.10548, lc} ;
Point(16) = {2.916, 1.557, 0.10548, lc} ;
Point(17) = {2.896, 1.557, 0.10548, lc} ;
Point(18) = {2.896, 1.537, 0.10548, lc} ;
Point(19) = {2.9039, 1.537, 0.10548, lc} ;
Point(20) = {2.9039, 1.51475, 0.10548, lc} ;
Point(21) = {2.86213, 1.47298, 0.10548, lc} ;
Point(22) = {2.85008, 1.47298, 0.10548, lc} ;
Point(23) = {2.85008, 1.48738, 0.10548, lc} ;
Point(24) = {2.83908, 1.48738, 0.10548, lc} ;
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
Point(635) = {2.83908, 1.45438, 0.10548, lc} ;
Point(636) = {2.83908, 1.48738, 0.10548, lc} ;
Point(637) = {2.85008, 1.48738, 0.10548, lc} ;
Point(638) = {2.85008, 1.45438, 0.10548, lc} ;
Line(639) = {635,636} ;
Line(640) = {636,637} ;
Line(641) = {637,638} ;
Line(642) = {638,635} ;
Line Loop(643) = {639,640,641,642} ;
Plane Surface(644) = {643} ;
Extrude{0,0,0.00137}{ Surface{644}; }
Point(909) = {2.916, 1.557, 0.10548, lc} ;
Point(910) = {2.916, 1.537, 0.10548, lc} ;
Point(911) = {2.896, 1.537, 0.10548, lc} ;
Point(912) = {2.896, 1.557, 0.10548, lc} ;
Line(913) = {909,910} ;
Line(914) = {910,911} ;
Line(915) = {911,912} ;
Line(916) = {912,909} ;
Line Loop(917) = {913,914,915,916} ;
Plane Surface(918) = {917} ;
Extrude{0,0,0.00137}{ Surface{918}; }
