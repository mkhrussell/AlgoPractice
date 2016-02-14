#define _CRT_SECURE_NO_WARNINGS

#include <iostream>
#include <cstdio>

#include "Quick.h"

using namespace std;

int main(int argc, char **argv)
{
	freopen("unsorted-integer-input.txt", "r", stdin);
	freopen("sorted-integer-ouput.txt", "w", stdout);

	int myIntArray[200];

	int N = 0;
	int num;
	cout << "Input array: " << endl;
	while (scanf("%d", &num) != EOF)
	{
		myIntArray[N] = num;
		N++;
		cout << num << endl;
	}
	cout << "//" << endl << endl;
	
	cout << "Sorted array: " << endl;
	Quick::sort(myIntArray, 0, N - 1); // Run quicksort
	for (int i = 0; i < N; i++)
	{
		cout << myIntArray[i] << endl;
	}
	cout << "//" << endl;

	return 0;
}