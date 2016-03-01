#include <iostream>
#include <cassert>

template <class Item>
class Queue {
public:
	Queue();
	~Queue();
	void push(Item value);
	void pop();
	Item top();
	bool empty();
private:
	class Node {
		friend class Queue;
		Node(Item value) { this->value = value; next = nullptr; }
		~Node() { /* std::cout << "Node freed" << std::endl; */ }
	private:
		Item value;
		Node *next;
	};

	Node *frontNode;
	Node *topNode;
};

template <class Item>
Queue<Item>::Queue()
{
	frontNode = topNode = nullptr;
}

template <class Item>
Queue<Item>::~Queue()
{
	/* std::cout << "Queue freed" << std::endl; */
}

template <class Item>
void Queue<Item>::push(Item value)
{
	Node *temp = new Node(value);
	if (nullptr == topNode)
	{
		frontNode = topNode = temp;
		return;
	}

	topNode->next = temp;
	topNode = temp;
}

template <class Item>
void Queue<Item>::pop()
{
	if (nullptr == frontNode) // Empty
	{
		return;
	}

	Node *temp = frontNode;
	frontNode = frontNode->next;
	delete temp;
}

template <class Item>
Item Queue<Item>::top()
{
	assert(nullptr != frontNode); // Check the Queue is not empty or not

	return frontNode->value;
}

template <class Item>
bool Queue<Item>::empty()
{
	if (nullptr == frontNode) // Empty
	{
		return true;
	}

	return false;
}

int main()
{
	Queue<char> myQueue;
	myQueue.push('A');
	myQueue.push('B');
	myQueue.push('C');

	while (!myQueue.empty())
	{
		std::cout << myQueue.top() << std::endl; myQueue.pop();
	}

	// std::cout << myQueue.top() << std::endl; myQueue.pop(); // Will give assertion failed message, as Queue is empty

	return 0;
}