# include <stdbool.h>
# include <stdlib.h>
# include <stdio.h>

typedef unsigned long u64;
typedef unsigned char u08;

static inline u64 max (u64 a, u64 b) {
	return a > b ? a : b;
}

struct grid {
	u08 ** values;
	u08 width;
	u08 height;
} grid_open (char * filename) {
	struct grid grid = {.values = NULL, .width = 0, .height = 0};
	FILE * file = fopen (filename, "r");
	
	if (!file) {
		return grid;
	}
	
	for (u08 loop = true, width = false; loop; ) {
		switch (getc (file)) {
		case ' ':
			if (!width) {
				++grid.width;
			}
			break;
		case '\n':
			++grid.height;
			if (!width) {
				width = true;
				++grid.width;
			}
			break;
		case EOF:
			loop = false;
		}
	}
	
	rewind (file);
	
	grid.values = malloc (grid.height * sizeof (u08 *));
	for (u08 i = 0; i < grid.height; i++) {
		grid.values [i] = malloc (grid.width * sizeof (u08));
	}
	for (u08 i = 0, j = 0, number = 0; i < grid.height; ) {
		char c = getc (file);
		switch (c) {
		case '\n':
			grid.values [i][j] = number;
			number = 0;
			j = 0;
			++i;
			break;
		case ' ':
			grid.values [i][j] = number;
			number = 0;
			++j;
			break;
		case EOF:
			i = grid.height;
			break;
		default:
			number *= 10;
			number += c - 48;
		}
	}
	
	fclose (file);
	
	return grid;
}

void grid_free (struct grid * grid) {
	for (u08 i = 0; i < grid -> height; i++) {
		free (grid -> values [i]);
	}
	free (grid -> values);
}

int main (int argc, char * args []) {
	if (argc == 1) {
		return 1;
	}
	
	struct grid grid = grid_open (args [1]);
	if (!grid.values) {
		return 1;
	}
	
	const u64 size = 4;
	u64 largest = 0;
	u64 product;
	
	// horizontal
	for (u08 i = 0; i < grid.height; i++) {
		for (u08 j = 0; j < grid.width - 3; j++) {
			product = 1;
			for (u08 k = 0; k < size; k++) {
				product *= grid.values [i][j + k];
			}
			largest = max (largest, product);
		}
	}
	
	// vertical
	for (u08 i = 0; i < grid.height - 3; i++) {
		for (u08 j = 0; j < grid.width; j++) {
			product = 1;
			for (u08 k = 0; k < size; k++) {
				product *= grid.values [i + k][j];
			}
			largest = max (largest, product);
		}
	}
	
	// diagonals
	for (u08 i = 0; i < grid.height - 3; i++) {
		for (u08 j = 0; j < grid.width - 3; j++) {
			product = 1;
			for (u08 k = 0; k < size; k++) {
				product *= grid.values [i + k][size - 1 + j - k];
			}
			largest = max (largest, product);
			
			product = 1;
			for (u08 k = 0; k < size; k++) {
				product *= grid.values [i + k][j + k];
			}
			largest = max (largest, product);
		}
	}
	
	printf ("%lu\n", largest);
	grid_free (&grid);
}

