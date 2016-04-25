####################################################################
# Makefile
# Author: Kai He -- khe004@ucr.edu
# 
####################################################################

CXX:= g++

SRC_DIR:= source
INC_DIR:= inc
EXP_DIR:= example
BUILD_DIR:= build
TEST_SRC_DIR:= $(SRC_DIR)/test
TEST_EXEC_DIR:= $(BUILD_DIR)/exec

TEST_FILES:= $(wildcard $(TEST_SRC_DIR)/*.cc)
SRC_FILES:= $(wildcard $(SRC_DIR)/*.cc)
OBJ_FILES:= $(patsubst $(SRC_DIR)/%.cc, $(BUILD_DIR)/%.o, $(SRC_FILES))
INC_FILES:= $(wildcard $(INC_DIR)/*.h)

INC:= -I$(INC_DIR)

binary: $(OBJ_FILES)

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cc $(INC_FILES)
	@echo "-- Compiling C++ File $<"
	@$(CXX) $(CFLAGS) $(INC) -o $@ -c $<

