#include <iostream>
#include <cstdio>

#include "Stack.h"

using namespace std;

int main(int argc, char **argv)
{
	Stack stack;

	stack.push(10);
	stack.push(20);
	stack.push(30);
	stack.push(40);
	stack.push(50);

	while (!stack.isEmpty())
	{
		cout << stack.top() << endl; stack.pop();
	}

	return 0;
}
