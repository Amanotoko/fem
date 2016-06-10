/*=============================================================================
#
# Author: Kai He - khe004@ucr.edu
#
# Last modified: 2016-04-29 14:33
#
# Filename: loadB.h
#
# Description: 
#
=============================================================================*/

#ifndef __loadB_H__
#define __loadB_H__

#include <iostream>
#include <vector>

class Boundary{
	private:
		int volNum_;
		int surfNum_;
		int lineNum_;
		int viaNum_;
		std::vector<int> vol_;
		std::vector<int> surf_;
		std::vector<int> line_;
		std::vector<int> via_;

		std::vector<double> sVal_;
		std::vector<double> vVal_;
		std::vector<double> lVal_;
		std::vector<double> viaVal_;

	public:
		Boundary(void): volNum_(0), surfNum_(0), lineNum_(0), viaNum_(0), vol_(0, 0), surf_(0, 0),line_(0,0), via_(0,0), sVal_(0, 0), vVal_(0,0), lVal_(0), viaVal_(0) {}

		void setBoundary(std::istream &in);
		void printBoundary(std::ostream &out) const;

		std::vector<int> getVol(void) {
			return vol_;
		}
		std::vector<int> getSurf(void) {
			return surf_;
		}
		std::vector<int> getLine(void) {
			return line_;
		}
		std::vector<int> getVia(void) {
			return via_;
		}

		std::vector<double> getSVal(void) {
			return sVal_;
		}
		std::vector<double> getVVal(void) {
			return vVal_;
		}
		std::vector<double> getLVal(void) {
			return lVal_;
		}
		std::vector<double> getViaVal(void) {
			return viaVal_;
		}
};

#endif
