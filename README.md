# cpp-repo-template

Template profissional para projetos C e C++ com:

- CMake
- Conan 2
- vcpkg
- GTest
- clang-format
- clang-tidy
- pre-commit
- GitHub Actions
- suporte inicial para Linux e Windows

## Objetivo

Servir como base para bibliotecas, aplicações CLI, ferramentas GUI e laboratórios de performance.

## Estrutura

- `include/`: headers públicos
- `src/`: implementação
- `apps/`: executáveis
- `tests/`: testes
- `benchmarks/`: benchmarks
- `cmake/`: módulos e configurações do CMake
- `docs/`: documentação técnica

## Requisitos

- CMake >= 3.25
- compilador com suporte a C++20
- Python 3
- Ninja
- Conan 2 opcional
- vcpkg opcional

## Build local

```bash
cmake --preset default
cmake --build --preset build-debug
ctest --preset test-debug