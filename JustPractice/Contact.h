#ifndef CONTACT_H
#define CONTACT_H

#include <string>

class Contact
{
public:
	Contact(std::string name, std::string email, int age);
	~Contact();
	std::string toString();
	bool operator < (const Contact& cntt);
	bool operator <= (const Contact& cntt);
	bool operator > (const Contact& cntt);
	bool operator >= (const Contact& cntt);
	bool operator == (const Contact& cntt);

private:
	Contact() {}
	std::string __name;
	std::string __email;
	int __age;
};

Contact::Contact(std::string name, std::string email, int age)
{
	//std::cout << "Construct";
	__name = name;
	__email = email;
	__age = age;
}

Contact::~Contact()
{
	//std::cout << "Destruct";
}

std::string Contact::toString()
{
	std::string result = "";
	result.append(__name);
	result.append(", ");
	result.append(__email);
	result.append(", ");
	result.append(std::to_string(__age));

	return result;
}

bool Contact::operator< (const Contact& cntt)
{
	if (__age < cntt.__age)
		return true;
	
	return false;
}

bool Contact::operator<= (const Contact& cntt)
{
	if (__age <= cntt.__age)
		return true;

	return false;
}

bool Contact::operator> (const Contact& cntt)
{
	if (__age > cntt.__age)
		return true;
		
	return false;
}

bool Contact::operator>= (const Contact& cntt)
{
	if (__age >= cntt.__age)
		return true;

	return false;
}

bool Contact::operator == (const Contact& cntt)
{
	if (__age == cntt.__age)
		return true;

	return false;
}

#endif // CONTACT_H