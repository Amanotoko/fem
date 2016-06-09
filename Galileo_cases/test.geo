// Gmsh project created on Fri May 27 14:59:46 2016
Point(1) = {-0.1, 0.2, -0.2, 1.0};
Point(2) = {0.3, 0.2, -0.2, 1.0};
Delete {
  Point{1, 2};
}
Point(2) = {0, 0, 0, 1.0};
Point(3) = {1, 0, 0, 1.0};
Point(4) = {0, 1, 0, 1.0};
Point(5) = {0, -1, 0, 1.0};
Point(6) = {-1, 0, 0, 1.0};
Circle(1) = {3, 2, 4};
Circle(2) = {4, 2, 6};
Circle(3) = {6, 2, 5};
Circle(4) = {5, 2, 3};
Line Loop(5) = {3, 4, 1, 2};
Plane Surface(6) = {5};
Extrude {0, 0, 1} {
  Surface{6};
}
Point(20) = {0, 2, 1, 1.0};
Point(21) = {0, -2, 1, 1.0};
Point(22) = {2, 0, 1, 1.0};
Point(23) = {-2, 0, 1, 1.0};
Circle(29) = {20, 8, 22};
Circle(30) = {22, 8, 21};
Circle(31) = {21, 8, 23};
Circle(32) = {23, 8, 20};
Line Loop(33) = {29, 30, 31, 32};
Plane Surface(34) = {33};
Extrude {0, 0, 1} {
  Surface{34};
}
Surface Loop(57) = {15, 6, 19, 23, 27, 28};
Delete {
  Volume{1};
}
Delete {
  Volume{2};
}
Delete {
  Surface{28};
}
Surface Loop(58) = {43, 34, 47, 51, 55, 56};
Delete {
  Surface{34};
}
Line Loop(59) = {9, 10, 11, 8};
Plane Surface(60) = {33, 59};
Surface Loop(61) = {43, 60, 47, 51, 55, 56, 15, 6, 19, 23, 27};
Volume(62) = {61};
Physical Volume(63) = {62};
Delete {
  Surface{6};
}
Delete {
  Surface{56};
}
