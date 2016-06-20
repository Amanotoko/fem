/*=============================================================================
#
# Author: Kai He - khe004@ucr.edu
#
# Last modified: 2016-04-28 15:39
#
# Filename: boundary.cc
#
# Description: 
#
=============================================================================*/
//#define DEBUG
//#define DEBUG_RHS

#include <cmath>
#include "geometry.h"
#include "boundary.h"
#include <set>
#include <iterator>
const double pi = 3.1416;

using namespace std;
using namespace arma;

void BoundaryUpdateE(Mesh &myMesh, Boundary &myBoundary, sp_mat &K, vec &f) {
	vector<int> surf = myBoundary.getSurf();
	vector<double> surfVal = myBoundary.getSVal();

	vector<Node> Nodes = myMesh.getNodeList(); 
	vector<Element> Eles = myMesh.getEleList();

	for (int s = 0; s < surf.size(); ++s) {
		vector<int> ElesOnBoundary;
		EleWithSurf(Eles, surf[s], ElesOnBoundary);		
		
#ifdef DEBUG_RHS
		cout << s << " " << surfVal[s] << endl;
#endif
#ifdef DEBUG
		cout << endl;
		cout << s << " " << surf[s] << endl;
		for (int i = 0; i < ElesOnBoundary.size(); ++i)
			cout << ElesOnBoundary[i] << " ";
		cout << endl;
#endif
		for (int i = 0; i < ElesOnBoundary.size(); ++i){
			int EleID = ElesOnBoundary[i]; 
			int NodeID = Eles[EleID].getNodeList()[3]-1;
#ifdef DEBUG
			cout << NodeID << " ";
#endif
			K.row(NodeID).zeros();
			K(NodeID, NodeID) = 1;
			f(NodeID) = surfVal[s];
		}
	}
#ifdef DEBUG
	cout << endl;
#endif
}

void BoundaryUpdateN(Mesh &myMesh, Boundary &myBoundary, sp_mat &K, vec &f) {
	vector<int> surf = myBoundary.getSurf();
	vector<double> surfVal = myBoundary.getSVal();

	vector<Node> Nodes = myMesh.getNodeList(); 
	vector<Element> Eles = myMesh.getEleList();

	for (int s = 0; s < surf.size(); ++s) {
		vector<int> NodesOnBoundary;
		NodeWithSurf(Eles, surf[s], NodesOnBoundary);		
		
#ifdef DEBUG_RHS
		cout << s << " " << surfVal[s] << endl;
#endif
#ifdef DEBUG
		cout << endl;
		cout << s << " " << surf[s] << endl;
		for (int i = 0; i < NodesOnBoundary.size(); ++i)
			cout << NodesOnBoundary[i] << " ";
		cout << endl;
#endif
		for (int i = 0; i < NodesOnBoundary.size(); ++i){
			int NodeID = NodesOnBoundary[i]-1; 
			K.row(NodeID).zeros();
			K(NodeID, NodeID) = 1;
			f(NodeID) = surfVal[s];
		}
	}
#ifdef DEBUG_RHS
#endif
}

void NodeWithSurf(vector<Element> &Eles, int surfID, vector<int> &NOB) {
	set<int> NodesOnBoundary;
	for (int i = 0; i < Eles.size(); ++i) {
		int type = Eles[i].getType();
		if (type != 2) break; // only search triangular
		int sID = Eles[i].getMaterial();
		if (sID == surfID) {
			vector<int> nodes = Eles[i].getNodeList();
			for (int j = 0; j < nodes.size(); ++j)
				NodesOnBoundary.insert(nodes[j]);
		}
	}
	NOB.resize(NodesOnBoundary.size());	
	copy(NodesOnBoundary.begin(), NodesOnBoundary.end(), NOB.begin());
}

void EleWithSurf(vector<Element> &Eles, int surfID, vector<int> &ElesOnBoundary) {
	set<int> NodesOnBoundary;
	for (int i = 0; i < Eles.size(); ++i) {
		int type = Eles[i].getType();
		if (type != 2) break; // only search triangular
		int sID = Eles[i].getMaterial();
		if (sID == surfID) {
			vector<int> nodes = Eles[i].getNodeList();
			for (int j = 0; j < nodes.size(); ++j)
				NodesOnBoundary.insert(nodes[j]);
		}
	}
#ifdef DEBUG_RHS
	copy(NodesOnBoundary.begin(), NodesOnBoundary.end(), ostream_iterator<int> (cout, " "));	
#endif
	// Find Elements with 3 nodes on the surface
	for (int i = 0; i < Eles.size(); ++i) {
		int type = Eles[i].getType();
		if (type != 4) continue; //only search tetra
		
		vector<int> nodes = Eles[i].getNodeList();
		int count = 0;
		for (int j = 0; j < nodes.size(); ++j) {
			int node = nodes[j];
			if (NodesOnBoundary.find(node) != NodesOnBoundary.end())
				count += 1;
		}
		if (count == 3)
			ElesOnBoundary.push_back(i);
	}
	
} 

void BoundaryUpdate2D(Mesh &myMesh, Boundary &myBoundary, sp_mat &K, vec &f) {
	vector<int> lines = myBoundary.getLine();
	vector<double> LineVal = myBoundary.getLVal();

	vector<Node> Nodes = myMesh.getNodeList(); 
	vector<Element> Eles = myMesh.getLineEle();
	
	for (int i = 0; i < lines.size(); ++i) {
			
	}
}
