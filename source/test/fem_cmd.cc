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

#define DEBUG_A_SP

#include "geometry.h"
#include "loadB.h"
#include "armadillo"

using namespace std;
using namespace arma;

int main() {
	Mesh myMesh;
	Boundary myBoundary;

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

#endif

}
