#include <chrono>
#include <iostream>
#include "project_name/version.hpp"

int main()
{
    const auto start = std::chrono::steady_clock::now();

    volatile auto v = project_name::version().size();
    (void)v;

    const auto end = std::chrono::steady_clock::now();
    const auto elapsed =
        std::chrono::duration_cast<std::chrono::nanoseconds>(end - start).count();

    std::cout << "Elapsed ns: " << elapsed << '\n';
    return 0;
}