How to use:
1. Use GMSH to generate a mesh file (.msh)
2. Make a boundary condition (only support surface voltage now) file. (Format example, .cond files in example)
3. Change the input, boundary, output file paths in run_FEM.m and run it.
4. Use GMSH to read the output file.
	
	
Note:
Requires g++ 4.8
For Kepler Users, run the following command
-------------------------------------------------------------
scl enable devtoolset-2 tcsh
