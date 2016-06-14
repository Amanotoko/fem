/*=============================================================================
#
# Author: Kai He - khe004@ucr.edu
#
# Last modified: 2016-04-27 21:24
#
# Filename: geometry.cc
#
# Description: 
#
=============================================================================*/

#include <iterator>
#include <iomanip>
#include "geometry.h"

using namespace std;

void Node :: setNode(istream &in)
{
	int id;
	in >> id >> x_ >> y_ >> z_;
}

void Node :: printNode(ostream &out) const
{
	/*
	out << left << setw(10) << x_
		<< left << setw(10) << y_
		<< left << setw(10) << z_
		<< endl;
		*/
	out << setprecision(16) << x_ << " "
		<< setprecision(16) << y_ << " "
		<< setprecision(16) << z_
		<< endl;
}

void Element :: setEle(istream &in)
{
	in >> id_;
	in >> type_;
	in >> tagNum_;
	int tag = 0;
	for (int i = 0; i < tagNum_; ++i) {
		in >> tag;
		tag_.push_back(tag);
	}

	if (type_ == 1)
		nodeNum_ = 2;
	else if (type_ == 2)
		nodeNum_ = 3;
	else if (type_ == 4)
		nodeNum_ = 4;

	int node = 0;
	for (int i = 0; i < nodeNum_; ++i) {
		in >> node;
		node_.push_back(node);
	}	
}

void Element :: printEle(ostream &out) const
{
	if (type_ == 0) {
		out << "Null element." << endl;
		return;
	}
	else if (type_ == 1) {
		out << "2-node line:" << endl;
	}
	else if (type_ == 2) {
		out << "3-node triangle:" << endl;
	}
	else if (type_ == 3) {
		out << "4-node tetrahedron:" << endl;
	}
	copy(node_.begin(), node_.end(), ostream_iterator<int> (out, " "));
}

void Element :: printEle() const
{
	cout << tagNum_ << " " << type_ << " ";
	for (int i = 0; i < tagNum_; ++i)
		cout << tag_[i] << " ";
	for (int i = 0; i < nodeNum_; ++i)
		cout << node_[i] << " ";
	cout << endl;
}

void Mesh :: setMesh(istream &in)
{
	string cache;
	//$MeshFormat
	getline(in, cache);
	in >> version_ >> file_type_ >> data_size_;
	//$EndMeshFormat
	//$Nodes
	getline(in, cache);
	getline(in, cache);
	getline(in, cache);

	in >> nodeNum_;
	for (int i = 0; i < nodeNum_; ++i) {
		Node n;
		n.setNode(in);
	//	n.printNode(cout);
		node_.push_back(n);
	}
	//$EndNodes
	//$Elements
	getline(in, cache);
	getline(in, cache);
	getline(in, cache);

	in >> eleNum_;
	for (int i = 0; i < eleNum_; ++i) {
		Element e;
		e.setEle(in);
		element_.push_back(e);
	}

	for (int i = 0; i < eleNum_; ++i) {
		Element e = element_[i];
		int type = e.getType();
		if (type == 1)
			LineEle_.push_back(e);
		else if (type == 2)
			TriEle_.push_back(e);
		else if (type == 4)
			TetraEle_.push_back(e);
	}
}

void Mesh :: printMesh(ostream &out) const
{
	out << "$MeshFormat" << endl;
	out << version_ << " " << file_type_ << " " << data_size_ << endl;
	out << "$EndMeshFormat" << endl << "$Nodes" << endl;
	out << nodeNum_ << endl;

	for (int i = 0; i < nodeNum_; ++i) {
		out << i+1 << " ";
		node_[i].printNode(out);
	}

	out << "$EndNodes" << endl << "$Elements" << endl;
	out << eleNum_ << endl;
	for (int i = 0; i < eleNum_; ++i) {
		out << i+1 << " ";
		element_[i].printEle();
	}
	out << "$EndElements" << endl;
}
