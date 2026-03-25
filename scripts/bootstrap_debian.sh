#!/usr/bin/env bash
set -e

sudo apt update
sudo apt install -y \
  build-essential gcc g++ clang clang-tidy clang-format \
  gdb lldb valgrind \
  cmake ninja-build pkg-config ccache \
  git curl zip unzip tar \
  python3 python3-pip python3-venv \
  lcov gcovr

python3 -m pip install --user conan pre-commit