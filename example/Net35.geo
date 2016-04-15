lc = 1e-2;
Point(1) = {-0.17, 0.49, 0, lc} ;
Point(2) = {-0.168455, 0.490245, 0, lc} ;
Point(3) = {-0.167061, 0.490955, 0, lc} ;
Point(4) = {-0.165955, 0.492061, 0, lc} ;
Point(5) = {-0.165245, 0.493455, 0, lc} ;
Point(6) = {-0.165, 0.495, 0, lc} ;
Point(7) = {-0.165, 0.76, 0, lc} ;
Point(8) = {-0.165062, 0.760389, 0, lc} ;
Point(9) = {-0.165062, 0.760782, 0, lc} ;
Point(10) = {-0.165183, 0.761156, 0, lc} ;
Point(11) = {-0.165245, 0.761545, 0, lc} ;
Point(12) = {-0.165424, 0.761896, 0, lc} ;
Point(13) = {-0.165545, 0.76227, 0, lc} ;
Point(14) = {-0.165776, 0.762588, 0, lc} ;
Point(15) = {-0.165955, 0.762939, 0, lc} ;
Point(16) = {-0.166233, 0.763217, 0, lc} ;
Point(17) = {-0.166464, 0.763536, 0, lc} ;
Point(18) = {-0.232, 0.829071, 0, lc} ;
Point(19) = {-0.232, 1.061, 0, lc} ;
Point(20) = {-0.232245, 1.06255, 0, lc} ;
Point(21) = {-0.232955, 1.06394, 0, lc} ;
Point(22) = {-0.234061, 1.06505, 0, lc} ;
Point(23) = {-0.235455, 1.06576, 0, lc} ;
Point(24) = {-0.237, 1.066, 0, lc} ;
Point(25) = {-0.237, 0.827, 0, lc} ;
Point(26) = {-0.17, 0.76, 0, lc} ;
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
Line(26) = {26,1} ;
Line Loop(1) = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26} ;
Plane Surface(1) = {1} ;
Extrude{0,0,0.00137}{ Surface{1}; };
