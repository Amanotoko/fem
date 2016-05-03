/*=============================================================================
#
# Author: Kai He - khe004@ucr.edu
#
# Last modified: 2016-05-02 13:09
#
# Filename: KBDB.cc
#
# Description: 
#
=============================================================================*/

#include "KBDB.h"

using namespace arma;
using namespace std;

//Calculate the structure matrix of the device 

sp_mat BDB(Mesh &myMesh, Boundary &myBoundary) {
	int NodeNum = myMesh.getNodeNum();
	sp_mat KBDB(NodeNum, NodeNum);

	int LMtl = myBoundary.getVol();
	vector<double> Material = myBoundary.getVVal();
	vector<int> vol = myBoundary.getVol();

	for (int i = 0; i < LMtl; ++i) {
		mat D(3,3);
		D.zeros();
		D(0, 0) = Material[i];
		D(1, 1) = Material[i];
		D(2, 2) = Material[i];	
		vid = vol[i];

		for (int j = 0; j < vol.size(); ++j) {
			if ()
		}
	}

	return KBDB;
}
