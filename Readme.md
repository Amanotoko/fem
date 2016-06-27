How to use Matlab:
1. Use GMSH to generate a mesh file (.msh)
2. Make a boundary condition (only support surface voltage now) file. (Format example, .cond files in example)
3. Change the input, boundary, output file paths in run_FEM.m and run it.
4. Use GMSH to read the output file.
	
	
How to use C++ binary:
1. Type make, the binary "fem_cmd" will be generated at build/bin/.
2. See usage of "fem_cmd".

How to make boundary condition file:
The basic format is like:
$Type
number of this type
ID val
ID val
...

The ID is the element ID in your gmsh file.
The val is value for this element. Its physical meaning can be 
resistivity, voltage and current density, etc.

There are 5 types: 
1. Volume. It is for 3D FEM. Add a physcial volume in GMSH for
the volume which you want to analyse. val is resistivity.
2. Surface. It is for both 3D and 2D FEM. In 3D FEM, it is used 
as voltage boundary. In 2D FEM, it is the 2D surface which is like
volume in 3D FEM. val is voltage.
3. Line. It is for 2D FEM. It is used as voltage boundary.
val is voltage.
4. Via. It is for 2D FEM. It is used to represent the vias in 2D FEM.
val is equivalent resistivity.
5. Flux. It is for both 3D and 2D FEM. It is used as current boundary.
val is current density.

Examples:
See fem_case/t_thin for 2D FEM.
See fem_case/t1 for 3D FEM.

