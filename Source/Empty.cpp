#include "Empty.hpp"

#include <iostream>

void Empty::HelloWorld()
{
	std::cout << "Hello, world!\n";
}

int main(int argc, char** argv)
{
	// Unit tests and development (build with test configuration)
	Empty::HelloWorld();
	
	return 0;
}
