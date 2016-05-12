/*=============================================================================
#
# Author: Kai He - khe004@ucr.edu
#
# Last modified: 2016-05-11 11:19
#
# Filename: groupNodes.cc
#
# Description: 
#
=============================================================================*/

//#define DEBUG

#include "groupNodes.h"
#include <iostream>
#include <iterator>
#include <cmath>

using namespace std;
using namespace arma;

void groupNodes(vector<set<int> > &NodeSet, Mesh &myMesh, vec &volt, vec &E) {
	vector<Element> eles = myMesh.getEleList();
	int nodeNum = myMesh.getNodeNum();

	NodeSet.resize(nodeNum+1);

	for (int i = 0; i < eles.size(); ++i) {
		vector<int> nodes = eles[i].getNodeList();		
		for (int j = 0; j < nodes.size(); ++j)
			NodeSet[nodes[j]].insert(nodes.begin(), nodes.end());
	}

	for (int i = 1; i <= nodeNum; ++i)
		NodeSet[i].erase(i);
	
#ifdef DEBUG
	for (int i = 1; i <= 10; ++i) {
		copy(NodeSet[i].begin(), NodeSet[i].end(), ostream_iterator<int>(cout, " "));
		cout << endl;
	}
#endif
	vector<Node> NodeList = myMesh.getNodeList();	
	for (int i = 1; i <= nodeNum; ++i) {
		E(i-1) = CalE(i, NodeSet[i], NodeList, volt);
	}

}
/*
double CalD(Node &n1, Node &n2) {

	double dx = n1.getx() - n2.getx();
	double dy = n1.gety() - n2.gety();
	double dz = n1.getz() - n2.getz();

	return sqrt(dx*dx + dy*dy + dz*dz);
}
*/

double CalE(int nodeID, set<int> &closestNodes, vector<Node> &NodeList, vec& volt) {
	double E_x = 0;
	double E_y = 0;
	double E_z = 0;

	Node n1 = NodeList[nodeID-1];
	for (set<int>::iterator it = closestNodes.begin(); it != closestNodes.end(); ++it) {
		int id = *it;
		Node n2 = NodeList[id-1];
		double dV = volt(nodeID-1) - volt(id-1);

		double dx = n1.getx() - n2.getx();
		double dy = n1.gety() - n2.gety();
		double dz = n1.getz() - n2.getz();
		
		double dist = sqrt(dx*dx + dy*dy + dz*dz);

		double E_mag = dV/dist;
		E_x += E_mag*dx/dist;
		E_y += E_mag*dy/dist;
		E_z += E_mag*dz/dist;
	}

	return sqrt(E_x*E_x + E_y*E_y + E_z*E_z);
}
