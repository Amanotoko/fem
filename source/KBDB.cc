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


//return a 4-by-4 matrix, the first column is all 1. Each row represents a node in tetra. 

mat EleParser(Element &e, vector<Node> &nodes) {

	vector<int> nodesInEle = e.getNodeList();
	mat NodeCor(4,4);
	
	for (int i = 0; i < 4; ++i) {
		NodeCor(i, 0) = 1; // first column: all 1s.
		NodeCor(i, 1) = nodes[nodesInEle[i]].getx();
		NodeCor(i, 2) = nodes[nodesInEle[i]].gety();
		NodeCor(i, 3) = nodes[nodesInEle[i]].getz();
	}
	return NodeCor; 
}

//Calculate the shape function gradient of the tetrahedral
void BMat(mat &nodecor, mat &Y, double &V) {
	mat b = zeros<mat>(1,4);	
	mat c = zeros<mat>(1,4);
	mat d = zeros<mat>(1,4);

	mat Vmat = nodecor; //This nodecor is already 4-by-4 with all 1s first column
	V = det(Vmat)/6;	

	for (int k = 0; k < 4; ++k) {
		b(k) = cofactor(k, 1, Vmat);
		c(k) = cofactor(k, 2, Vmat);
		d(k) = cofactor(k, 3, Vmat);
	}

	Y = join_cols(b, c);
	Y = join_cols(Y, d);
	Y = Y/V/6.0;
}

//Computes the (i,j)-cofactor of matrix A 
double cofactor(int i, int j, mat A) {
	int m = A.n_rows;
	int n = A.n_cols;

	if (m != n) {
		cout << "Error: matrix is not square." << endl;
		return -1;
	}
	if (i < 0 || j < 0 || i >= m || j >= n) {
		cout << "Error: indices out of range." << endl;
		return -1;
	}
	double val = 0;
	A.shed_row(i);
	A.shed_col(j);
	int sign = (i+j) % 2 ? -1 : 1;
	val = sign*det(A);
	return val;	
}

void fillSpMat(vector<int> &row, vector<int> &col, sp_mat & A, mat &val) {
	for (int i = 0; i < row.size(); ++i) {
		for (int j = 0; j < col.size(); ++j) {
			A(row[i], col[j]) += val(i, j);
		}
	}
}

//Calculate the structure matrix of the device 
sp_mat BDB(Mesh &myMesh, Boundary &myBoundary) {
	int NodeNum = myMesh.getNodeNum();
	sp_mat KBDB(NodeNum, NodeNum);

	int LMtl = myBoundary.getVol().size(); // volume numbers with different material
	vector<double> Material = myBoundary.getVVal(); // material data
	vector<int> vol = myBoundary.getVol(); // volume id
	vector<Element> elems = myMesh.getEleList(); // all elements in FEM
	vector<Node> nodes = myMesh.getNodeList(); // all nodes in FEM

	// Handle different volumes
	for (int i = 0; i < LMtl; ++i) {
		mat D(3,3);
		D.zeros();
		D(0, 0) = Material[i];
		D(1, 1) = Material[i];
		D(2, 2) = Material[i];	
		int vid = vol[i];
		
		for (int j = 0; j < elems.size(); ++j) {
			int mtag = elems[j].getMaterial();
			mat nodecor;
			if (mtag == vid) {
				nodecor = EleParser(elems[j], nodes);
				double V;
				mat B;
				BMat(nodecor, B, V);
				mat BDBm = B.t()*D*B*V;

				vector<int> nodesInEle = elems[j].getNodeList();
				fillSpMat(nodesInEle, nodesInEle, KBDB, BDBm);
			}
		}
	}

	return KBDB;
}
