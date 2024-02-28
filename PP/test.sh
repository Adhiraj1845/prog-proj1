#!/bin/bash

echo -e "~~ Argument Tests ~~"

echo -n "Testing no arguments - "
./validmaze > tmp
if grep -q "Error: No maze file provided" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing 2 arguments - "
./validmaze x x > tmp
if grep -q "Error: Too many arguments" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -e "\n~~ File Handling~~"

echo -n "Testing bad filename - "
./validmaze fake_maze.txt > tmp
if grep -q "Error: Unable to open file 'fake_maze.txt'" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing valid filename - "
# Provide a valid maze file as an argument, adjust as needed
./validmaze valid_maze.txt > tmp
if grep -q "Maze loaded successfully" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -n "Testing maze dimensions - "
# Provide a valid maze file with dimensions exceeding MAX_HEIGHT and MAX_WIDTH, adjust as needed
./validmaze large_maze.txt > tmp
if grep -q "Error: Maze dimensions exceed maximum allowed" tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

echo -e "\n~~ Success ~~"

echo -n "Testing maze display - "
# Provide a valid maze file, adjust as needed
./validmaze valid_maze.txt > tmp
if grep -q "Maze Grid:" tmp && grep -q "Start: " tmp && grep -q "Exit: " tmp;
then
    echo "PASS"
else
    echo "FAIL"
fi

# Additional tests can be added as needed

# Cleanup
rm -f tmp
