#include "project_name/version.hpp"
#include <iostream>

int main()
{
    std::cout << "Library version: " << project_name::version() << '\n';
    return 0;
}