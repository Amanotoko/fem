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
		int vid; 
		double val;
		in >> vid >> val;
		vol_.push_back(vid);
		vVal_.push_back(val);
	}
	//$surface
	getline(in, cache);
	getline(in, cache);

	in >> surfNum_;
	for (int i = 0; i < surfNum_; ++i) {
		int sid;
		double val;
		in >> sid >> val;
		surf_.push_back(sid);
		sVal_.push_back(val);
	}
} 

void Boundary :: printBoundary(ostream &out) const{
	out << "$Volumn" << endl;
	out << volNum_ << endl;
	for (int i = 0; i < volNum_; ++i) {
		out << vol_[i] << " " << vVal_[i] << endl;
	}
	out << "$Surface" << endl;
	out << surfNum_ << endl;
	for (int i = 0; i < surfNum_; ++i) {
		out << surf_[i] << " " << sVal_[i] << endl;
	}
}
