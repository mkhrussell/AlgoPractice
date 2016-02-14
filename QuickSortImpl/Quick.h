#pragma once
#ifndef _QUICK_
#define _QUICK_

class Quick {
public:
	static void sort(int A[], int lo, int hi);
private:
	Quick() {}
	~Quick() {}
	static int doPartition(int A[], int lo, int hi);

	static bool isLessThen(int a, int b)
	{
		return (a - b) < 0;
	}

	static void swapValue(int A[], int x, int y)
	{
		int val_x = A[x];
		A[x] = A[y];
		A[y] = val_x;
	}
};

int Quick::doPartition(int A[], int lo, int hi)
{
	int i = lo;
	int j = hi + 1;
	int v = A[lo];

	while (true)
	{
		while (isLessThen(A[++i], v))
		{
			if (i == hi)
				break;
		}

		while (isLessThen(v, A[--j]))
		{
			if (j == lo)
				break;
		}

		if (i >= j)
			break;

		swapValue(A, i, j);
	}

	swapValue(A, lo, j);

	return j;
}

void Quick::sort(int A[], int lo, int hi)
{
	if (hi <= lo)
		return;
	int j = doPartition(A, lo, hi);
	sort(A, lo, j - 1);
	sort(A, j + 1, hi);
}

#endif /* _QUICK_ */