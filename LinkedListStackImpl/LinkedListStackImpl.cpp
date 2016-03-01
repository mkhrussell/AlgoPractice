#include <iostream>
#include <cstdio>
#include <cassert>

using namespace std;

const int NEG_INF = -999999999;

typedef struct _stackNode StackNode;
typedef struct _stack Stack;

struct _stackNode {
	int value;
	StackNode *next;
};

struct _stack {
	StackNode *top;
};

void push(Stack &myStack, int value)
{
	StackNode *newNode = (StackNode*)malloc(sizeof(StackNode));
	if (NULL == newNode) {
		return;
	}

	newNode->value = value;
	newNode->next = myStack.top;
	myStack.top = newNode;
}

int top(Stack &myStack)
{
	assert(NULL != myStack.top); // Check the Stack is not empty or not

	return myStack.top->value;
}

void pop(Stack &myStack)
{
	if (NULL == myStack.top)
	{
		return;
	}

	StackNode *willBeDeletedNode = myStack.top;	
	myStack.top = willBeDeletedNode->next;
	free(willBeDeletedNode);
}

int isEmpty(Stack &myStack)
{
	if (NULL == myStack.top) // Empty
		return 1;

	return 0;
}

int main()
{
	Stack myStack;
	myStack.top = NULL;

	push(myStack, 10);
	push(myStack, 30);
	push(myStack, 50);

	while (!isEmpty(myStack))
	{
		cout << top(myStack) << endl; pop(myStack);
	}

	cout << top(myStack) << endl; pop(myStack);
	
	return 0;
}
