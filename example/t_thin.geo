cl__1 = 1;
Point(1) = {0, 0, 0, 1};
Point(2) = {3, 0, 0, 1};
Point(3) = {30, 0, 0, 1};
Point(4) = {-30, 0, 0, 1};
Point(5) = {0, -30, 0, 1};
Point(6) = {3, -30, 0, 1};
Point(7) = {30, 3, 0, 1};
Point(8) = {-30, 3, 0, 1};
Point(9) = {30, 3, 1, 1};
Point(10) = {-30, 3, 1, 1};
Point(14) = {-30, 0, 1, 1};
Point(18) = {0, 0, 1, 1};
Point(22) = {0, -30, 1, 1};
Point(26) = {3, -30, 1, 1};
Point(30) = {3, 0, 1, 1};
Point(34) = {30, 0, 1, 1};
Line(1) = {8, 4};
Line(2) = {4, 1};
Line(3) = {1, 5};
Line(4) = {5, 6};
Line(5) = {6, 2};
Line(6) = {2, 3};
Line(7) = {3, 7};
Line(8) = {7, 8};
Line(12) = {9, 10};
Line(13) = {10, 14};
Line(14) = {14, 18};
Line(15) = {18, 22};
Line(16) = {22, 26};
Line(17) = {26, 30};
Line(18) = {30, 34};
Line(19) = {34, 9};
Line(21) = {7, 9};
Line(22) = {8, 10};
Line(26) = {4, 14};
Line(30) = {1, 18};
Line(34) = {5, 22};
Line(38) = {6, 26};
Line(42) = {2, 30};
Line(46) = {3, 34};
Line Loop(10) = {8, 1, 2, 3, 4, 5, 6, 7};
Plane Surface(10) = {10};
Line Loop(23) = {8, 22, -12, -21};
Ruled Surface(23) = {23};
Line Loop(27) = {1, 26, -13, -22};
Ruled Surface(27) = {27};
Line Loop(31) = {2, 30, -14, -26};
Ruled Surface(31) = {31};
Line Loop(35) = {3, 34, -15, -30};
Ruled Surface(35) = {35};
Line Loop(39) = {4, 38, -16, -34};
Ruled Surface(39) = {39};
Line Loop(43) = {5, 42, -17, -38};
Ruled Surface(43) = {43};
Line Loop(47) = {6, 46, -18, -42};
Ruled Surface(47) = {47};
Line Loop(51) = {7, 21, -19, -46};
Ruled Surface(51) = {51};
Line Loop(52) = {12, 13, 14, 15, 16, 17, 18, 19};
Plane Surface(52) = {52};
Surface Loop(1) = {10, 52, 23, 27, 31, 35, 39, 43, 47, 51};
Volume(1) = {1};
Physical Surface(53) = {27};
Physical Surface(54) = {39};
Physical Surface(55) = {51};
Physical Volume(56) = {1};
