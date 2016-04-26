/*=============================================================================
#
# Author: Kai He - khe004@ucr.edu
#
# Last modified: 2016-04-22 16:09
#
# Filename: geometry.h
#
# Description: 
#
=============================================================================*/

#ifndef __geometry_h__
#define __geometry_h__

#include<string>
#include<iostream>
#include<vector>

class MeshFormat{
	private:
		std::string version_;
		std::string file_type_;
		std::string data_size_;
	public:
		MeshFormat(void) : version_(""), file_type_(""), data_size_("") {}
		MeshFormat(std::string version, std::string file_type, std::string data_size) : 
		version_(version), file_type_(file_type), data_size_(data_size) {}	
		
		std::string getVersion() const { return version_; }
		std::string getFileType() const { return file_type_; }
		std::string getDataSize() const { return data_size_; }

		void setVersion(std::string version) { version_ = version; }
		void setFileType(std::string file_type) { file_type_ = file_type; }
		void setDataSize(std::string data_size) { data_size_ = data_size; }
};

class Node{
	private:
		double x_;
		double y_;
		double z_;
	public:
		Node(double x, double y, double z) : x_(x), y_(y), z_(z) {}
		Node(void) : x_(0), y_(0), z_(0) {}

		void setNode(std::istream &in);
		void printNode(std::ostream &out) const;
};

class Element{
	private:
		int id_;		// element id
		int type_;		// 0: null; 1: 2-node line; 2: 3 node-triangle; 4: tetrahedron
			
		int tagNum_;	// number of tags
		int nodeNum_;	// number of nodes
		std::vector<int> tag_;	// tags
		std::vector<int> node_; // nodes	
		
	public:
		Element(void) : type_(0), tagNum_(0), nodeNum_(0) {}	
		void setEle(std::istream &in);
		void printEle(std::ostream &out) const;
};

#endif
