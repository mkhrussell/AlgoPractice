#include <iostream>
#include <cassert>

template <class Item>
class Stack {
public:
	Stack();
	~Stack();
	void push(Item value);
	void pop();
	Item top();
	bool empty();
private:
	class Node {
		friend class Stack;
		Node(Item value) { this->value = value; next = nullptr; }
		~Node() { /* std::cout << "Node freed" << std::endl; */ }
	private:
		Item value;
		Node *next;
	};

	Node *topNode;
};

template <class Item>
Stack<Item>::Stack()
{
	topNode = nullptr;
}

template <class Item>
Stack<Item>::~Stack()
{
	/* std::cout << "Stack freed" << std::endl; */
}

template <class Item>
void Stack<Item>::push(Item value)
{
	Node *temp = new Node(value);
	if (nullptr == topNode)
	{
		topNode = temp;
		return;
	}

	temp->next = topNode;	
	topNode = temp;
}

template <class Item>
void Stack<Item>::pop()
{
	if (nullptr == topNode) // Empty
	{
		return;
	}

	Node *temp = topNode;
	topNode = topNode->next;
	delete temp;
}

template <class Item>
Item Stack<Item>::top()
{
	assert(nullptr != topNode); // Check the Stack is not empty or not

	return topNode->value;
}

template <class Item>
bool Stack<Item>::empty()
{
	if (nullptr == topNode) // Empty
	{
		return true;
	}

	return false;
}

int main()
{
	Stack<char> myStack;
	myStack.push('A');
	myStack.push('B');
	myStack.push('C');

	while (!myStack.empty())
	{
		std::cout << myStack.top() << std::endl; myStack.pop();
	}

	std::cout << myStack.top() << std::endl; myStack.pop(); // Will give assertion failed message

	return 0;
}