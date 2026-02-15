#!/bin/bash

npm install -g @devcontainers/cli
mkdir -p ${HOME}/.local/bin
curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to ${HOME}/.local/bin
curl -LsSf https://astral.sh/uv/install.sh | sh
$HOME/.local/bin/uv tool install pre-commit@latest
