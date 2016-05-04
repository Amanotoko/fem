/*=============================================================================
#
# Author: Kai He - khe004@ucr.edu
#
# Last modified: 2016-05-03 15:13
#
# Filename: parser.cc
#
# Description: 
#
=============================================================================*/

#include "parser.h"
#include "armadillo"

using namespace std;
using namespace arma;

void MeshParser(Mesh &myMesh) {
	
	int nodeNum = myMesh.getNodeNum();
	vector<Node> nodes = myMesh.getNodeList();
	vector<Element> elems = myMesh.getEleList();

}

//return a 4-by-3 matrix, each row represents a node in tetra. 

mat EleParser(vector<Element> &elems, vector<Node> &nodes, int i) {
	Element e = elems[i];
	vector<int> nodesInEle = e.getNodeList();
	mat NodeCor(4,3);
	
	for (int i = 0; i < 4; ++i) {
		NodeCor(i, 0) = nodes[nodesInEle[i]].getx;
		NodeCor(i, 1) = nodes[nodesInEle[i]].gety;
		NodeCor(i, 2) = nodes[nodesInEle[i]].getz;
	}
	return NodeCor; 
}
