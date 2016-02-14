#include <iostream>
#include <cstdio>

#include "Queue.h"

using namespace std;

int main(int argc, char **argv)
{
	Queue queue;

	queue.push(10);
	queue.push(20);
	queue.push(30);
	queue.push(40);
	queue.push(50);

	while (!queue.isEmpty())
	{
		cout << queue.front() << endl; queue.pop();
	}

	return 0;
}