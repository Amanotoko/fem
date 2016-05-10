/*=============================================================================
#
# Author: Kai He - khe004@ucr.edu
#
# Last modified: 2016-05-10 10:12
#
# Filename: dump.cc
#
# Description: 
#
=============================================================================*/

#include "dump.h"

using namespace std;
using namespace arma;

void dump(string &outputFileName, string &inputFileName, vec &f) {
	ifstream fin;
	ofstream fout;
	fin.open(inputFileName.c_str());
	fout.open(outputFileName.c_str());

	string line;
	while (getline(fin, line))
		fout << line << endl;
	fin.close();

	fout << "$NodeData" << endl;
	int num_of_string_tag = 1;
	fout << num_of_string_tag << endl;

	string name_of_view = "Current Density View";
	fout << name_of_view << endl;

	int num_of_real_tag = 1;
	fout << num_of_real_tag << endl;

	double time_v = 0;
	fout << time_v << endl;

	int num_of_integer_tag = 3;
	fout << num_of_integer_tag << endl;

	double TimeStep = 0;
	fout << TimeStep << endl;

}
