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
#define DEBUG 1
//#define DEBUG_A_SP 1
#define DEBUG_IO 1

const double ro_Cu = 1.7e-8;
const double height = 1; // for 2d surface current boundary

#include "geometry.h"
#include "loadB.h"
#include "boundary.h"
#include "KBDB.h"
#include "dump.h"
#include "groupNodes.h"
#include "qN.h"
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
	string coFileName = "";

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
			Enable2D = true;
			i += 1;
		}
	}
	
	if (iFileName == "" || bFileName == "") {
		help_message();
		return -1;
	}
	if (oFileName == "") {
		oFileName = iFileName + "v.out";
		coFileName = iFileName + ".out";
	}
	else {
		coFileName = oFileName + "cd";
	}
	cout << "Input File: " << iFileName << endl;
	cout << "Boundary File: " << bFileName << endl;
	cout << "Voltage Output File: " << oFileName << endl;
	cout << "Current Density Output File: " << coFileName << endl;

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
	//FEM right-hand side
	int NodeNum = myMesh.getNodeNum();
	vec f = zeros(NodeNum);
	
	if (Enable2D) {
		// surface fem to generate matrix
		K = BDB_2d(myMesh, myBoundary);
		// via connection
		via_1d(K, myMesh, myBoundary);
		// voltage boundary
		BoundaryUpdate2D(myMesh, myBoundary, K, f);
		// current boundary
		vec fqN = qN_2d(NodeNum, myMesh, myBoundary, height);
		f = f + fqN;
	}
	else {
		K = BDB(myMesh, myBoundary);
		// voltage boundary	
		BoundaryUpdateN(myMesh, myBoundary, K, f);
		// current boundary
		vec fqN = qN_3d(NodeNum, myMesh, myBoundary);
		f = f + fqN;
	}


#ifdef DEBUG
	sp_vec ff(f);
	cout << ff << endl;
	cout << K << endl;
#endif
	mat KK(K);
	//vec x = spsolve(K, f);
	vec x = solve(KK, f);
	
	vector<set<int> > NodeSet;
	vec E;
	E.resize(x.n_elem);
	groupNodes(NodeSet, myMesh, x, E);
	
	E /= ro_Cu;
	dump(oFileName, iFileName, x);	
	dump(coFileName, iFileName, E);	
}
