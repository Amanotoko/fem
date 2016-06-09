Merge "inlet.stl";
Merge "outlet.stl";
Merge "wall.stl";

CreateTopology;

Physical Surface (1) = {1};
Physical Surface (2) = {2};
Physical Surface (3) = {3};

Surface Loop (1) = {1, 2, 3};
Volume (1) = {1};
Physical Volume (4) = {1};
Coherence;
Coherence;
Coherence;
Coherence;
