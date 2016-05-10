/*=============================================================================
#
# Author: Kai He - khe004@ucr.edu
#
# Last modified: 2016-05-10 10:12
#
# Filename: dump.h
#
# Description: 
#
=============================================================================*/
#ifndef __DUMP_H__
#define __DUMP_H__

#include "geometry.h"
#include "boundary.h"
#include "loadB.h"
#include "armadillo"
#include <fstream>
#include <iostream>
#include <string>

void dump(std::string &outputFileName, std::string &inputFileName, arma::vec &f);

#endif
