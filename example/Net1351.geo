lc = 1e-2;
Point(1) = {3.967, 2.414, 0, lc} ;
Point(2) = {3.967, 2.669, 0, lc} ;
Point(3) = {3.712, 2.669, 0, lc} ;
Point(4) = {3.71224, 2.66745, 0, lc} ;
Point(5) = {3.71296, 2.66606, 0, lc} ;
Point(6) = {3.71406, 2.66495, 0, lc} ;
Point(7) = {3.71545, 2.66425, 0, lc} ;
Point(8) = {3.717, 2.664, 0, lc} ;
Point(9) = {3.962, 2.664, 0, lc} ;
Point(10) = {3.962, 2.419, 0, lc} ;
Point(11) = {3.96224, 2.41745, 0, lc} ;
Point(12) = {3.96296, 2.41606, 0, lc} ;
Point(13) = {3.96406, 2.41495, 0, lc} ;
Point(14) = {3.96545, 2.41425, 0, lc} ;
Line(15) = {1,2} ;
Line(16) = {2,3} ;
Line(17) = {3,4} ;
Line(18) = {4,5} ;
Line(19) = {5,6} ;
Line(20) = {6,7} ;
Line(21) = {7,8} ;
Line(22) = {8,9} ;
Line(23) = {9,10} ;
Line(24) = {10,11} ;
Line(25) = {11,12} ;
Line(26) = {12,13} ;
Line(27) = {13,14} ;
Line(28) = {14,1} ;
Line Loop(29) = {15,16,17,18,19,20,21,22,23,24,25,26,27,28} ;
Plane Surface(30) = {29} ;
Extrude{0,0,0.00137}{ Surface{30}; }
