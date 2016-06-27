/*=============================================================================
#
# Author: Kai He - khe004@ucr.edu
#
# Last modified: 2016-06-26 17:19
#
# Filename: qN.cc
#
# Description: 
#
=============================================================================*/

const double UNIT = 1e-6;
#include "qN.h"

using namespace std;
using namespace arma;

vec qN_3d(int NodeNum, Mesh &myMesh, Boundary &myBoundary)
{
	vector<Element> TriEle = myMesh.getTriEle();
	vector<Node> nodecor = myMesh.getNodeList();
	vector<int> flux = myBoundary.getFlux();
	vector<double> fluxVal = myBoundary.getFluxVal();
	vec fqN = zeros(NodeNum);
	
	for (int i = 0; i < flux.size(); ++i) {
	//loop for each line boundary with current flux
		for (int j = 0; j < TriEle.size(); ++j) {
		// loop for fem triangle elem
			int tID = TriEle[j].getMaterial();

			if (tID == flux[i]) {
				//3 nodes for 1 triangle
				vector<int> nodes = TriEle[j].getNodeList();
				vec ons = ones(3);
				vec x(3);
				vec y(3);
				vec z(3);
				
				for (int k = 0; k < 3; ++k) {
					x(k) = nodecor[nodes[k]-1].getx()*UNIT;
					y(k) = nodecor[nodes[k]-1].gety()*UNIT;
					z(k) = nodecor[nodes[k]-1].getz()*UNIT;
				}
				mat xmat = join_horiz(x,y);
				xmat = join_horiz(xmat, ons);
				xmat = xmat.t();
				double xd = det(xmat);

				mat ymat = join_horiz(y,z);
				ymat = join_horiz(ymat, ons);
				ymat = ymat.t();
				double yd = det(ymat);

				mat zmat = join_horiz(z,x);
				zmat = join_horiz(zmat, ons);
				zmat = zmat.t();
				double zd = det(zmat);
				
				double A = 0.5*sqrt(xd*xd + yd*yd + zd*zd);


				int n1 = nodes[0] - 1;
				int n2 = nodes[1] - 1;
				int n3 = nodes[2] - 1;

				fqN(n1) = fqN(n1) + fluxVal[i]*A/3.0;
				fqN(n2) = fqN(n2) + fluxVal[i]*A/3.0;
				fqN(n3) = fqN(n3) + fluxVal[i]*A/3.0;

			}
		}
	}

	return fqN;
}

vec qN_2d(int NodeNum, Mesh &myMesh, Boundary &myBoundary, double height)
{
	vector<Element> LineEle = myMesh.getLineEle();
	vector<Node> nodecor = myMesh.getNodeList();
	vector<int> flux = myBoundary.getFlux();
	vector<double> fluxVal = myBoundary.getFluxVal();
	vec fqN = zeros(NodeNum);

	for (int i = 0; i < flux.size(); ++i) {
	//loop for each line boundary with current flux
		for (int j = 0; j < LineEle.size(); ++j) {
		// loop for fem line elem
			int lID = LineEle[j].getMaterial();

			if (lID == flux[i]) {
				// 2 nodes for 1 line
				vector<int> nodes = LineEle[j].getNodeList();
				int	n1 = nodes[0]-1;
				int n2 = nodes[1]-1;

				double x = (nodecor[n1].getx() - nodecor[n2].getx())*UNIT;
				double y = (nodecor[n1].gety() - nodecor[n2].gety())*UNIT;
				double z = (nodecor[n1].getz() - nodecor[n2].getz())*UNIT;
				
				double len = sqrt(x*x + y*y +z*z);

				fqN(n1) = fqN(n1) + height*fluxVal[i]*len*0.5;
				fqN(n2) = fqN(n2) + height*fluxVal[i]*len*0.5;
			}
		}
	}
	
	return fqN;
}
