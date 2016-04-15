lc = 1e-2;
Point(1) = {-0.237, 1.846, 0, lc} ;
Point(2) = {-0.235455, 1.84624, 0, lc} ;
Point(3) = {-0.234061, 1.84695, 0, lc} ;
Point(4) = {-0.232955, 1.84806, 0, lc} ;
Point(5) = {-0.232245, 1.84946, 0, lc} ;
Point(6) = {-0.232, 1.851, 0, lc} ;
Point(7) = {-0.232, 2.11393, 0, lc} ;
Point(8) = {-0.166464, 2.17946, 0, lc} ;
Point(9) = {-0.166508, 2.17951, 0, lc} ;
Point(10) = {-0.165955, 2.18006, 0, lc} ;
Point(11) = {-0.165245, 2.18146, 0, lc} ;
Point(12) = {-0.165, 2.183, 0, lc} ;
Point(13) = {-0.165, 2.278, 0, lc} ;
Point(14) = {-0.165245, 2.27955, 0, lc} ;
Point(15) = {-0.165955, 2.28094, 0, lc} ;
Point(16) = {-0.167061, 2.28205, 0, lc} ;
Point(17) = {-0.168455, 2.28275, 0, lc} ;
Point(18) = {-0.17, 2.283, 0, lc} ;
Point(19) = {-0.17, 2.183, 0, lc} ;
Point(20) = {-0.237, 2.116, 0, lc} ;
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
Line(20) = {20,1} ;
Line Loop(1) = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20} ;
Plane Surface(1) = {1} ;
Extrude{0,0,0.00137}{ Surface{1}; };
