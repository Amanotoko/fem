/*=============================================================================
#
# Author: Kai He - khe004@ucr.edu
#
# Last modified: 2016-06-26 17:46
#
# Filename: qN.h
#
# Description: 
#
=============================================================================*/

#include "armadillo"
#include "geometry.h"
#include "loadB.h"


arma::vec qN_3d(int NodeNum, Mesh &myMesh, Boundary &myBoundary);


arma::vec qN_2d(int NodeNum, Mesh &myMesh, Boundary &myBoundary, double height);
