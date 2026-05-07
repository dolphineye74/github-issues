#!/bin/sh
set -euo pipefail

# Synchronize the submodules
git submodule sync --recursive
git submodule update --init --recursive

# Generate the project
cmake -S . \
    -B ./Build/Win64 \
    -A x64 \
    -G "Visual Studio 17 2022"
