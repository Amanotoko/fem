lc = 1e-2;
Point(1) = {-0.1215, 0.771666, 0, lc} ;
Point(2) = {-0.120573, 0.771813, 0, lc} ;
Point(3) = {-0.119869, 0.772172, 0, lc} ;
Point(4) = {-0.119858, 0.772155, 0, lc} ;
Point(5) = {-0.084025, 0.795589, 0, lc} ;
Point(6) = {-0.08333, 0.796219, 0, lc} ;
Point(7) = {-0.082863, 0.797034, 0, lc} ;
Point(8) = {-0.082671, 0.797953, 0, lc} ;
Point(9) = {-0.082772, 0.798886, 0, lc} ;
Point(10) = {-0.083156, 0.799742, 0, lc} ;
Point(11) = {-0.083787, 0.800438, 0, lc} ;
Point(12) = {-0.084601, 0.800904, 0, lc} ;
Point(13) = {-0.08552, 0.801096, 0, lc} ;
Point(14) = {-0.085667, 0.80108, 0, lc} ;
Point(15) = {-0.085667, 0.8011, 0, lc} ;
Point(16) = {-0.1185, 0.8011, 0, lc} ;
Point(17) = {-0.1185, 0.806334, 0, lc} ;
Point(18) = {-0.118647, 0.807261, 0, lc} ;
Point(19) = {-0.119073, 0.808097, 0, lc} ;
Point(20) = {-0.119737, 0.808761, 0, lc} ;
Point(21) = {-0.120573, 0.809187, 0, lc} ;
Point(22) = {-0.1215, 0.809334, 0, lc} ;
Point(23) = {-0.122427, 0.809187, 0, lc} ;
Point(24) = {-0.123263, 0.808761, 0, lc} ;
Point(25) = {-0.123927, 0.808097, 0, lc} ;
Point(26) = {-0.124353, 0.807261, 0, lc} ;
Point(27) = {-0.1245, 0.806334, 0, lc} ;
Point(28) = {-0.1245, 0.8011, 0, lc} ;
Point(29) = {-0.135667, 0.8011, 0, lc} ;
Point(30) = {-0.136594, 0.800953, 0, lc} ;
Point(31) = {-0.13743, 0.800527, 0, lc} ;
Point(32) = {-0.138094, 0.799863, 0, lc} ;
Point(33) = {-0.13852, 0.799027, 0, lc} ;
Point(34) = {-0.138667, 0.7981, 0, lc} ;
Point(35) = {-0.13852, 0.797173, 0, lc} ;
Point(36) = {-0.138094, 0.796337, 0, lc} ;
Point(37) = {-0.13743, 0.795673, 0, lc} ;
Point(38) = {-0.136594, 0.795247, 0, lc} ;
Point(39) = {-0.135667, 0.7951, 0, lc} ;
Point(40) = {-0.1245, 0.7951, 0, lc} ;
Point(41) = {-0.1245, 0.774666, 0, lc} ;
Point(42) = {-0.124353, 0.773739, 0, lc} ;
Point(43) = {-0.123927, 0.772903, 0, lc} ;
Point(44) = {-0.123263, 0.772239, 0, lc} ;
Point(45) = {-0.122427, 0.771813, 0, lc} ;
Line(46) = {1,2} ;
Line(47) = {2,3} ;
Line(48) = {3,4} ;
Line(49) = {4,5} ;
Line(50) = {5,6} ;
Line(51) = {6,7} ;
Line(52) = {7,8} ;
Line(53) = {8,9} ;
Line(54) = {9,10} ;
Line(55) = {10,11} ;
Line(56) = {11,12} ;
Line(57) = {12,13} ;
Line(58) = {13,14} ;
Line(59) = {14,15} ;
Line(60) = {15,16} ;
Line(61) = {16,17} ;
Line(62) = {17,18} ;
Line(63) = {18,19} ;
Line(64) = {19,20} ;
Line(65) = {20,21} ;
Line(66) = {21,22} ;
Line(67) = {22,23} ;
Line(68) = {23,24} ;
Line(69) = {24,25} ;
Line(70) = {25,26} ;
Line(71) = {26,27} ;
Line(72) = {27,28} ;
Line(73) = {28,29} ;
Line(74) = {29,30} ;
Line(75) = {30,31} ;
Line(76) = {31,32} ;
Line(77) = {32,33} ;
Line(78) = {33,34} ;
Line(79) = {34,35} ;
Line(80) = {35,36} ;
Line(81) = {36,37} ;
Line(82) = {37,38} ;
Line(83) = {38,39} ;
Line(84) = {39,40} ;
Line(85) = {40,41} ;
Line(86) = {41,42} ;
Line(87) = {42,43} ;
Line(88) = {43,44} ;
Line(89) = {44,45} ;
Line(90) = {45,1} ;
Line Loop(91) = {46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90} ;
Plane Surface(92) = {91} ;
Extrude{0,0,0.00137}{ Surface{92}; }
Point(1013) = {-0.1185, 0.780213, 0, lc} ;
Point(1014) = {-0.1185, 0.7951, 0, lc} ;
Point(1015) = {-0.095736, 0.7951, 0, lc} ;
Line(1016) = {1013,1014} ;
Line(1017) = {1014,1015} ;
Line(1018) = {1015,1013} ;
Line Loop(1019) = {1016,1017,1018} ;
Plane Surface(1020) = {1019} ;
Extrude{0,0,0.00137}{ Surface{1020}; }
