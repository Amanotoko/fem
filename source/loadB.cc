/*=============================================================================
#
# Author: Kai He - khe004@ucr.edu
#
# Last modified: 2016-04-29 14:22
#
# Filename: loadB.cc
#
# Description: 
#
=============================================================================*/

#include "loadB.h"
#include <string>

using namespace std;

void Boundary :: setBoundary(istream &in) {
	string cache;
	//$volume
	getline(in, cache);
	in >> volNum_;
	for (int i = 0; i < volNum_; ++i) {
		int val;
		in >> val;
		vVal_.push_back(val);
	}
	//$surface
	getline(in, cache);
	getline(in, cache);

	in >> surfNum_;
	for (int i = 0; i < surfNum_; ++i) {
		int val;
		in >> val;
		sVal_.push_back(val);
	}
} 

void Boundary :: printBoundary(ostream &out) {
	
}
