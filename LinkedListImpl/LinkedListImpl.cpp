#include <iostream>
#include <cstdio>

using namespace std;

typedef struct _stackNode stackNode;
typedef struct _stack stack;
struct _stackNode {
	int value;
	stackNode *next;
};

struct _stack {
	stackNode *top;
};

void push(stack &myStack, int value)
{
	stackNode *newNode = (stackNode*)malloc(sizeof(stackNode));
	if (NULL == newNode) {
		return;
	}

	newNode->value = value;
	newNode->next = myStack.top;
	myStack.top = newNode;
}

int pop(stack &myStack)
{
	if (NULL == myStack.top)
	{
		return -999999999;
	}

	stackNode *willBeDeletedNode = myStack.top;
	int value = willBeDeletedNode->value;
	myStack.top = willBeDeletedNode->next;
	free(willBeDeletedNode);

	return value;
}

int main()
{
	stack myStack;
	myStack.top = NULL;

	push(myStack, 10);
	push(myStack, 30);
	push(myStack, 50);

	cout << pop(myStack) << endl;
	cout << pop(myStack) << endl;
	cout << pop(myStack) << endl;
	cout << pop(myStack) << endl;

	return 0;
}
