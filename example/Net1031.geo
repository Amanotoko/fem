lc = 1e-2;
Point(1) = {2.52621, 0.251661, 0.01137, lc} ;
Point(2) = {2.53471, 0.253007, 0.01137, lc} ;
Point(3) = {2.54238, 0.256913, 0.01137, lc} ;
Point(4) = {2.54846, 0.262997, 0.01137, lc} ;
Point(5) = {2.55237, 0.270663, 0.01137, lc} ;
Point(6) = {2.55371, 0.279161, 0.01137, lc} ;
Point(7) = {2.55371, 0.298161, 0.01137, lc} ;
Point(8) = {2.55237, 0.306659, 0.01137, lc} ;
Point(9) = {2.54846, 0.314325, 0.01137, lc} ;
Point(10) = {2.54238, 0.320409, 0.01137, lc} ;
Point(11) = {2.53471, 0.324315, 0.01137, lc} ;
Point(12) = {2.52621, 0.325661, 0.01137, lc} ;
Point(13) = {2.51771, 0.324315, 0.01137, lc} ;
Point(14) = {2.51005, 0.320409, 0.01137, lc} ;
Point(15) = {2.50396, 0.314325, 0.01137, lc} ;
Point(16) = {2.50006, 0.306659, 0.01137, lc} ;
Point(17) = {2.49871, 0.298161, 0.01137, lc} ;
Point(18) = {2.49871, 0.279161, 0.01137, lc} ;
Point(19) = {2.50006, 0.270663, 0.01137, lc} ;
Point(20) = {2.50396, 0.262997, 0.01137, lc} ;
Point(21) = {2.51005, 0.256913, 0.01137, lc} ;
Point(22) = {2.51771, 0.253007, 0.01137, lc} ;
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
Line(22) = {22,1} ;
Line Loop(1) = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22} ;
Plane Surface(1) = {1} ;
Extrude{0,0,0.00137}{ Surface{1}; };
