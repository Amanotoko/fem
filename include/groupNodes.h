/*=============================================================================
#
# Author: Kai He - khe004@ucr.edu
#
# Last modified: 2016-05-11 13:36
#
# Filename: groupNodes.h
#
# Description: 
#
=============================================================================*/

#ifndef __GROUPNODES_H__
#define __GROUPNODES_H__

#include "geometry.h"
#include "armadillo"
#include <vector>
#include <set>

void groupNodes(std::vector<std::set<int> > &NodeSet, Mesh &myMesh, arma::vec &volt, arma::vec &E);
double CalE(int nodeID, std::set<int> &closestNodes, std::vector<Node> &NodeList, arma::vec& volt); 

#endif
