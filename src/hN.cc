/*=============================================================================
#
# Author: Kai He - khe004@ucr.edu
#
# Last modified: 2016-04-28 15:41
#
# Filename: hN.cc
#
# Description: 
#
=============================================================================*/

#include "hN.h"

using namespace arma;

cx_mat hN(cx_cube A)
{
    int nr = A.n_rows;
    int nc = A.n_cols;
    int ns = A.n_slices;
    
    cx_mat R;
    if (nr == 1)
    {
        R.zeros(nc, ns);
        for (int i = 0; i < nc; ++i)
            for (int j = 0; j < ns; ++j)
                R(i,j) = A(0,i,j);
    }
    else if (nc == 1)
    {
        R.zeros(nr, ns);
        for (int i = 0; i < nr; ++i)
            for (int j = 0; j < ns; ++j)
                R(i,j) = A(i,0,j);
    }
    else if (ns == 1)
    {
        R.zeros(nr, nc);
        for (int i = 0; i < nr; ++i)
            for (int j = 0; j < nc; ++j)
                R(i,j) = A(i,j,0);
    }
    
    return R;
}
