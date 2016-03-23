cl = 1;
Point(1) = {0, 0, 0, cl};
Point(2) = {5, 0, 0, cl};
Point(3) = {0, 5, 0, cl};
Point(4) = {5, 5, 0, cl};
Line(1) = {1, 2};
Line(2) = {2, 4};
Line(3) = {4, 3};
Line(4) = {3, 1};
Line Loop(5) = {2, 3, 4, 1};
Plane Surface(6) = {5};

Extrude {0, 0, 50} {
  Surface{6};
}
Physical Volume(29) = {1};
Physical Surface(30) = {28};
Physical Surface(31) = {6};
