/*=============================================================================
#
# Author: Kai He - khe004@ucr.edu
#
# Last modified: 2016-04-28 15:50
#
# Filename: boundary.h
#
# Description: 
#
=============================================================================*/

#ifndef __boundary_h_
#define __boundary_h_

#include <stdio.h>
#include "geometry.h"
#include "loadB.h"
#include "armadillo"
#include <set>

void BoundaryUpdateN(Mesh &myMesh, Boundary &myBoundary, arma::sp_mat &K, arma::vec &f);
void BoundaryUpdateE(Mesh &myMesh, Boundary &myBoundary, arma::sp_mat &K, arma::vec &f);
void EleWithSurf(std::vector<Element> &Eles, int surfID, std::vector<int> &NodesOnBoundary); 
void NodeWithEle(std::vector<Element> &Eles, int surfID, std::vector<int> &NOB); 
arma::cx_mat boundary(arma::cx_mat S);

void BoundaryUpdate2D(Mesh &myMesh, Boundary &myBoundary, arma::sp_mat &K, arma::vec &f);

#endif 
