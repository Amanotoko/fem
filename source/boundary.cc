/*=============================================================================
#
# Author: Kai He - khe004@ucr.edu
#
# Last modified: 2016-04-28 15:39
#
# Filename: boundary.cc
#
# Description: 
#
=============================================================================*/

#include <cmath>
#include "boundary.h"
const double pi = 3.1416;

cx_mat boundary(cx_mat S)
{
    int Nc = S.n_cols;
    cx_mat SA(Nc, Nc);
    SA.zeros();
    cx_mat SB = SA;
    cx_mat scale1(1, Nc);
    scale1.zeros();
    cx_mat scale2 = scale1;
    cx_mat err1 = scale1;
    cx_mat err2 = scale1;
    cx_mat scale(1, Nc);
    vec numerator(Nc);
    vec denominator(Nc);
    vec ang(Nc);
    
    for (int col = 0; col < Nc; ++col)
    {
        numerator(col) = 0.0;
        denominator(col) = 0.0;
        for (int j = 0; j < Nc; ++j)
        {
            numerator(col) = numerator(col) + imag(S(j,col))*real(S(j,col)); //Q2(j,i) * Q1(j, i)
            denominator(col) = denominator(col) + real(S(j,col)) * real(S(j,col))- imag(S(j,col)) * imag(S(j,col)); //Q1(j, i)^2 - Q2(j, i)^2
        }
        
        numerator(col) = -2.0*numerator(col);
        ang(col) = 0.5*atan2(numerator(col), denominator(col));
        
        scale1(col) = cos(ang(col) + cx_double(0,1)*sin(ang(col)));
        
        scale2(col) = cos(ang(col) + pi/2) + cx_double(0,1) * sin(ang(col) + pi/2);
        
        for (int j = 0; j < Nc; ++j)
        {
            SA(j, col) = S(j, col) * scale1(col);
            SB(j, col) = S(j, col) * scale2(col);
        }
        
        double aaa = 0;
        double bbb = 0;
        double ccc = 0;
		
        for (int j = 0; j < Nc; ++j)
        {
            aaa += imag(SA(j,col)) * imag(SA(j,col));
            bbb += real(SA(j,col)) * imag(SA(j,col));
            ccc += real(SA(j,col)) * real(SA(j,col));
        }
        err1(col) = aaa*cos(ang(col))*cos(ang(col)) + bbb*sin(2.0*ang(col)) + ccc*sin(ang(col))*sin(ang(col));
        
        aaa = 0;
        bbb = 0;
        ccc = 0;
        
        for (int j = 0; j < Nc; ++j)
        {
            aaa += imag(SB(j,col)) * imag(SB(j,col));
            bbb += real(SB(j,col)) * imag(SB(j,col));
            ccc += real(SB(j,col)) * real(SB(j,col));
        }
        err2(col) = aaa*cos(ang(col))*cos(ang(col)) + bbb*sin(2.0*ang(col)) + ccc*sin(ang(col))*sin(ang(col));
        
        
        if (abs(err1(col)) < abs(err2(col)))
            scale(col) = scale1(col);
        else
            scale(col) = scale2(col);
        
        S.col(col) = S.col(col) * scale(col);
    }
    return S;
}
