lc = 1e-2;
Point(1) = {2.81, 1.572, 0.10548, lc} ;
Point(2) = {2.83, 1.572, 0.10548, lc} ;
Point(3) = {2.83, 1.592, 0.10548, lc} ;
Point(4) = {2.815, 1.592, 0.10548, lc} ;
Point(5) = {2.815, 1.613, 0.10548, lc} ;
Point(6) = {2.822, 1.613, 0.10548, lc} ;
Point(7) = {2.822, 1.633, 0.10548, lc} ;
Point(8) = {2.802, 1.633, 0.10548, lc} ;
Point(9) = {2.802, 1.613, 0.10548, lc} ;
Point(10) = {2.809, 1.613, 0.10548, lc} ;
Point(11) = {2.809, 1.59, 0.10548, lc} ;
Point(12) = {2.80904, 1.59, 0.10548, lc} ;
Point(13) = {2.80904, 1.58953, 0.10548, lc} ;
Point(14) = {2.80933, 1.58864, 0.10548, lc} ;
Point(15) = {2.80988, 1.58788, 0.10548, lc} ;
Point(16) = {2.81, 1.58776, 0.10548, lc} ;
Line(17) = {1,2} ;
Line(18) = {2,3} ;
Line(19) = {3,4} ;
Line(20) = {4,5} ;
Line(21) = {5,6} ;
Line(22) = {6,7} ;
Line(23) = {7,8} ;
Line(24) = {8,9} ;
Line(25) = {9,10} ;
Line(26) = {10,11} ;
Line(27) = {11,12} ;
Line(28) = {12,13} ;
Line(29) = {13,14} ;
Line(30) = {14,15} ;
Line(31) = {15,16} ;
Line(32) = {16,1} ;
Line Loop(33) = {17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32} ;
Plane Surface(34) = {33} ;
Extrude{0,0,0.00137}{ Surface{34}; }
Point(491) = {2.802, 1.633, 0.10548, lc} ;
Point(492) = {2.822, 1.633, 0.10548, lc} ;
Point(493) = {2.822, 1.613, 0.10548, lc} ;
Point(494) = {2.802, 1.613, 0.10548, lc} ;
Line(495) = {491,492} ;
Line(496) = {492,493} ;
Line(497) = {493,494} ;
Line(498) = {494,491} ;
Line Loop(499) = {495,496,497,498} ;
Plane Surface(500) = {499} ;
Extrude{0,0,0.00137}{ Surface{500}; }
Point(765) = {2.83, 1.592, 0.10548, lc} ;
Point(766) = {2.83, 1.572, 0.10548, lc} ;
Point(767) = {2.81, 1.572, 0.10548, lc} ;
Point(768) = {2.81, 1.592, 0.10548, lc} ;
Line(769) = {765,766} ;
Line(770) = {766,767} ;
Line(771) = {767,768} ;
Line(772) = {768,765} ;
Line Loop(773) = {769,770,771,772} ;
Plane Surface(774) = {773} ;
Extrude{0,0,0.00137}{ Surface{774}; }
