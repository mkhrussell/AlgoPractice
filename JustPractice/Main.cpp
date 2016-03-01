#include <iostream>

#include "Contact.h"

using namespace std;

int main(int argc, char **argv)
{
	Contact contactDb[] = {
		{ "Kamrul", "kam@hi.com", 10 }, 
		{ "Rakeeb", "rakeeb@hi.com", 40 },
		{ "Forhad", "forhad@hi.com", 30 },
		{ "Russell", "russell@hi.com", 20 },
		{ "Avna", "avna@hi.com", 5 }
	};

	Contact me("Kamrul Hasan", "kamrul@hi.com", 30);
	for (int i = 0; i < 5; i++)
	{
		if(me <= contactDb[i])
			cout << contactDb[i].toString() << endl;
	}

	return 0;
}