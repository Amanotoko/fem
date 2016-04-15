lc = 1e-2;
Point(1) = {2.974, -0.126, 0.02274, lc} ;
Point(2) = {3.025, -0.126, 0.02274, lc} ;
Point(3) = {3.02593, -0.125853, 0.02274, lc} ;
Point(4) = {3.02676, -0.125427, 0.02274, lc} ;
Point(5) = {3.02743, -0.124763, 0.02274, lc} ;
Point(6) = {3.02785, -0.123927, 0.02274, lc} ;
Point(7) = {3.028, -0.123, 0.02274, lc} ;
Point(8) = {3.028, -0.053, 0.02274, lc} ;
Point(9) = {3.02785, -0.052073, 0.02274, lc} ;
Point(10) = {3.02743, -0.051237, 0.02274, lc} ;
Point(11) = {3.02676, -0.050573, 0.02274, lc} ;
Point(12) = {3.02593, -0.050147, 0.02274, lc} ;
Point(13) = {3.025, -0.05, 0.02274, lc} ;
Point(14) = {2.974, -0.05, 0.02274, lc} ;
Point(15) = {2.97307, -0.050147, 0.02274, lc} ;
Point(16) = {2.97224, -0.050573, 0.02274, lc} ;
Point(17) = {2.97157, -0.051237, 0.02274, lc} ;
Point(18) = {2.97115, -0.052073, 0.02274, lc} ;
Point(19) = {2.971, -0.053, 0.02274, lc} ;
Point(20) = {2.971, -0.123, 0.02274, lc} ;
Point(21) = {2.97115, -0.123927, 0.02274, lc} ;
Point(22) = {2.97157, -0.124763, 0.02274, lc} ;
Point(23) = {2.97224, -0.125427, 0.02274, lc} ;
Point(24) = {2.97307, -0.125853, 0.02274, lc} ;
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
Line(24) = {24,1} ;
Line Loop(1) = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24} ;
Plane Surface(1) = {1} ;
Extrude{0,0,0.00137}{ Surface{1}; };
Point(25) = {2.977, -0.12, 0.02274, lc} ;
Point(26) = {2.977, -0.056, 0.02274, lc} ;
Point(27) = {3.022, -0.056, 0.02274, lc} ;
Point(28) = {3.022, -0.12, 0.02274, lc} ;
Line(25) = {25,26} ;
Line(26) = {26,27} ;
Line(27) = {27,28} ;
Line(28) = {28,25} ;
Line Loop(1) = {25,26,27,28} ;
Plane Surface(1) = {1} ;
Extrude{0,0,0.00137}{ Surface{1}; };