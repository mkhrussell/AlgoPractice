#include <functional>
#include <queue>
#include <vector>
#include <iostream>
#include <map>
#include <string>

using namespace std;

int* merge(int A[], int B[], int length_A, int length_B)
{
	int *C = new int[length_A + length_B];

	int j = 0;
	int k = 0;
	for (int i = 0; i < length_A; i++)
	{
		while (j < length_B && B[j] <= A[i])
		{
			C[k++] = B[j++];
		}
		C[k++] = A[i];
	}
	
	return C;
}

int main()
{
	int A[] = { 2, 4, 6, 8, 10 };
	int B[] = { 1, 3, 5, 7, 9 };
	
	int length_A = 5;
	int length_B = 5;

	int *C = merge(A, B, length_A, length_B);

	for (int i = 0; C[i]; i++)
	{
		cout << C[i] << endl;
	}

	delete C;

	return 0;
}