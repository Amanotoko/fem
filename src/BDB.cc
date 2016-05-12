/*=============================================================================
#
# Author: Kai He - khe004@ucr.edu
#
# Last modified: 2016-04-28 15:40
#
# Filename: BDB.cc
#
# Description: 
#
=============================================================================*/

#include "BDB.h"
using namespace std;
using namespace arma;

void BDB(mat &U, mat oldU, vec &S, mat &V, int Nc, int fstep)
{
    if (fstep > 1)
    {
        mat UGH = abs(oldU.st()*U);
        int ilargest = 0;
        int rlargest = 0;
        vec dot(Nc);
        vec ind(Nc);
        vec taken(Nc);
        for (int ii = 0; ii < Nc; ++ii)
        {
            ilargest = 0;
            rlargest = 0;
            for (int j = 0; j < Nc; ++j)
            {
                double dotprod = UGH(ii,j);
                if (dotprod > rlargest)
                {
                    rlargest = abs(dotprod);
                    ilargest = j;
                }
            }
            dot(ii) = rlargest;
            ind(ii) = ii;
            taken(ii) = 0;
        }
        
        // Sorting inner products abs(realdel) in descending order:
        for (int ii = 0; ii < Nc; ++ii)
        {
            for (int j = 0; j < Nc -1 ; ++j)
            {
                if (dot(j) < dot(j+1))
                {
                    double hjelp = dot(j+1);
                    double ihjelp = ind(j+1);
                    dot(j+1) = dot(j);
                    ind(j+1) = ind(j);
                    dot(j) = hjelp;
                    ind(j) = ihjelp;
                }
            }
        }
        
        for (int l = 0; l < Nc; ++l)
        {
            int ii = ind(l);
            ilargest = 0;
            rlargest = 0;
            
            for (int j = 0; j < Nc; ++j)
            {
                if (taken(j) == 0)
                {
                    double dotprod = UGH(ii,j);
                    if (dotprod > rlargest)
                    {
                        rlargest = abs(dotprod);
                        ilargest = j;
                    }
                }
            }
            
            taken(ii) = 1;

            vec hjelp = U.col(ii);
            U.col(ii) = U.col(ilargest);
            U.col(ilargest) = hjelp;
            
            double tmp = S(ii,ii);
            S(ii,ii) = S(ilargest,ilargest);
            S(ilargest, ilargest) = tmp;
            
            vec hjelp1 = V.col(ii);
            V.col(ii) = V.col(ilargest);
            V.col(ilargest) = hjelp1;
            vec dum = UGH.col(ii);
            UGH.col(ii) = UGH.col(ilargest);
            UGH.col(ilargest) = dum;
        }
        
        
        for (int ii = 1; ii < Nc; ++ii)
        {
            mat dotprod = oldU.col(ii).st() * U.col(ii);
            if (dotprod(0) < 0)
            {
                U.col(ii) = -U.col(ii);
                V.col(ii) = -V.col(ii);
            }
        }
    }
}
