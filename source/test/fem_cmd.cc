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

using namespace std;

int main() {
	Mesh myMesh;
#ifdef DEBUG
	myMesh.setMesh(cin);
	myMesh.printMesh(cout);
#endif

}
