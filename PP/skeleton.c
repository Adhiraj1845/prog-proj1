#include <stdio.h>

#define MAX_HEIGHT 100
#define MIN_HEIGHT 5
#define MAX_WIDTH 100
#define MIN_WIDTH 5

// Struct definition for the four elements
typedef struct {
    char wall;  // Represent a wall which the player cannot move across (#)
    char path;  // Represent a path which the player can move (' ' a space)
    char start; // Represent when the player starts the maze (S)
    char exit;  // Represent when the player exits the maze (E)
} MazeElements;

// Struct definition for the Maze
typedef struct {
    int height;
    int width;
    char cells[MAX_HEIGHT][MAX_WIDTH]; // Array stores individual characters representing the elements of the maze
    int start_row; // Row index of the starting point in the maze grid
    int start_col; // Column index of the starting point in the maze grid
    int exit_row;  // Row index of the exit point in the maze grid
    int exit_col;  // Column index of the exit point in the maze grid
} Maze;

// Function to load maze from file
Maze load_maze(const char* filename) {
    FILE *file = fopen(filename, "r");
    if (file == NULL) {
        fprintf(stderr, "Error: Unable to open file '%s'\n", filename);
        exit(1);
    }
    Maze maze; // Declare a Maze struct to store the maze data

    // Implement maze loading functionality

    return maze;
}

// Main Function - 
int main(int argc, char *argv[]) {
    // Check if filename is provided as a command-line argument
    if (argc < 2) {
        printf("Error: No maze file provided. Please provide a maze file as a command line argument.\n");
        return 1; // Return error code
    }

    // Load maze from file
    // Call the load_maze function with the filename provided as a command-line argument

    // Display the maze grid

    return 0;
}