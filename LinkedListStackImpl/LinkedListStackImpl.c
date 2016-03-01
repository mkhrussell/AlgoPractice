#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

typedef struct _stackNode StackNode;
typedef struct _stack Stack;

struct _stackNode {
	int value;
	StackNode *next;
};

struct _stack {
	StackNode *top;
};

Stack newStack()
{
    Stack s;
    s.top = NULL;
    return s;
}

Stack* newStackPrt()
{
    Stack *s = (Stack *)malloc(sizeof(Stack));
    s->top = NULL;
    return s;
}

void push(Stack *myStack, int value)
{
	StackNode *newNode = (StackNode*)malloc(sizeof(StackNode));
	if (NULL == newNode) {
		return;
	}

	newNode->value = value;
	newNode->next = myStack->top;
	myStack->top = newNode;
}

int top(Stack *myStack)
{
	assert(NULL != myStack->top); // Check the Stack is not empty or not

	return myStack->top->value;
}

void pop(Stack *myStack)
{
	if (NULL == myStack->top)
	{
		return;
	}

	StackNode *willBeDeletedNode = myStack->top;
	myStack->top = willBeDeletedNode->next;
	free(willBeDeletedNode);
}

int isEmpty(Stack *myStack)
{
	if (NULL == myStack->top) // Empty
		return 1;

	return 0;
}

int main()
{
    printf("Stack demo:\n");
	Stack myStack = newStack();
    
	push(&myStack, 10);
	push(&myStack, 30);
	push(&myStack, 50);

	while (!isEmpty(&myStack))
	{
		printf("%d\n", top(&myStack)); pop(&myStack);
	}

    /* Assert fail while accessing empty stack */
	/* printf("%d\n", top(&myStack)); pop(&myStack); */
    
    printf("\nStack pointer demo:\n");
    Stack *myStackPtr = newStackPrt();
    
    push(myStackPtr, 70);
    push(myStackPtr, 80);
    push(myStackPtr, 90);
    
    while(!isEmpty(myStackPtr))
    {
        printf("%d\n", top(myStackPtr)); pop(myStackPtr);
    }
	
    /* Assert fail while accessing empty stack */
    /* printf("%d\n", top(myStackPtr)); pop(myStackPtr); */
    
	return 0;
}
