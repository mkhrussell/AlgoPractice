#include <iostream>

using namespace std;

#define N_LIMIT 10
#define E_LIMIT 10

const int INFT = 999999999;

int N;
int graph[N_LIMIT][N_LIMIT];
int dist[N_LIMIT];

bool belmanFord(int s)
{
	int i;
	for (i = 0; i < N; i++)
	{
		dist[i] = INFT;
	}

	dist[s] = 0;
	
	for (i = 0; i < N; i++)
	{
		int u, v;
		for (u = 0; u < N; u++) // Algo
		{
			for (v = 0; v < N; v++)
			{
				if (graph[u][v] != 0)
				{
					//Relax
					if (dist[v] > dist[u] + graph[u][v])
					{
						dist[v] = dist[u] + graph[u][v];
					}
				}
			}
		}
	}

	// Print Path
	for (int j = 0; j < N; j++)
	{
		cout << j << ": " << dist[j] << endl;
	}

	// Detect negetive cycle
	int u, v;
	for (u = 0; u < N; u++) // Algo
	{
		for (v = 0; v < N; v++)
		{
			if (graph[u][v] != 0)
			{
				//Relax
				if (dist[v] > dist[u] + graph[u][v])
				{
					return true; // Negetive cycle exist
				}
			}
		}
	}

	return false;
}

int main()
{
	cin >> N;
	for (int i = 0; i < N; i++)
	{
		for (int j = 0; j < N; j++)
		{
			cin >> graph[i][j];
		}
	}

	/*
	for (int i = 0; i < N; i++)
	{
		for (int j = 0; j < N; j++)
		{
			cout << graph[i][j] << " ";
		}
		cout << endl;
	}
	*/

	if (belmanFord(0))
		cout << "Negetive cycle exist" << endl;
	else
		cout << "Negetive cycle not exist" << endl;

	return 0;
}