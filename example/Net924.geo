lc = 1e-2;
Point(1) = {2.07834, -0.158, 0.03411, lc} ;
Point(2) = {2.08637, -0.156727, 0.03411, lc} ;
Point(3) = {2.09362, -0.153034, 0.03411, lc} ;
Point(4) = {2.09937, -0.147282, 0.03411, lc} ;
Point(5) = {2.10307, -0.140034, 0.03411, lc} ;
Point(6) = {2.10434, -0.132, 0.03411, lc} ;
Point(7) = {2.10434, -0.084, 0.03411, lc} ;
Point(8) = {2.10307, -0.075966, 0.03411, lc} ;
Point(9) = {2.09937, -0.068718, 0.03411, lc} ;
Point(10) = {2.09362, -0.062966, 0.03411, lc} ;
Point(11) = {2.08637, -0.059272, 0.03411, lc} ;
Point(12) = {2.07834, -0.058, 0.03411, lc} ;
Point(13) = {2.07031, -0.059272, 0.03411, lc} ;
Point(14) = {2.06306, -0.062966, 0.03411, lc} ;
Point(15) = {2.05731, -0.068718, 0.03411, lc} ;
Point(16) = {2.05361, -0.075966, 0.03411, lc} ;
Point(17) = {2.05234, -0.084, 0.03411, lc} ;
Point(18) = {2.05234, -0.132, 0.03411, lc} ;
Point(19) = {2.05361, -0.140034, 0.03411, lc} ;
Point(20) = {2.05731, -0.147282, 0.03411, lc} ;
Point(21) = {2.06306, -0.153034, 0.03411, lc} ;
Point(22) = {2.07031, -0.156727, 0.03411, lc} ;
Line(23) = {1,2} ;
Line(24) = {2,3} ;
Line(25) = {3,4} ;
Line(26) = {4,5} ;
Line(27) = {5,6} ;
Line(28) = {6,7} ;
Line(29) = {7,8} ;
Line(30) = {8,9} ;
Line(31) = {9,10} ;
Line(32) = {10,11} ;
Line(33) = {11,12} ;
Line(34) = {12,13} ;
Line(35) = {13,14} ;
Line(36) = {14,15} ;
Line(37) = {15,16} ;
Line(38) = {16,17} ;
Line(39) = {17,18} ;
Line(40) = {18,19} ;
Line(41) = {19,20} ;
Line(42) = {20,21} ;
Line(43) = {21,22} ;
Line(44) = {22,1} ;
Line Loop(45) = {23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44} ;
Plane Surface(46) = {45} ;
Extrude{0,0,0.00137}{ Surface{46}; }
