/*=============================================================================
#
# Author: Kai He - khe004@ucr.edu
#
# Last modified: 2016-05-02 13:20
#
# Filename: KBDB.h
#
# Description: 
#
=============================================================================*/

#include "armadillo"
#include "geometry.h"
#include "loadB.h"

arma::sp_mat BDB(Mesh &myMesh, Boundary &myBoundary);
arma::sp_mat BDB_2d(Mesh &myMesh, Boundary &myBoundary);

arma::mat EleParser(Element &e, std::vector<Node> &nodes); 
arma::mat EleParser_2d(Element &e, std::vector<Node> &nodes); 

void BMat(arma::mat &nodecor, arma::mat &Y, double &V);
void BMat_2d(arma::mat &nodecor, arma::mat &Y, double &V);

double cofactor(int i, int j, arma::mat A);
