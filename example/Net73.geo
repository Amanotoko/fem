lc = 1e-2;
Point(1) = {-0.17, -0.165, 0.10548, lc} ;
Point(2) = {0.085, -0.165, 0.10548, lc} ;
Point(3) = {0.084755, -0.163455, 0.10548, lc} ;
Point(4) = {0.084045, -0.162061, 0.10548, lc} ;
Point(5) = {0.082939, -0.160955, 0.10548, lc} ;
Point(6) = {0.081545, -0.160245, 0.10548, lc} ;
Point(7) = {0.08, -0.16, 0.10548, lc} ;
Point(8) = {-0.165, -0.16, 0.10548, lc} ;
Point(9) = {-0.165, 0.085, 0.10548, lc} ;
Point(10) = {-0.165245, 0.086545, 0.10548, lc} ;
Point(11) = {-0.165955, 0.087939, 0.10548, lc} ;
Point(12) = {-0.167061, 0.089045, 0.10548, lc} ;
Point(13) = {-0.168455, 0.089755, 0.10548, lc} ;
Point(14) = {-0.17, 0.09, 0.10548, lc} ;
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
Line(14) = {14,1} ;
Line Loop(1) = {1,2,3,4,5,6,7,8,9,10,11,12,13,14} ;
Plane Surface(1) = {1} ;
Extrude{0,0,0.00137}{ Surface{1}; };
