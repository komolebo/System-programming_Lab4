#include "Interface.h"
#include <vector>

using namespace std;

vector<vector<unsigned int>> Matrix;
vector<unsigned int> Vertices;
vector<unsigned int> Result;
Setting setting;

void init(unsigned int dim)
{
	Matrix = vector<vector<unsigned int>>(dim);

	for (unsigned int i = 0; i < dim; i++)
	{
		Matrix[i] = vector<unsigned int>(dim);
		for (unsigned int j = i + 1; j < dim; j++)
		{
			if (rand() % 100 <= setting.EDGES_INTENSITY)
				Matrix[i][j] = (unsigned) (rand() % setting.MAX_WEIGHT + 1);
			else 
				Matrix[i][j] = 0;
		}
	}

	Vertices = vector<unsigned int>(dim);
}

void calc()
{
	// Make null vertices values
	for (unsigned int i = 0; i < Vertices.size(); i++)
		Vertices[i] = 0;
	
	// Calculate new vertices values
	for (unsigned int i = 0; i < Matrix.size(); i++)
	{
		unsigned int max = 0;
		
		for (unsigned int j = 0; j < i; j++)
			if (Matrix[j][i] && Vertices[j] + Matrix[j][i] > max)
				max = Vertices[j] + Matrix[j][i];
		
		Vertices[i] = max;
	}	

	/* Find critical way	*/
	// Find start vertice
	int start_point = -1;
	for (unsigned long i = Vertices.size() - 1; i >= 0; i--)
	{
		int j = i - 1;
		while(j >= 0 && Vertices[i] != Vertices[j] + Matrix[j][i] | !Matrix[j][i])
			j--;
		
		if (Vertices[i] == Vertices[j] + Matrix[j][i])
		{
			start_point = i;
			break;
		}
	}

	if (!start_point) return;

	Result.push_back(start_point);
	while(start_point > 0)
	{
		int j = start_point - 1;
		while (j >= 0 && Vertices[start_point] != Vertices[j] + Matrix[j][start_point] | !Matrix[j][start_point])
			j--;

		start_point = j;

		if (start_point >= 0)
			Result.push_back(start_point);
	}
}

void output_matr()
{
	cout << "Matrix: " << endl << endl << "Nodes";

	for (unsigned int i = 0; i < Matrix.size(); i++)
		printf("%4d", i);

	for (unsigned int i = 0; i < Matrix.size(); i++)
	{
		printf("\n %4d", i);
		for (unsigned int j = 0; j < Matrix.size(); j++)
		{
			if (i != j)
				printf("%4d", Matrix[i][j]);
			else
				printf("%4s", "~");
		}
	}
	printf("\n");
}

void print_res()
{
	if (!Result.size())
	{
		printf("No critical vertices found");
		return;
	}

	printf("Critical vertices:\n");
	for (int i = Result.size() - 1; i >= 0; i--)
		printf("%3d", Result[i]);
}