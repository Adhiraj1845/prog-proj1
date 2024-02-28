#!/bin/bash

# Test Case 1: Test if the program runs successfully with a valid maze file 1
echo "Test Case 1: Running the program with a valid maze file"
./validmaze valid_maze1.txt > tmp


# Check the exit status of the program
if [ $? -eq 0 ]; then
  echo "Test Case 1 Passed: Program ran successfully"
else
  echo "Test Case 1 Failed: Program encountered an error"
fi

# Test Case 2:Test if the program runs successfully with a valid maze file 2
echo "Test Case 2: Testing error handling with an invalid maze file"
./validmaze valid_maze2.txt

# Test Case 3:Test if the program runs successfully with a valid maze file 3
echo "Test Case 2: Testing error handling with an invalid maze file"
./validmaze valid_maze3.txt


# Test Case 4: Test if the program handles a maze file with missing start 'S'
echo "Test Case: Testing error handling with a maze file missing the start point"
./validmaze invalid_maze1.txt

# Check if the program exits with an error indicating the missing start point
if [ $? -eq 1 ]; then
  echo "Test Case Passed: Program correctly detected the missing start point"
else
  echo "Test Case Failed: Program did not detect the missing start point"
fi

# Test Case 5: Test if the program handles a maze file with player starting outside the maze
./validmaze inalid_maze2.txt

# Check if the program exits with an error indicating the missing start point
if [ $? -eq 1]; then
  echo "Test Case Passed: Program correctly detected player starting outside the maze"
else
  echo "Test Case Failed: Program did not detect player starting outside the maze"
fi

# Test Case 6: Test if the program handles a maze file with two exit points 'E'
./validmaze invalid_maze3.txt

if [ $? -eq 1 ]; then
  echo "Test Case Passed: Program correctly detected two exit points"
else
  echo "Test Case Failed: Program did not detect two exit points"
fi


# Test Case 7: Test if the program handles a maze file with a player starting outside the maze
./validmaze maze_player_start_outside.txt


# Test Case 8: Test if the program handles a maze file with multiple start or exit points
./validmaze maze_multiple_start_exit.txt

# Test Case 9: Test if the program handles a maze file with an empty maze
./validmaze maze_empty.txt

# Test Case 10: Test if the program handles unexpected errors gracefully
./validmaze unexpected_error.txt

# Test Case 11: Test if the program displays the correct error message when a player walks into a wall
# (To be manually validated)
# Note: This test requires human intervention to observe the error message displayed by the program.

# Test Case 12: Test if the program displays the correct message when the player successfully exits the maze
# (To be manually validated)
# Note: This test requires human intervention to observe the success message displayed by the program.

# Add more test cases as needed to cover additional scenarios
