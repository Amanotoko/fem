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
//#define DEBUG

#include "loadB.h"
#include <string>

using namespace std;

void Boundary :: setBoundary(istream &in) {
	string cache;
	/*
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
	*/
	
	while (!in.eof()) {
		getline(in, cache);
#ifdef DEBUG
		cout << cache << endl;
#endif
		if (cache == "$Volumn" || cache == "$Volume") {
				in >> volNum_;
				for (int i = 0; i < volNum_; ++i) {
					int vid; 
					double val;
					in >> vid >> val;
					vol_.push_back(vid);
					vVal_.push_back(val);
				}
		}
		if (cache == "$Surface") {
				in >> surfNum_;
				for (int i = 0; i < surfNum_; ++i) {
					int sid;
					double val;
					in >> sid >> val;
					surf_.push_back(sid);
					sVal_.push_back(val);
				}
		}
		if (cache == "$Line") {
				in >> lineNum_;
				for (int i = 0; i < lineNum_; ++i) {
					int lid;
					double val;
					in >> lid >> val;
					line_.push_back(lid);
					lVal_.push_back(val);
				}
		}
		if (cache == "$Via") {
				in >> viaNum_;
				for (int i = 0; i < viaNum_; ++i) {
					int viaid;
					double val;
					in >> viaid >> val;
					via_.push_back(viaid);
					viaVal_.push_back(val);
				}
		}
		if (cache == "$Flux") {
				in >> fluxNum_;
				for (int i = 0; i < fluxNum_; ++i) {
					int fluxid;
					double val;
					in >> fluxid >> val;
					flux_.push_back(fluxid);
					fluxVal_.push_back(val);
				}
		}
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
