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

#include<cblas.h>

#include<string>
#include<iostream>
#include<vector>

class Node{
	private:
		double x_;
		double y_;
		double z_;
	public:
		Node(double x, double y, double z) : x_(x), y_(y), z_(z) {}
		Node(void) : x_(0), y_(0), z_(0) {}
		
		double getx(void) { return x_; }
		double gety(void) { return y_; }
		double getz(void) { return z_; }

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
		
		int getType(void) const {return type_;}
		std::vector<int> getNodeList(void) const { return node_; }
		int getMaterial(void) const { 
			if (tag_.size() > 0)
				return tag_[0]; 
			else
				return 0;
		};

		void printEle(std::ostream &out) const;
		void printEle(void) const;
};

class Mesh{
	private:
		std::string version_;
		std::string file_type_;
		std::string data_size_;
		int nodeNum_;
		int eleNum_;
		std::vector<Node> node_;
		std::vector<Element> element_;
	public:
		Mesh(void) : version_(""), file_type_(""), data_size_("") {}
		
		std::string getVersion() const { return version_; }
		std::string getFileType() const { return file_type_; }
		std::string getDataSize() const { return data_size_; }
		int getNodeNum() const { return nodeNum_; }
		int getEleNum() const { return eleNum_; }
		
		std::vector<Node> getNodeList() const { return node_; }
		std::vector<Element> getEleList() const {return element_; }

		void setMesh(std::istream &in);
		void printMesh(std::ostream &out) const;

		void setVersion(std::string version) { version_ = version; }
		void setFileType(std::string file_type) { file_type_ = file_type; }
		void setDataSize(std::string data_size) { data_size_ = data_size; }
};
#endif
