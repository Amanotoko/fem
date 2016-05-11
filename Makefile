####################################################################
# Makefile
# Author: Kai He -- khe004@ucr.edu
# 
####################################################################

CXX:= g++

SRC_DIR:= source
INC_DIR:= include
EXP_DIR:= example
BUILD_DIR:= build
ARMA_DIR:= armadillo-4.320.0/include
TEST_SRC_DIR:= $(SRC_DIR)/test
TEST_EXEC_DIR:= $(BUILD_DIR)/exec
SUPERLU_DIR:= SuperLU_4.3/lib

TEST_FILES:= $(wildcard $(TEST_SRC_DIR)/*.cc)
SRC_FILES:= $(wildcard $(SRC_DIR)/*.cc)
OBJ_FILES:= $(patsubst $(SRC_DIR)/%.cc, $(BUILD_DIR)/%.o, $(SRC_FILES))
INC_FILES:= $(wildcard $(INC_DIR)/*.h)

TEST_EXEC:= $(patsubst $(TEST_SRC_DIR)/%.cc, $(TEST_EXEC_DIR)/%, $(TEST_FILES))

INC:= -I$(INC_DIR) 
LDFLAGS:= -larmadillo
FLAGS:= $(SUPERLU_DIR)/libsuperlu_4.3.a


default: binary test

binary: $(OBJ_FILES)

test: binary $(TEST_EXEC) 

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cc $(INC_FILES)
	@echo "-- Compiling C++ File $<"
	@$(CXX) $(CFLAGS) $(INC) -o $@ -c $<

$(TEST_EXEC_DIR)/%: $(TEST_SRC_DIR)/%.cc $(INC_FILES) $(OBJ_FILES)
	@echo "-- Compiling & Linking Test Case $<"
	@$(CXX) $(OBJ_FILES) $(FLAGS) $(LDFLAGS) $(INC) -o $@ $<

clean:
	@echo "-- Cleaning Object Directory..."
	@rm -f $(BUILD_DIR)/*.o $(TEST_EXEC_DIR)/*
	@echo "-- Cleaning Testing Executable Directory..."
	@rm -f $(TEST_EXEC_DIR)/*
