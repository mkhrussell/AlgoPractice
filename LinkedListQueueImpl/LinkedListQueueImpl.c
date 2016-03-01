#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

typedef struct _QNode QNode;
typedef struct _Queue Queue;

struct _QNode
{
	int value;
	QNode *next;
};

struct _Queue
{
	QNode *front, *rear;
};

QNode* newNodePtr(int value)
{
	QNode *temp = (QNode *)malloc(sizeof(QNode));
	temp->value = value;
	temp->next = NULL;

	return temp;
}

Queue newQueue()
{
	Queue q;
	q.front = q.rear = NULL;

	return q;
}

Queue* newQueuePtr()
{
	Queue *q = (Queue *)malloc(sizeof(Queue));
	q->front = q->rear = NULL;

	return q;
}

void push(Queue *myQueue, int value)
{
	QNode *temp = newNodePtr(value);

	if (NULL == myQueue->rear)
	{
		myQueue->front = myQueue->rear = temp;
		return;
	}

	myQueue->rear->next = temp;
	myQueue->rear = temp;
}

int front(Queue *myQueue)
{
	assert(NULL != myQueue->front); // Check the Queue is not empty or not
    
	return myQueue->front->value;
}

void pop(Queue *myQueue)
{
	if (NULL == myQueue->front)
	{
		return;
	}

	QNode *temp = myQueue->front;
	myQueue->front = temp->next;
	free(temp);
}

int isEmpty(Queue *myQueue)
{
	if (NULL == myQueue->front) // Empty
		return 1;

	return 0;
}

int main()
{
	printf("Queue demo:\n");
	Queue myQueue = newQueue();
	
	push(&myQueue, 10);
	push(&myQueue, 20);
	push(&myQueue, 30);

	while (!isEmpty(&myQueue))
	{
		printf("%d\n", front(&myQueue)); pop(&myQueue);
	}

    /* Assert fail while accessing empty queue */
	/* printf("%d\n", front(&myQueue)); pop(&myQueue); */


	printf("\nQueue pointer demo:\n");
	Queue *myQueuePtr = newQueuePtr();
    
	push(myQueuePtr, 50);
	push(myQueuePtr, 60);
	push(myQueuePtr, 70);

	while (!isEmpty(myQueuePtr))
	{
		printf("%d\n", front(myQueuePtr)); pop(myQueuePtr);
	}

    /* Assert fail while accessing empty queue */
	/* printf("%d\n", front(myQueuePtr)); pop(myQueuePtr); */

	free(myQueuePtr); /* clear memory */

	return 0;
}
