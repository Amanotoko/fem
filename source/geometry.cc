/*
 * geometry.cc
 * FEM_current_density
 *
 * Created by Kai He on 04/11/16.
 * Copyright (c) 2016 VSCLAB. All righs reserved.
 */

#include <iterator>
#include <iomanip>
#include "geometry.h"

using namespace std;

void Node :: setNode(istream &is)
{
	is >> x_ >> y_ >> z_;
}

void Node :: printNode(ostream &out) const
{
	out << left << setw(10) << x_
		<< left << setw(10) << y_
		<< left << setw(10) << z_;
}

void Element :: setEle(istream &is)
{
	is >> nodeNum_;
	is >> tagNum_;
	int tag = 0;
	for (int i = 0; i < tagNum_; ++i) {
		is >> tag;
		tag_.push_back(tag);
	}

	int node = 0;
	for (int i = 0; i < nodeNum_; ++i) {
		is >> node;
		node_.push_back(node);
	}	
}

void Element :: printEle(ostream &out) const
{
	if (type_ == 0) {
		cout << "Null element." << endl;
		return;
	}
	else if (type_ == 1) {
		cout << "2-node line:" << endl;
	}
	else if (type_ == 2) {
		cout << "3-node triangle:" << endl;
	}
	else if (type_ == 3) {
		cout << "4-node tetrahedron:" << endl;
	}
	copy(node_.begin(), node_.end(), ostream_iterator<int> (cout, " "));
}
