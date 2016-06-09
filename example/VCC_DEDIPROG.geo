lc = 1e-2;
Point(1) = {0.265, -0.066, 0.10548, lc} ;
Point(2) = {0.325, -0.066, 0.10548, lc} ;
Point(3) = {0.325, -0.006, 0.10548, lc} ;
Point(4) = {0.265, -0.006, 0.10548, lc} ;
Line(5) = {1,2} ;
Line(6) = {2,3} ;
Line(7) = {3,4} ;
Line(8) = {4,1} ;
Line Loop(9) = {5,6,7,8} ;
Plane Surface(10) = {9} ;
Extrude{0,0,0.00137}{ Surface{10}; }
Point(275) = {0.295, -0.066, 0.08548, lc} ;
Point(276) = {0.299693, -0.065631, 0.08548, lc} ;
Point(277) = {0.304271, -0.064532, 0.08548, lc} ;
Point(278) = {0.30862, -0.06273, 0.08548, lc} ;
Point(279) = {0.312634, -0.06027, 0.08548, lc} ;
Point(280) = {0.316213, -0.057213, 0.08548, lc} ;
Point(281) = {0.319271, -0.053634, 0.08548, lc} ;
Point(282) = {0.32173, -0.04962, 0.08548, lc} ;
Point(283) = {0.323532, -0.04527, 0.08548, lc} ;
Point(284) = {0.324631, -0.040693, 0.08548, lc} ;
Point(285) = {0.325, -0.036, 0.08548, lc} ;
Point(286) = {0.324631, -0.031307, 0.08548, lc} ;
Point(287) = {0.324256, -0.029748, 0.08548, lc} ;
Point(288) = {0.323532, -0.02673, 0.08548, lc} ;
Point(289) = {0.32173, -0.02238, 0.08548, lc} ;
Point(290) = {0.319271, -0.018366, 0.08548, lc} ;
Point(291) = {0.316213, -0.014787, 0.08548, lc} ;
Point(292) = {0.312634, -0.01173, 0.08548, lc} ;
Point(293) = {0.30862, -0.00927, 0.08548, lc} ;
Point(294) = {0.304271, -0.007468, 0.08548, lc} ;
Point(295) = {0.299693, -0.006369, 0.08548, lc} ;
Point(296) = {0.295, -0.006, 0.08548, lc} ;
Point(297) = {0.290307, -0.006369, 0.08548, lc} ;
Point(298) = {0.28573, -0.007468, 0.08548, lc} ;
Point(299) = {0.28138, -0.00927, 0.08548, lc} ;
Point(300) = {0.277366, -0.01173, 0.08548, lc} ;
Point(301) = {0.273787, -0.014787, 0.08548, lc} ;
Point(302) = {0.27073, -0.018366, 0.08548, lc} ;
Point(303) = {0.26827, -0.02238, 0.08548, lc} ;
Point(304) = {0.266468, -0.02673, 0.08548, lc} ;
Point(305) = {0.265744, -0.029748, 0.08548, lc} ;
Point(306) = {0.265369, -0.031307, 0.08548, lc} ;
Point(307) = {0.265, -0.036, 0.08548, lc} ;
Point(308) = {0.265369, -0.040693, 0.08548, lc} ;
Point(309) = {0.266468, -0.04527, 0.08548, lc} ;
Point(310) = {0.26827, -0.04962, 0.08548, lc} ;
Point(311) = {0.27073, -0.053634, 0.08548, lc} ;
Point(312) = {0.273787, -0.057213, 0.08548, lc} ;
Point(313) = {0.277366, -0.06027, 0.08548, lc} ;
Point(314) = {0.28138, -0.06273, 0.08548, lc} ;
Point(315) = {0.28573, -0.064532, 0.08548, lc} ;
Point(316) = {0.290307, -0.065631, 0.08548, lc} ;
Line(317) = {275,276} ;
Line(318) = {276,277} ;
Line(319) = {277,278} ;
Line(320) = {278,279} ;
Line(321) = {279,280} ;
Line(322) = {280,281} ;
Line(323) = {281,282} ;
Line(324) = {282,283} ;
Line(325) = {283,284} ;
Line(326) = {284,285} ;
Line(327) = {285,286} ;
Line(328) = {286,287} ;
Line(329) = {287,288} ;
Line(330) = {288,289} ;
Line(331) = {289,290} ;
Line(332) = {290,291} ;
Line(333) = {291,292} ;
Line(334) = {292,293} ;
Line(335) = {293,294} ;
Line(336) = {294,295} ;
Line(337) = {295,296} ;
Line(338) = {296,297} ;
Line(339) = {297,298} ;
Line(340) = {298,299} ;
Line(341) = {299,300} ;
Line(342) = {300,301} ;
Line(343) = {301,302} ;
Line(344) = {302,303} ;
Line(345) = {303,304} ;
Line(346) = {304,305} ;
Line(347) = {305,306} ;
Line(348) = {306,307} ;
Line(349) = {307,308} ;
Line(350) = {308,309} ;
Line(351) = {309,310} ;
Line(352) = {310,311} ;
Line(353) = {311,312} ;
Line(354) = {312,313} ;
Line(355) = {313,314} ;
Line(356) = {314,315} ;
Line(357) = {315,316} ;
Line(358) = {316,275} ;
Line Loop(359) = {317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358} ;
Plane Surface(360) = {359} ;
Extrude{0,0,0.01}{ Surface{360}; }
Point(1233) = {0.295, -0.066, 0.03411, lc} ;
Point(1234) = {0.299693, -0.065631, 0.03411, lc} ;
Point(1235) = {0.304271, -0.064532, 0.03411, lc} ;
Point(1236) = {0.30862, -0.06273, 0.03411, lc} ;
Point(1237) = {0.312634, -0.06027, 0.03411, lc} ;
Point(1238) = {0.316213, -0.057213, 0.03411, lc} ;
Point(1239) = {0.319271, -0.053634, 0.03411, lc} ;
Point(1240) = {0.32173, -0.04962, 0.03411, lc} ;
Point(1241) = {0.323532, -0.04527, 0.03411, lc} ;
Point(1242) = {0.324631, -0.040693, 0.03411, lc} ;
Point(1243) = {0.325, -0.036, 0.03411, lc} ;
Point(1244) = {0.324631, -0.031307, 0.03411, lc} ;
Point(1245) = {0.324256, -0.029748, 0.03411, lc} ;
Point(1246) = {0.323532, -0.02673, 0.03411, lc} ;
Point(1247) = {0.32173, -0.02238, 0.03411, lc} ;
Point(1248) = {0.319271, -0.018366, 0.03411, lc} ;
Point(1249) = {0.316213, -0.014787, 0.03411, lc} ;
Point(1250) = {0.312634, -0.01173, 0.03411, lc} ;
Point(1251) = {0.30862, -0.00927, 0.03411, lc} ;
Point(1252) = {0.304271, -0.007468, 0.03411, lc} ;
Point(1253) = {0.299693, -0.006369, 0.03411, lc} ;
Point(1254) = {0.295, -0.006, 0.03411, lc} ;
Point(1255) = {0.290307, -0.006369, 0.03411, lc} ;
Point(1256) = {0.28573, -0.007468, 0.03411, lc} ;
Point(1257) = {0.28138, -0.00927, 0.03411, lc} ;
Point(1258) = {0.277366, -0.01173, 0.03411, lc} ;
Point(1259) = {0.273787, -0.014787, 0.03411, lc} ;
Point(1260) = {0.27073, -0.018366, 0.03411, lc} ;
Point(1261) = {0.26827, -0.02238, 0.03411, lc} ;
Point(1262) = {0.266468, -0.02673, 0.03411, lc} ;
Point(1263) = {0.265744, -0.029748, 0.03411, lc} ;
Point(1264) = {0.265369, -0.031307, 0.03411, lc} ;
Point(1265) = {0.265, -0.036, 0.03411, lc} ;
Point(1266) = {0.265369, -0.040693, 0.03411, lc} ;
Point(1267) = {0.266468, -0.04527, 0.03411, lc} ;
Point(1268) = {0.26827, -0.04962, 0.03411, lc} ;
Point(1269) = {0.27073, -0.053634, 0.03411, lc} ;
Point(1270) = {0.273787, -0.057213, 0.03411, lc} ;
Point(1271) = {0.277366, -0.06027, 0.03411, lc} ;
Point(1272) = {0.28138, -0.06273, 0.03411, lc} ;
Point(1273) = {0.28573, -0.064532, 0.03411, lc} ;
Point(1274) = {0.290307, -0.065631, 0.03411, lc} ;
Line(1275) = {1233,1234} ;
Line(1276) = {1234,1235} ;
Line(1277) = {1235,1236} ;
Line(1278) = {1236,1237} ;
Line(1279) = {1237,1238} ;
Line(1280) = {1238,1239} ;
Line(1281) = {1239,1240} ;
Line(1282) = {1240,1241} ;
Line(1283) = {1241,1242} ;
Line(1284) = {1242,1243} ;
Line(1285) = {1243,1244} ;
Line(1286) = {1244,1245} ;
Line(1287) = {1245,1246} ;
Line(1288) = {1246,1247} ;
Line(1289) = {1247,1248} ;
Line(1290) = {1248,1249} ;
Line(1291) = {1249,1250} ;
Line(1292) = {1250,1251} ;
Line(1293) = {1251,1252} ;
Line(1294) = {1252,1253} ;
Line(1295) = {1253,1254} ;
Line(1296) = {1254,1255} ;
Line(1297) = {1255,1256} ;
Line(1298) = {1256,1257} ;
Line(1299) = {1257,1258} ;
Line(1300) = {1258,1259} ;
Line(1301) = {1259,1260} ;
Line(1302) = {1260,1261} ;
Line(1303) = {1261,1262} ;
Line(1304) = {1262,1263} ;
Line(1305) = {1263,1264} ;
Line(1306) = {1264,1265} ;
Line(1307) = {1265,1266} ;
Line(1308) = {1266,1267} ;
Line(1309) = {1267,1268} ;
Line(1310) = {1268,1269} ;
Line(1311) = {1269,1270} ;
Line(1312) = {1270,1271} ;
Line(1313) = {1271,1272} ;
Line(1314) = {1272,1273} ;
Line(1315) = {1273,1274} ;
Line(1316) = {1274,1233} ;
Line Loop(1317) = {1275,1276,1277,1278,1279,1280,1281,1282,1283,1284,1285,1286,1287,1288,1289,1290,1291,1292,1293,1294,1295,1296,1297,1298,1299,1300,1301,1302,1303,1304,1305,1306,1307,1308,1309,1310,1311,1312,1313,1314,1315,1316} ;
Plane Surface(1318) = {1317} ;
Extrude{0,0,0.00137}{ Surface{1318}; }
Point(2191) = {0.295, -0.066, 0.02274, lc} ;
Point(2192) = {0.299693, -0.065631, 0.02274, lc} ;
Point(2193) = {0.304271, -0.064532, 0.02274, lc} ;
Point(2194) = {0.30862, -0.06273, 0.02274, lc} ;
Point(2195) = {0.312634, -0.06027, 0.02274, lc} ;
Point(2196) = {0.316213, -0.057213, 0.02274, lc} ;
Point(2197) = {0.319271, -0.053634, 0.02274, lc} ;
Point(2198) = {0.32173, -0.04962, 0.02274, lc} ;
Point(2199) = {0.323532, -0.04527, 0.02274, lc} ;
Point(2200) = {0.324631, -0.040693, 0.02274, lc} ;
Point(2201) = {0.325, -0.036, 0.02274, lc} ;
Point(2202) = {0.324631, -0.031307, 0.02274, lc} ;
Point(2203) = {0.324256, -0.029748, 0.02274, lc} ;
Point(2204) = {0.323532, -0.02673, 0.02274, lc} ;
Point(2205) = {0.32173, -0.02238, 0.02274, lc} ;
Point(2206) = {0.319271, -0.018366, 0.02274, lc} ;
Point(2207) = {0.316213, -0.014787, 0.02274, lc} ;
Point(2208) = {0.312634, -0.01173, 0.02274, lc} ;
Point(2209) = {0.30862, -0.00927, 0.02274, lc} ;
Point(2210) = {0.304271, -0.007468, 0.02274, lc} ;
Point(2211) = {0.299693, -0.006369, 0.02274, lc} ;
Point(2212) = {0.295, -0.006, 0.02274, lc} ;
Point(2213) = {0.290307, -0.006369, 0.02274, lc} ;
Point(2214) = {0.28573, -0.007468, 0.02274, lc} ;
Point(2215) = {0.28138, -0.00927, 0.02274, lc} ;
Point(2216) = {0.277366, -0.01173, 0.02274, lc} ;
Point(2217) = {0.273787, -0.014787, 0.02274, lc} ;
Point(2218) = {0.27073, -0.018366, 0.02274, lc} ;
Point(2219) = {0.26827, -0.02238, 0.02274, lc} ;
Point(2220) = {0.266468, -0.02673, 0.02274, lc} ;
Point(2221) = {0.265744, -0.029748, 0.02274, lc} ;
Point(2222) = {0.265369, -0.031307, 0.02274, lc} ;
Point(2223) = {0.265, -0.036, 0.02274, lc} ;
Point(2224) = {0.265369, -0.040693, 0.02274, lc} ;
Point(2225) = {0.266468, -0.04527, 0.02274, lc} ;
Point(2226) = {0.26827, -0.04962, 0.02274, lc} ;
Point(2227) = {0.27073, -0.053634, 0.02274, lc} ;
Point(2228) = {0.273787, -0.057213, 0.02274, lc} ;
Point(2229) = {0.277366, -0.06027, 0.02274, lc} ;
Point(2230) = {0.28138, -0.06273, 0.02274, lc} ;
Point(2231) = {0.28573, -0.064532, 0.02274, lc} ;
Point(2232) = {0.290307, -0.065631, 0.02274, lc} ;
Line(2233) = {2191,2192} ;
Line(2234) = {2192,2193} ;
Line(2235) = {2193,2194} ;
Line(2236) = {2194,2195} ;
Line(2237) = {2195,2196} ;
Line(2238) = {2196,2197} ;
Line(2239) = {2197,2198} ;
Line(2240) = {2198,2199} ;
Line(2241) = {2199,2200} ;
Line(2242) = {2200,2201} ;
Line(2243) = {2201,2202} ;
Line(2244) = {2202,2203} ;
Line(2245) = {2203,2204} ;
Line(2246) = {2204,2205} ;
Line(2247) = {2205,2206} ;
Line(2248) = {2206,2207} ;
Line(2249) = {2207,2208} ;
Line(2250) = {2208,2209} ;
Line(2251) = {2209,2210} ;
Line(2252) = {2210,2211} ;
Line(2253) = {2211,2212} ;
Line(2254) = {2212,2213} ;
Line(2255) = {2213,2214} ;
Line(2256) = {2214,2215} ;
Line(2257) = {2215,2216} ;
Line(2258) = {2216,2217} ;
Line(2259) = {2217,2218} ;
Line(2260) = {2218,2219} ;
Line(2261) = {2219,2220} ;
Line(2262) = {2220,2221} ;
Line(2263) = {2221,2222} ;
Line(2264) = {2222,2223} ;
Line(2265) = {2223,2224} ;
Line(2266) = {2224,2225} ;
Line(2267) = {2225,2226} ;
Line(2268) = {2226,2227} ;
Line(2269) = {2227,2228} ;
Line(2270) = {2228,2229} ;
Line(2271) = {2229,2230} ;
Line(2272) = {2230,2231} ;
Line(2273) = {2231,2232} ;
Line(2274) = {2232,2191} ;
Line Loop(2275) = {2233,2234,2235,2236,2237,2238,2239,2240,2241,2242,2243,2244,2245,2246,2247,2248,2249,2250,2251,2252,2253,2254,2255,2256,2257,2258,2259,2260,2261,2262,2263,2264,2265,2266,2267,2268,2269,2270,2271,2272,2273,2274} ;
Plane Surface(2276) = {2275} ;
Extrude{0,0,0.00137}{ Surface{2276}; }
Point(3149) = {0.295, -0.066, 0.01137, lc} ;
Point(3150) = {0.299693, -0.065631, 0.01137, lc} ;
Point(3151) = {0.304271, -0.064532, 0.01137, lc} ;
Point(3152) = {0.30862, -0.06273, 0.01137, lc} ;
Point(3153) = {0.312634, -0.06027, 0.01137, lc} ;
Point(3154) = {0.316213, -0.057213, 0.01137, lc} ;
Point(3155) = {0.319271, -0.053634, 0.01137, lc} ;
Point(3156) = {0.32173, -0.04962, 0.01137, lc} ;
Point(3157) = {0.323532, -0.04527, 0.01137, lc} ;
Point(3158) = {0.324631, -0.040693, 0.01137, lc} ;
Point(3159) = {0.325, -0.036, 0.01137, lc} ;
Point(3160) = {0.324631, -0.031307, 0.01137, lc} ;
Point(3161) = {0.324256, -0.029748, 0.01137, lc} ;
Point(3162) = {0.323532, -0.02673, 0.01137, lc} ;
Point(3163) = {0.32173, -0.02238, 0.01137, lc} ;
Point(3164) = {0.319271, -0.018366, 0.01137, lc} ;
Point(3165) = {0.316213, -0.014787, 0.01137, lc} ;
Point(3166) = {0.312634, -0.01173, 0.01137, lc} ;
Point(3167) = {0.30862, -0.00927, 0.01137, lc} ;
Point(3168) = {0.304271, -0.007468, 0.01137, lc} ;
Point(3169) = {0.299693, -0.006369, 0.01137, lc} ;
Point(3170) = {0.295, -0.006, 0.01137, lc} ;
Point(3171) = {0.290307, -0.006369, 0.01137, lc} ;
Point(3172) = {0.28573, -0.007468, 0.01137, lc} ;
Point(3173) = {0.28138, -0.00927, 0.01137, lc} ;
Point(3174) = {0.277366, -0.01173, 0.01137, lc} ;
Point(3175) = {0.273787, -0.014787, 0.01137, lc} ;
Point(3176) = {0.27073, -0.018366, 0.01137, lc} ;
Point(3177) = {0.26827, -0.02238, 0.01137, lc} ;
Point(3178) = {0.266468, -0.02673, 0.01137, lc} ;
Point(3179) = {0.265744, -0.029748, 0.01137, lc} ;
Point(3180) = {0.265369, -0.031307, 0.01137, lc} ;
Point(3181) = {0.265, -0.036, 0.01137, lc} ;
Point(3182) = {0.265369, -0.040693, 0.01137, lc} ;
Point(3183) = {0.266468, -0.04527, 0.01137, lc} ;
Point(3184) = {0.26827, -0.04962, 0.01137, lc} ;
Point(3185) = {0.27073, -0.053634, 0.01137, lc} ;
Point(3186) = {0.273787, -0.057213, 0.01137, lc} ;
Point(3187) = {0.277366, -0.06027, 0.01137, lc} ;
Point(3188) = {0.28138, -0.06273, 0.01137, lc} ;
Point(3189) = {0.28573, -0.064532, 0.01137, lc} ;
Point(3190) = {0.290307, -0.065631, 0.01137, lc} ;
Line(3191) = {3149,3150} ;
Line(3192) = {3150,3151} ;
Line(3193) = {3151,3152} ;
Line(3194) = {3152,3153} ;
Line(3195) = {3153,3154} ;
Line(3196) = {3154,3155} ;
Line(3197) = {3155,3156} ;
Line(3198) = {3156,3157} ;
Line(3199) = {3157,3158} ;
Line(3200) = {3158,3159} ;
Line(3201) = {3159,3160} ;
Line(3202) = {3160,3161} ;
Line(3203) = {3161,3162} ;
Line(3204) = {3162,3163} ;
Line(3205) = {3163,3164} ;
Line(3206) = {3164,3165} ;
Line(3207) = {3165,3166} ;
Line(3208) = {3166,3167} ;
Line(3209) = {3167,3168} ;
Line(3210) = {3168,3169} ;
Line(3211) = {3169,3170} ;
Line(3212) = {3170,3171} ;
Line(3213) = {3171,3172} ;
Line(3214) = {3172,3173} ;
Line(3215) = {3173,3174} ;
Line(3216) = {3174,3175} ;
Line(3217) = {3175,3176} ;
Line(3218) = {3176,3177} ;
Line(3219) = {3177,3178} ;
Line(3220) = {3178,3179} ;
Line(3221) = {3179,3180} ;
Line(3222) = {3180,3181} ;
Line(3223) = {3181,3182} ;
Line(3224) = {3182,3183} ;
Line(3225) = {3183,3184} ;
Line(3226) = {3184,3185} ;
Line(3227) = {3185,3186} ;
Line(3228) = {3186,3187} ;
Line(3229) = {3187,3188} ;
Line(3230) = {3188,3189} ;
Line(3231) = {3189,3190} ;
Line(3232) = {3190,3149} ;
Line Loop(3233) = {3191,3192,3193,3194,3195,3196,3197,3198,3199,3200,3201,3202,3203,3204,3205,3206,3207,3208,3209,3210,3211,3212,3213,3214,3215,3216,3217,3218,3219,3220,3221,3222,3223,3224,3225,3226,3227,3228,3229,3230,3231,3232} ;
Plane Surface(3234) = {3233} ;
Extrude{0,0,0.00137}{ Surface{3234}; }
Point(4107) = {0.265, -0.066, 0, lc} ;
Point(4108) = {0.325, -0.066, 0, lc} ;
Point(4109) = {0.325, -0.00897, 0, lc} ;
Point(4110) = {0.33687, 0.0029, 0, lc} ;
Point(4111) = {0.655, 0.0029, 0, lc} ;
Point(4112) = {0.655, 0.002926, 0, lc} ;
Point(4113) = {0.655328, 0.002926, 0, lc} ;
Point(4114) = {0.655953, 0.003129, 0, lc} ;
Point(4115) = {0.656485, 0.003515, 0, lc} ;
Point(4116) = {0.71087, 0.0579, 0, lc} ;
Point(4117) = {0.77113, 0.0579, 0, lc} ;
Point(4118) = {0.790515, 0.038515, 0, lc} ;
Point(4119) = {0.790533, 0.038533, 0, lc} ;
Point(4120) = {0.790766, 0.038301, 0, lc} ;
Point(4121) = {0.791351, 0.038003, 0, lc} ;
Point(4122) = {0.792, 0.0379, 0, lc} ;
Point(4123) = {0.821, 0.0379, 0, lc} ;
Point(4124) = {0.821, 0.037926, 0, lc} ;
Point(4125) = {0.821329, 0.037926, 0, lc} ;
Point(4126) = {0.821953, 0.038129, 0, lc} ;
Point(4127) = {0.822485, 0.038515, 0, lc} ;
Point(4128) = {0.859485, 0.075515, 0, lc} ;
Point(4129) = {0.859467, 0.075533, 0, lc} ;
Point(4130) = {0.859699, 0.075766, 0, lc} ;
Point(4131) = {0.859997, 0.076351, 0, lc} ;
Point(4132) = {0.8601, 0.077, 0, lc} ;
Point(4133) = {0.8601, 0.082, 0, lc} ;
Point(4134) = {0.878, 0.082, 0, lc} ;
Point(4135) = {0.878, 0.132, 0, lc} ;
Point(4136) = {0.838, 0.132, 0, lc} ;
Point(4137) = {0.838, 0.082, 0, lc} ;
Point(4138) = {0.8559, 0.082, 0, lc} ;
Point(4139) = {0.8559, 0.07787, 0, lc} ;
Point(4140) = {0.82013, 0.0421, 0, lc} ;
Point(4141) = {0.79287, 0.0421, 0, lc} ;
Point(4142) = {0.773485, 0.061485, 0, lc} ;
Point(4143) = {0.772953, 0.061871, 0, lc} ;
Point(4144) = {0.772328, 0.062074, 0, lc} ;
Point(4145) = {0.772, 0.062074, 0, lc} ;
Point(4146) = {0.772, 0.0621, 0, lc} ;
Point(4147) = {0.71, 0.0621, 0, lc} ;
Point(4148) = {0.709351, 0.061997, 0, lc} ;
Point(4149) = {0.708766, 0.061699, 0, lc} ;
Point(4150) = {0.708533, 0.061467, 0, lc} ;
Point(4151) = {0.708515, 0.061485, 0, lc} ;
Point(4152) = {0.65413, 0.0071, 0, lc} ;
Point(4153) = {0.336, 0.0071, 0, lc} ;
Point(4154) = {0.335351, 0.006997, 0, lc} ;
Point(4155) = {0.334766, 0.006699, 0, lc} ;
Point(4156) = {0.334533, 0.006467, 0, lc} ;
Point(4157) = {0.334515, 0.006485, 0, lc} ;
Point(4158) = {0.32203, -0.006, 0, lc} ;
Point(4159) = {0.265, -0.006, 0, lc} ;
Line(4160) = {4107,4108} ;
Line(4161) = {4108,4109} ;
Line(4162) = {4109,4110} ;
Line(4163) = {4110,4111} ;
Line(4164) = {4111,4112} ;
Line(4165) = {4112,4113} ;
Line(4166) = {4113,4114} ;
Line(4167) = {4114,4115} ;
Line(4168) = {4115,4116} ;
Line(4169) = {4116,4117} ;
Line(4170) = {4117,4118} ;
Line(4171) = {4118,4119} ;
Line(4172) = {4119,4120} ;
Line(4173) = {4120,4121} ;
Line(4174) = {4121,4122} ;
Line(4175) = {4122,4123} ;
Line(4176) = {4123,4124} ;
Line(4177) = {4124,4125} ;
Line(4178) = {4125,4126} ;
Line(4179) = {4126,4127} ;
Line(4180) = {4127,4128} ;
Line(4181) = {4128,4129} ;
Line(4182) = {4129,4130} ;
Line(4183) = {4130,4131} ;
Line(4184) = {4131,4132} ;
Line(4185) = {4132,4133} ;
Line(4186) = {4133,4134} ;
Line(4187) = {4134,4135} ;
Line(4188) = {4135,4136} ;
Line(4189) = {4136,4137} ;
Line(4190) = {4137,4138} ;
Line(4191) = {4138,4139} ;
Line(4192) = {4139,4140} ;
Line(4193) = {4140,4141} ;
Line(4194) = {4141,4142} ;
Line(4195) = {4142,4143} ;
Line(4196) = {4143,4144} ;
Line(4197) = {4144,4145} ;
Line(4198) = {4145,4146} ;
Line(4199) = {4146,4147} ;
Line(4200) = {4147,4148} ;
Line(4201) = {4148,4149} ;
Line(4202) = {4149,4150} ;
Line(4203) = {4150,4151} ;
Line(4204) = {4151,4152} ;
Line(4205) = {4152,4153} ;
Line(4206) = {4153,4154} ;
Line(4207) = {4154,4155} ;
Line(4208) = {4155,4156} ;
Line(4209) = {4156,4157} ;
Line(4210) = {4157,4158} ;
Line(4211) = {4158,4159} ;
Line(4212) = {4159,4107} ;
Line Loop(4213) = {4160,4161,4162,4163,4164,4165,4166,4167,4168,4169,4170,4171,4172,4173,4174,4175,4176,4177,4178,4179,4180,4181,4182,4183,4184,4185,4186,4187,4188,4189,4190,4191,4192,4193,4194,4195,4196,4197,4198,4199,4200,4201,4202,4203,4204,4205,4206,4207,4208,4209,4210,4211,4212} ;
Plane Surface(4214) = {4213} ;
Extrude{0,0,0.00137}{ Surface{4214}; }
Point(5263) = {0.265, -0.066, 0.10548, lc} ;
Point(5264) = {0.265, -0.006, 0.10548, lc} ;
Point(5265) = {0.325, -0.006, 0.10548, lc} ;
Point(5266) = {0.325, -0.066, 0.10548, lc} ;
Line(5267) = {5263,5264} ;
Line(5268) = {5264,5265} ;
Line(5269) = {5265,5266} ;
Line(5270) = {5266,5263} ;
Line Loop(5271) = {5267,5268,5269,5270} ;
Plane Surface(5272) = {5271} ;
Extrude{0,0,0.00137}{ Surface{5272}; }
Point(5537) = {0.295,-0.036,0.09548, lc};
Point(5538) = {0.295,-0.0135,0.09548, lc};
Point(5539) = {0.3175,-0.036,0.09548, lc};
Point(5540) = {0.295,-0.0585,0.09548, lc};
Point(5541) = {0.2725,-0.036,0.09548, lc};
Circle(5542) = {5538, 5537,5539};
Circle(5543) = {5539, 5537,5540};
Circle(5544) = {5540, 5537,5541};
Circle(5545) = {5541, 5537,5538};
Line Loop(5546) = {5542,5543,5544,5545};
Plane Surface(5547) = {5546};
Extrude {0,0,0.01} { 
  Surface{5547};
}
Point(5816) = {0.295,-0.036,0.08548, lc};
Point(5817) = {0.295,-0.006,0.08548, lc};
Point(5818) = {0.325,-0.036,0.08548, lc};
Point(5819) = {0.295,-0.066,0.08548, lc};
Point(5820) = {0.265,-0.036,0.08548, lc};
Circle(5821) = {5817, 5816,5818};
Circle(5822) = {5818, 5816,5819};
Circle(5823) = {5819, 5816,5820};
Circle(5824) = {5820, 5816,5817};
Line Loop(5825) = {5821,5822,5823,5824};
Plane Surface(5826) = {5825};
Extrude {0,0,0.01} { 
  Surface{5826};
}
Point(6095) = {0.295,-0.036,0.03548, lc};
Point(6096) = {0.295,-0.0135,0.03548, lc};
Point(6097) = {0.3175,-0.036,0.03548, lc};
Point(6098) = {0.295,-0.0585,0.03548, lc};
Point(6099) = {0.2725,-0.036,0.03548, lc};
Circle(6100) = {6096, 6095,6097};
Circle(6101) = {6097, 6095,6098};
Circle(6102) = {6098, 6095,6099};
Circle(6103) = {6099, 6095,6096};
Line Loop(6104) = {6100,6101,6102,6103};
Plane Surface(6105) = {6104};
Extrude {0,0,0.05} { 
  Surface{6105};
}
Point(6374) = {0.295,-0.036,0.03411, lc};
Point(6375) = {0.295,-0.006,0.03411, lc};
Point(6376) = {0.325,-0.036,0.03411, lc};
Point(6377) = {0.295,-0.066,0.03411, lc};
Point(6378) = {0.265,-0.036,0.03411, lc};
Circle(6379) = {6375, 6374,6376};
Circle(6380) = {6376, 6374,6377};
Circle(6381) = {6377, 6374,6378};
Circle(6382) = {6378, 6374,6375};
Line Loop(6383) = {6379,6380,6381,6382};
Plane Surface(6384) = {6383};
Extrude {0,0,0.00137} { 
  Surface{6384};
}
Point(6653) = {0.295,-0.036,0.02411, lc};
Point(6654) = {0.295,-0.0135,0.02411, lc};
Point(6655) = {0.3175,-0.036,0.02411, lc};
Point(6656) = {0.295,-0.0585,0.02411, lc};
Point(6657) = {0.2725,-0.036,0.02411, lc};
Circle(6658) = {6654, 6653,6655};
Circle(6659) = {6655, 6653,6656};
Circle(6660) = {6656, 6653,6657};
Circle(6661) = {6657, 6653,6654};
Line Loop(6662) = {6658,6659,6660,6661};
Plane Surface(6663) = {6662};
Extrude {0,0,0.01} { 
  Surface{6663};
}
Point(6932) = {0.295,-0.036,0.02274, lc};
Point(6933) = {0.295,-0.006,0.02274, lc};
Point(6934) = {0.325,-0.036,0.02274, lc};
Point(6935) = {0.295,-0.066,0.02274, lc};
Point(6936) = {0.265,-0.036,0.02274, lc};
Circle(6937) = {6933, 6932,6934};
Circle(6938) = {6934, 6932,6935};
Circle(6939) = {6935, 6932,6936};
Circle(6940) = {6936, 6932,6933};
Line Loop(6941) = {6937,6938,6939,6940};
Plane Surface(6942) = {6941};
Extrude {0,0,0.00137} { 
  Surface{6942};
}
Point(7211) = {0.295,-0.036,0.01274, lc};
Point(7212) = {0.295,-0.0135,0.01274, lc};
Point(7213) = {0.3175,-0.036,0.01274, lc};
Point(7214) = {0.295,-0.0585,0.01274, lc};
Point(7215) = {0.2725,-0.036,0.01274, lc};
Circle(7216) = {7212, 7211,7213};
Circle(7217) = {7213, 7211,7214};
Circle(7218) = {7214, 7211,7215};
Circle(7219) = {7215, 7211,7212};
Line Loop(7220) = {7216,7217,7218,7219};
Plane Surface(7221) = {7220};
Extrude {0,0,0.01} { 
  Surface{7221};
}
Point(7490) = {0.295,-0.036,0.01137, lc};
Point(7491) = {0.295,-0.006,0.01137, lc};
Point(7492) = {0.325,-0.036,0.01137, lc};
Point(7493) = {0.295,-0.066,0.01137, lc};
Point(7494) = {0.265,-0.036,0.01137, lc};
Circle(7495) = {7491, 7490,7492};
Circle(7496) = {7492, 7490,7493};
Circle(7497) = {7493, 7490,7494};
Circle(7498) = {7494, 7490,7491};
Line Loop(7499) = {7495,7496,7497,7498};
Plane Surface(7500) = {7499};
Extrude {0,0,0.00137} { 
  Surface{7500};
}
Point(7769) = {0.295,-0.036,0.00137, lc};
Point(7770) = {0.295,-0.0135,0.00137, lc};
Point(7771) = {0.3175,-0.036,0.00137, lc};
Point(7772) = {0.295,-0.0585,0.00137, lc};
Point(7773) = {0.2725,-0.036,0.00137, lc};
Circle(7774) = {7770, 7769,7771};
Circle(7775) = {7771, 7769,7772};
Circle(7776) = {7772, 7769,7773};
Circle(7777) = {7773, 7769,7770};
Line Loop(7778) = {7774,7775,7776,7777};
Plane Surface(7779) = {7778};
Extrude {0,0,0.01} { 
  Surface{7779};
}
Point(8048) = {0.265, -0.066, 0, lc} ;
Point(8049) = {0.265, -0.006, 0, lc} ;
Point(8050) = {0.325, -0.006, 0, lc} ;
Point(8051) = {0.325, -0.066, 0, lc} ;
Line(8052) = {8048,8049} ;
Line(8053) = {8049,8050} ;
Line(8054) = {8050,8051} ;
Line(8055) = {8051,8048} ;
Line Loop(8056) = {8052,8053,8054,8055} ;
Plane Surface(8057) = {8056} ;
Extrude{0,0,0.00137}{ Surface{8057}; }
Point(8322) = {0.325, -0.066, 0.10548, lc} ;
Point(8323) = {0.265, -0.066, 0.10548, lc} ;
Point(8324) = {0.265, -0.006, 0.10548, lc} ;
Point(8325) = {0.325, -0.006, 0.10548, lc} ;
Line(8326) = {8322,8323} ;
Line(8327) = {8323,8324} ;
Line(8328) = {8324,8325} ;
Line(8329) = {8325,8322} ;
Line Loop(8330) = {8326,8327,8328,8329} ;
Plane Surface(8331) = {8330} ;
Extrude{0,0,0.00137}{ Surface{8331}; }
Point(8596) = {0.878, 0.132, 0, lc} ;
Point(8597) = {0.838, 0.132, 0, lc} ;
Point(8598) = {0.838, 0.082, 0, lc} ;
Point(8599) = {0.878, 0.082, 0, lc} ;
Line(8600) = {8596,8597} ;
Line(8601) = {8597,8598} ;
Line(8602) = {8598,8599} ;
Line(8603) = {8599,8596} ;
Line Loop(8604) = {8600,8601,8602,8603} ;
Plane Surface(8605) = {8604} ;
Extrude{0,0,0.00137}{ Surface{8605}; }
