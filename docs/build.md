# Build Guide

## Local build

```bash
cmake --preset default
cmake --build --preset build-debug
ctest --preset test-debug

## Sanitizers

```bash
cmake --preset sanitizers
cmake --build --preset build-sanitizers
ctest --test-dir build/debug --output-on-failure