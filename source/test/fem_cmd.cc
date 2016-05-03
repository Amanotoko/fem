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

#define DEBUG

#include "geometry.h"
#include "loadB.h"

using namespace std;

int main() {
	Mesh myMesh;
	Boundary myBoundary;
#ifdef DEBUG
	myBoundary.setBoundary(cin);
//	myBoundary.printBoundary(cout);

	vector<int> t = myBoundary.getSurf();
	for (int i = 0; i < t.size(); ++i)
		cout << t[i] << endl;
	copy(t.begin(), t.end(), ostream_iterator<int> (cout, "\n"));
#endif

}
