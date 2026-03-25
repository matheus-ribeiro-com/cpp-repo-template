#include <iostream>
#include "project_name/version.hpp"

int main()
{
    std::cout << "Library version: " << project_name::version() << '\n';
    return 0;
}