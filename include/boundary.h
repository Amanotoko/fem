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

void BoundaryUpdate(Mesh &myMesh, Boundary &myBoundary, arma::sp_mat &K, arma::vec &f);
void EleWithSurf(std::vector<Element> &Eles, int surfID, std::set<int> &NodesOnBoundary); 

arma::cx_mat boundary(arma::cx_mat S);

#endif 
