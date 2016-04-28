/*=============================================================================
#
# Author: Kai He - khe004@ucr.edu
#
# Last modified: 2016-04-28 15:53
#
# Filename: BDB.h
#
# Description: 
#
=============================================================================*/

#ifndef __BDB_H_
#define __BDB_H_

#include "armadillo"

using namespace arma;

void BDB(mat &U, mat oldU, vec &S, mat &V, int Nc, int fstep);

#endif
