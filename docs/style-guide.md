# Style Guide

- prefira RAII
- prefira `std::unique_ptr` a `new/delete` manual
- evite `using namespace`
- headers públicos em `include/`
- implemente em `src/`
- escreva testes para comportamento observável
- meça performance antes de otimizar