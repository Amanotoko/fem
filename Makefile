####################################################################
# Makefile
# Author: Kai He -- khe004@ucr.edu
# 
####################################################################

CXX:= g++

SRC_DIR:= src
INC_DIR:= include
EXP_DIR:= example
BUILD_DIR:= build
ARMA_DIR:=  armadillo-4.320.0/include
ARMA_LIB:= ./arma_lib/usr/local/lib64
TEST_SRC_DIR:= $(SRC_DIR)/test
TEST_EXEC_DIR:= $(BUILD_DIR)/bin
ATLAS:= /usr/lib64/atlas

MAIN:= fem_cmd
TEST_FILES:= $(wildcard $(TEST_SRC_DIR)/*.cc)
SRC_FILES:= $(wildcard $(SRC_DIR)/*.cc)
OBJ_FILES:= $(patsubst $(SRC_DIR)/%.cc, $(BUILD_DIR)/%.o, $(SRC_FILES))
INC_FILES:= $(wildcard $(INC_DIR)/*.h)

TEST_EXEC:= $(patsubst $(TEST_SRC_DIR)/%.cc, $(TEST_EXEC_DIR)/%, $(TEST_FILES))

INC:= -I$(INC_DIR) -I$(ARMA_DIR)  
LDFLAGS:= -llapack -lblas 


default: binary main 

binary: $(OBJ_FILES)

test: binary $(TEST_EXEC) 

main: binary $(TEST_EXEC_DIR)/$(MAIN)

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cc $(INC_FILES)
	@echo "-- Compiling C++ File $<"
	@$(CXX) $(CFLAGS) $(INC) -o $@ -c $<

$(TEST_EXEC_DIR)/$(MAIN): $(INC_FILES) $(OBJ_FILES)
	@echo "-- Compiling & Linking Main Case $(MAIN)"
	@$(CXX) $(OBJ_FILES) $(LDFLAGS) $(INC) -o $@ 

clean:
	@echo "-- Cleaning Object Directory..."
	@rm -f $(BUILD_DIR)/*.o $(TEST_EXEC_DIR)/*
	@echo "-- Cleaning Testing Executable Directory..."
	@rm -f $(TEST_EXEC_DIR)/*
