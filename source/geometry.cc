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

void Node :: setNode(istream &in)
{
	int id;
	in >> id >> x_ >> y_ >> z_;
}

void Node :: printNode(ostream &out) const
{
	out << left << setw(10) << x_
		<< left << setw(10) << y_
		<< left << setw(10) << z_
		<< endl;
}

void Element :: setEle(istream &in)
{
	in >> nodeNum_;
	in >> tagNum_;
	int tag = 0;
	for (int i = 0; i < tagNum_; ++i) {
		in >> tag;
		tag_.push_back(tag);
	}

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
		n.printNode(cout);
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
}

void Mesh :: printMesh(ostream &out) const
{
	out << "$MeshFormat" << endl;
	out << version_ << " " << file_type_ << " " << data_size_ << endl;
	out << "$EndMeshFormat" << endl << "$Nodes" << endl;
	out << nodeNum_ << endl;

	for (int i = 0; i < nodeNum_; ++i) {
		out << i << " ";
		node_[i].printNode(out);
	}

	out << "$EndNodes" << endl << "$Elements" << endl;
	out << eleNum_ << endl;
	for (int i = 0; i < eleNum_; ++i) {
		out << i << " ";
		element_[i].printEle(out);
	}
	out << "$EndElements" << endl;
}
