/*=============================================================================
#
# Author: Kai He - khe004@ucr.edu
#
# Last modified: 2016-04-27 21:15
#
# Filename: fem_cmd.cc
#
# Description: 
#
=============================================================================*/
//#define DEUBG
//#define DEBUG_A_SP
//#define DEBUG_IO

const double ro_Cu = 1.7e-8;

#include "geometry.h"
#include "loadB.h"
#include "boundary.h"
#include "KBDB.h"
#include "dump.h"
#include "groupNodes.h"
#include "armadillo"
#include <fstream>
#include <string>

using namespace std;
using namespace arma;

void help_message() {
	cout << endl;
	cout << "FEM current density analysis program V0.1" << endl;
	cout << "Usage: fem_cmd -i inputfile -b boundaryfile [-o output_file] [-2d]" << endl;
}


int main(int argc, char** argv) {
	Mesh myMesh;
	Boundary myBoundary;

	string iFileName = "";
	string bFileName = "";
	string oFileName = "";

	bool Enable2D = false;
	if (argc < 5) {
		help_message();
		return -1;
	}

	for (int i = 1; i < argc;) {
		if (strcmp(argv[i], "-i") == 0) {
			if (i + 1 >= argc) {
				help_message();
				return -1;
			}
			iFileName = argv[i + 1];
			i += 2;
		}
		else if (strcmp(argv[i], "-b") == 0) {
			if (i + 1 >= argc) {
				help_message();
				return -1;
			}
			bFileName = argv[i + 1];
			i += 2;
		}
		else if (strcmp(argv[i], "-o") == 0) {
			if (i + 1 >= argc) {
				help_message();
				return -1;
			}
			oFileName = argv[i + 1];
			i += 2;
		}
		else if (strcmp(argv[i] , "-2d") == 0) {
			if (i + 1 >= argc) {
				help_message();
				return -1;
			}
			Enable2D = true;
			i += 1;
		}
	}
	
	if (iFileName == "" || bFileName == "") {
		help_message();
		return -1;
	}
	if (oFileName == "")
		oFileName = iFileName + ".out";

	cout << "Input File: " << iFileName << endl;
	cout << "Boundary File: " << bFileName << endl;
	cout << "Output File: " << oFileName << endl;

	ifstream fin;
	// read inputfile
	fin.open(iFileName.c_str());
	myMesh.setMesh(fin);	
	fin.close();

	// read boundaryfile
	fin.open(bFileName.c_str());
	myBoundary.setBoundary(fin);
	fin.close();

#ifdef DEBUG_IO
	myMesh.printMesh(cout);
#endif

#ifdef DEBUG_B
	myBoundary.setBoundary(cin);
	myBoundary.printBoundary(cout);

	vector<int> t = myBoundary.getSurf();
	for (int i = 0; i < t.size(); ++i)
		cout << t[i] << endl;
	copy(t.begin(), t.end(), ostream_iterator<int> (cout, "\n"));
#endif

#ifdef DEBUG_A
	mat A = randu<mat>(5, 5);
	cout << A << endl;
	A.shed_row(2);
	cout << A << endl;
	A.shed_col(2);
	cout << A << endl;
#endif

#ifdef DEBUG_A_SP
	sp_mat A(10,10);
	A.zeros();
	A(1,1) = 1;
	A(1,2) = 2;
	A(1,5) = 3;
	A(2,2) = 4;
	A(2,5) = 7;
	cout << A << endl;
	A.row(1).zeros();
	cout << A<< endl;

#endif

	//FEM Matrix
	sp_mat K;
	K = BDB(myMesh, myBoundary);
//	cout << nonzeros(K).n_elem << endl;
	
	//FEM right-hand side
	int NodeNum = myMesh.getNodeNum();
	vec f = zeros(NodeNum);

	BoundaryUpdateE(myMesh, myBoundary, K, f);
//	BoundaryUpdateN(myMesh, myBoundary, K, f);
#ifdef DEBUG
	sp_vec ff(f);
	cout << ff << endl;
//	cout << nonzeros(K).n_elem << endl;
#endif
	mat KK(K);
	//vec x = spsolve(K, f);
	vec x = solve(KK, f);
	
	vector<set<int> > NodeSet;
	vec E;
	E.resize(x.n_elem);
	groupNodes(NodeSet, myMesh, x, E);
	
	E /= ro_Cu;
//	dump(oFileName, iFileName, x);	
	dump(oFileName, iFileName, E);	
}
