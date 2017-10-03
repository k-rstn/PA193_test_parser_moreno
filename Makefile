SRC = src/main.cpp
TARGET = bin/parser
TEST_DIR = test

$(TARGET): $(SRC)
	g++ -o $(TARGET) $(SRC)

.PHONY: clean
clean:
	rm -f $(TARGET)
	make clean -C $(TEST_DIR)

.PHONY: test
test:
	make -C $(TEST_DIR)
	echo "\n## Running tests...\n"
	$(TEST_DIR)/testable_test

