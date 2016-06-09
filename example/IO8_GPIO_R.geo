lc = 1e-2;
Point(1) = {0.796, 0.289, 0.10548, lc} ;
Point(2) = {0.848, 0.289, 0.10548, lc} ;
Point(3) = {0.848, 0.341, 0.10548, lc} ;
Point(4) = {0.796, 0.341, 0.10548, lc} ;
Line(5) = {1,2} ;
Line(6) = {2,3} ;
Line(7) = {3,4} ;
Line(8) = {4,1} ;
Line Loop(9) = {5,6,7,8} ;
Plane Surface(10) = {9} ;
Extrude{0,0,0.00137}{ Surface{10}; }
Point(275) = {0.796, 0.289, 0.08548, lc} ;
Point(276) = {0.848, 0.289, 0.08548, lc} ;
Point(277) = {0.848, 0.341, 0.08548, lc} ;
Point(278) = {0.796, 0.341, 0.08548, lc} ;
Line(279) = {275,276} ;
Line(280) = {276,277} ;
Line(281) = {277,278} ;
Line(282) = {278,275} ;
Line Loop(283) = {279,280,281,282} ;
Plane Surface(284) = {283} ;
Extrude{0,0,0.01}{ Surface{284}; }
Point(549) = {0.796, 0.289, 0.03411, lc} ;
Point(550) = {0.848, 0.289, 0.03411, lc} ;
Point(551) = {0.848, 0.341, 0.03411, lc} ;
Point(552) = {0.796, 0.341, 0.03411, lc} ;
Line(553) = {549,550} ;
Line(554) = {550,551} ;
Line(555) = {551,552} ;
Line(556) = {552,549} ;
Line Loop(557) = {553,554,555,556} ;
Plane Surface(558) = {557} ;
Extrude{0,0,0.00137}{ Surface{558}; }
Point(823) = {0.796, 0.289, 0.02274, lc} ;
Point(824) = {0.848, 0.289, 0.02274, lc} ;
Point(825) = {0.848, 0.341, 0.02274, lc} ;
Point(826) = {0.796, 0.341, 0.02274, lc} ;
Line(827) = {823,824} ;
Line(828) = {824,825} ;
Line(829) = {825,826} ;
Line(830) = {826,823} ;
Line Loop(831) = {827,828,829,830} ;
Plane Surface(832) = {831} ;
Extrude{0,0,0.00137}{ Surface{832}; }
Point(1097) = {0.796, 0.289, 0.01137, lc} ;
Point(1098) = {0.848, 0.289, 0.01137, lc} ;
Point(1099) = {0.848, 0.341, 0.01137, lc} ;
Point(1100) = {0.796, 0.341, 0.01137, lc} ;
Line(1101) = {1097,1098} ;
Line(1102) = {1098,1099} ;
Line(1103) = {1099,1100} ;
Line(1104) = {1100,1097} ;
Line Loop(1105) = {1101,1102,1103,1104} ;
Plane Surface(1106) = {1105} ;
Extrude{0,0,0.00137}{ Surface{1106}; }
Point(1371) = {0.796, 0.289, 0, lc} ;
Point(1372) = {0.848, 0.289, 0, lc} ;
Point(1373) = {0.848, 0.341, 0, lc} ;
Point(1374) = {0.8241, 0.341, 0, lc} ;
Point(1375) = {0.8241, 0.36613, 0, lc} ;
Point(1376) = {0.971666, 0.513696, 0, lc} ;
Point(1377) = {0.977251, 0.508111, 0, lc} ;
Point(1378) = {0.991391, 0.522251, 0, lc} ;
Point(1379) = {0.977251, 0.536391, 0, lc} ;
Point(1380) = {0.963111, 0.522251, 0, lc} ;
Point(1381) = {0.968696, 0.516666, 0, lc} ;
Point(1382) = {0.820515, 0.368485, 0, lc} ;
Point(1383) = {0.820129, 0.367953, 0, lc} ;
Point(1384) = {0.819926, 0.367329, 0, lc} ;
Point(1385) = {0.819926, 0.367, 0, lc} ;
Point(1386) = {0.8199, 0.367, 0, lc} ;
Point(1387) = {0.8199, 0.341, 0, lc} ;
Point(1388) = {0.796, 0.341, 0, lc} ;
Line(1389) = {1371,1372} ;
Line(1390) = {1372,1373} ;
Line(1391) = {1373,1374} ;
Line(1392) = {1374,1375} ;
Line(1393) = {1375,1376} ;
Line(1394) = {1376,1377} ;
Line(1395) = {1377,1378} ;
Line(1396) = {1378,1379} ;
Line(1397) = {1379,1380} ;
Line(1398) = {1380,1381} ;
Line(1399) = {1381,1382} ;
Line(1400) = {1382,1383} ;
Line(1401) = {1383,1384} ;
Line(1402) = {1384,1385} ;
Line(1403) = {1385,1386} ;
Line(1404) = {1386,1387} ;
Line(1405) = {1387,1388} ;
Line(1406) = {1388,1371} ;
Line Loop(1407) = {1389,1390,1391,1392,1393,1394,1395,1396,1397,1398,1399,1400,1401,1402,1403,1404,1405,1406} ;
Plane Surface(1408) = {1407} ;
Extrude{0,0,0.00137}{ Surface{1408}; }
Point(1897) = {0.796, 0.289, 0.10548, lc} ;
Point(1898) = {0.796, 0.341, 0.10548, lc} ;
Point(1899) = {0.848, 0.341, 0.10548, lc} ;
Point(1900) = {0.848, 0.289, 0.10548, lc} ;
Line(1901) = {1897,1898} ;
Line(1902) = {1898,1899} ;
Line(1903) = {1899,1900} ;
Line(1904) = {1900,1897} ;
Line Loop(1905) = {1901,1902,1903,1904} ;
Plane Surface(1906) = {1905} ;
Extrude{0,0,0.00137}{ Surface{1906}; }
Point(2171) = {0.822,0.315,0.09548, lc};
Point(2172) = {0.822,0.331,0.09548, lc};
Point(2173) = {0.838,0.315,0.09548, lc};
Point(2174) = {0.822,0.299,0.09548, lc};
Point(2175) = {0.806,0.315,0.09548, lc};
Circle(2176) = {2172, 2171,2173};
Circle(2177) = {2173, 2171,2174};
Circle(2178) = {2174, 2171,2175};
Circle(2179) = {2175, 2171,2172};
Line Loop(2180) = {2176,2177,2178,2179};
Plane Surface(2181) = {2180};
Extrude {0,0,0.01} { 
  Surface{2181};
}
Point(2450) = {0.796, 0.289, 0.08548, lc} ;
Point(2451) = {0.796, 0.341, 0.08548, lc} ;
Point(2452) = {0.848, 0.341, 0.08548, lc} ;
Point(2453) = {0.848, 0.289, 0.08548, lc} ;
Line(2454) = {2450,2451} ;
Line(2455) = {2451,2452} ;
Line(2456) = {2452,2453} ;
Line(2457) = {2453,2450} ;
Line Loop(2458) = {2454,2455,2456,2457} ;
Plane Surface(2459) = {2458} ;
Extrude{0,0,0.01}{ Surface{2459}; }
Point(2724) = {0.822,0.315,0.03548, lc};
Point(2725) = {0.822,0.331,0.03548, lc};
Point(2726) = {0.838,0.315,0.03548, lc};
Point(2727) = {0.822,0.299,0.03548, lc};
Point(2728) = {0.806,0.315,0.03548, lc};
Circle(2729) = {2725, 2724,2726};
Circle(2730) = {2726, 2724,2727};
Circle(2731) = {2727, 2724,2728};
Circle(2732) = {2728, 2724,2725};
Line Loop(2733) = {2729,2730,2731,2732};
Plane Surface(2734) = {2733};
Extrude {0,0,0.05} { 
  Surface{2734};
}
Point(3003) = {0.796, 0.289, 0.03411, lc} ;
Point(3004) = {0.796, 0.341, 0.03411, lc} ;
Point(3005) = {0.848, 0.341, 0.03411, lc} ;
Point(3006) = {0.848, 0.289, 0.03411, lc} ;
Line(3007) = {3003,3004} ;
Line(3008) = {3004,3005} ;
Line(3009) = {3005,3006} ;
Line(3010) = {3006,3003} ;
Line Loop(3011) = {3007,3008,3009,3010} ;
Plane Surface(3012) = {3011} ;
Extrude{0,0,0.00137}{ Surface{3012}; }
Point(3277) = {0.822,0.315,0.02411, lc};
Point(3278) = {0.822,0.331,0.02411, lc};
Point(3279) = {0.838,0.315,0.02411, lc};
Point(3280) = {0.822,0.299,0.02411, lc};
Point(3281) = {0.806,0.315,0.02411, lc};
Circle(3282) = {3278, 3277,3279};
Circle(3283) = {3279, 3277,3280};
Circle(3284) = {3280, 3277,3281};
Circle(3285) = {3281, 3277,3278};
Line Loop(3286) = {3282,3283,3284,3285};
Plane Surface(3287) = {3286};
Extrude {0,0,0.01} { 
  Surface{3287};
}
Point(3556) = {0.796, 0.289, 0.02274, lc} ;
Point(3557) = {0.796, 0.341, 0.02274, lc} ;
Point(3558) = {0.848, 0.341, 0.02274, lc} ;
Point(3559) = {0.848, 0.289, 0.02274, lc} ;
Line(3560) = {3556,3557} ;
Line(3561) = {3557,3558} ;
Line(3562) = {3558,3559} ;
Line(3563) = {3559,3556} ;
Line Loop(3564) = {3560,3561,3562,3563} ;
Plane Surface(3565) = {3564} ;
Extrude{0,0,0.00137}{ Surface{3565}; }
Point(3830) = {0.822,0.315,0.01274, lc};
Point(3831) = {0.822,0.331,0.01274, lc};
Point(3832) = {0.838,0.315,0.01274, lc};
Point(3833) = {0.822,0.299,0.01274, lc};
Point(3834) = {0.806,0.315,0.01274, lc};
Circle(3835) = {3831, 3830,3832};
Circle(3836) = {3832, 3830,3833};
Circle(3837) = {3833, 3830,3834};
Circle(3838) = {3834, 3830,3831};
Line Loop(3839) = {3835,3836,3837,3838};
Plane Surface(3840) = {3839};
Extrude {0,0,0.01} { 
  Surface{3840};
}
Point(4109) = {0.796, 0.289, 0.01137, lc} ;
Point(4110) = {0.796, 0.341, 0.01137, lc} ;
Point(4111) = {0.848, 0.341, 0.01137, lc} ;
Point(4112) = {0.848, 0.289, 0.01137, lc} ;
Line(4113) = {4109,4110} ;
Line(4114) = {4110,4111} ;
Line(4115) = {4111,4112} ;
Line(4116) = {4112,4109} ;
Line Loop(4117) = {4113,4114,4115,4116} ;
Plane Surface(4118) = {4117} ;
Extrude{0,0,0.00137}{ Surface{4118}; }
Point(4383) = {0.822,0.315,0.00137, lc};
Point(4384) = {0.822,0.331,0.00137, lc};
Point(4385) = {0.838,0.315,0.00137, lc};
Point(4386) = {0.822,0.299,0.00137, lc};
Point(4387) = {0.806,0.315,0.00137, lc};
Circle(4388) = {4384, 4383,4385};
Circle(4389) = {4385, 4383,4386};
Circle(4390) = {4386, 4383,4387};
Circle(4391) = {4387, 4383,4384};
Line Loop(4392) = {4388,4389,4390,4391};
Plane Surface(4393) = {4392};
Extrude {0,0,0.01} { 
  Surface{4393};
}
Point(4662) = {0.796, 0.289, 0, lc} ;
Point(4663) = {0.796, 0.341, 0, lc} ;
Point(4664) = {0.848, 0.341, 0, lc} ;
Point(4665) = {0.848, 0.289, 0, lc} ;
Line(4666) = {4662,4663} ;
Line(4667) = {4663,4664} ;
Line(4668) = {4664,4665} ;
Line(4669) = {4665,4662} ;
Line Loop(4670) = {4666,4667,4668,4669} ;
Plane Surface(4671) = {4670} ;
Extrude{0,0,0.00137}{ Surface{4671}; }
Point(4936) = {0.796, 0.289, 0.10548, lc} ;
Point(4937) = {0.796, 0.341, 0.10548, lc} ;
Point(4938) = {0.848, 0.341, 0.10548, lc} ;
Point(4939) = {0.848, 0.289, 0.10548, lc} ;
Line(4940) = {4936,4937} ;
Line(4941) = {4937,4938} ;
Line(4942) = {4938,4939} ;
Line(4943) = {4939,4936} ;
Line Loop(4944) = {4940,4941,4942,4943} ;
Plane Surface(4945) = {4944} ;
Extrude{0,0,0.00137}{ Surface{4945}; }
