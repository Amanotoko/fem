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

cx_mat boundary(cx_mat S)
{
    int Nc = S.n_cols;
    cx_mat SA(Nc, Nc);
    SA.zeros();
    cx_mat SB = SA;
    cx_mat scale1(1, Nc);
    scale1.zeros();
    cx_mat scale2 = scale1;
    cx_mat err1 = scale1;
    cx_mat err2 = scale1;
    cx_mat scale(1, Nc);
    vec numerator(Nc);
    vec denominator(Nc);
    vec ang(Nc);
    
    for (int col = 0; col < Nc; ++col)
    {
        numerator(col) = 0.0;
        denominator(col) = 0.0;
        for (int j = 0; j < Nc; ++j)
        {
            numerator(col) = numerator(col) + imag(S(j,col))*real(S(j,col)); //Q2(j,i) * Q1(j, i)
            denominator(col) = denominator(col) + real(S(j,col)) * real(S(j,col))- imag(S(j,col)) * imag(S(j,col)); //Q1(j, i)^2 - Q2(j, i)^2
        }
        
        numerator(col) = -2.0*numerator(col);
        ang(col) = 0.5*atan2(numerator(col), denominator(col));
        
        scale1(col) = cos(ang(col) + cx_double(0,1)*sin(ang(col)));
        
        scale2(col) = cos(ang(col) + pi/2) + cx_double(0,1) * sin(ang(col) + pi/2);
        
        for (int j = 0; j < Nc; ++j)
        {
            SA(j, col) = S(j, col) * scale1(col);
            SB(j, col) = S(j, col) * scale2(col);
        }
        
        double aaa = 0;
        double bbb = 0;
        double ccc = 0;
		
        for (int j = 0; j < Nc; ++j)
        {
            aaa += imag(SA(j,col)) * imag(SA(j,col));
            bbb += real(SA(j,col)) * imag(SA(j,col));
            ccc += real(SA(j,col)) * real(SA(j,col));
        }
        err1(col) = aaa*cos(ang(col))*cos(ang(col)) + bbb*sin(2.0*ang(col)) + ccc*sin(ang(col))*sin(ang(col));
        
        aaa = 0;
        bbb = 0;
        ccc = 0;
        
        for (int j = 0; j < Nc; ++j)
        {
            aaa += imag(SB(j,col)) * imag(SB(j,col));
            bbb += real(SB(j,col)) * imag(SB(j,col));
            ccc += real(SB(j,col)) * real(SB(j,col));
        }
        err2(col) = aaa*cos(ang(col))*cos(ang(col)) + bbb*sin(2.0*ang(col)) + ccc*sin(ang(col))*sin(ang(col));
        
        
        if (abs(err1(col)) < abs(err2(col)))
            scale(col) = scale1(col);
        else
            scale(col) = scale2(col);
        
        S.col(col) = S.col(col) * scale(col);
    }
    return S;
}
