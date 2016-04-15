lc = 1e-2;
Point(1) = {3.712, -0.165, 0.03411, lc} ;
Point(2) = {3.967, -0.165, 0.03411, lc} ;
Point(3) = {3.967, 0.09, 0.03411, lc} ;
Point(4) = {3.96545, 0.089755, 0.03411, lc} ;
Point(5) = {3.96406, 0.089045, 0.03411, lc} ;
Point(6) = {3.96296, 0.087939, 0.03411, lc} ;
Point(7) = {3.96224, 0.086545, 0.03411, lc} ;
Point(8) = {3.962, 0.085, 0.03411, lc} ;
Point(9) = {3.962, -0.16, 0.03411, lc} ;
Point(10) = {3.717, -0.16, 0.03411, lc} ;
Point(11) = {3.71545, -0.160245, 0.03411, lc} ;
Point(12) = {3.71406, -0.160955, 0.03411, lc} ;
Point(13) = {3.71296, -0.162061, 0.03411, lc} ;
Point(14) = {3.71224, -0.163455, 0.03411, lc} ;
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
