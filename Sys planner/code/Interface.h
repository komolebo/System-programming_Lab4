#include <iostream>

struct Setting
{
	const int EDGES_INTENSITY = 50;
	const int MAX_WEIGHT = 20;
};

void init(unsigned int dim);
void calc();

void output_matr();
void print_res();