FROM mcr.microsoft.com/devcontainers/python:3.14-bookworm
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install \
    binaryen \
    emscripten \
    git \
    wabt

USER vscode:vscode

# Install Just
RUN curl --proto '=https' --tlsv1.2 -sSfL https://just.systems/install.sh | bash -s -- --to $HOME/.local/bin
RUN $HOME/.local/bin/just --completions zsh > ${HOME}/just.zsh
RUN echo "source ${HOME}/just.zsh" >> ${HOME}/.zshrc

# Install uv
RUN curl -LsSf https://astral.sh/uv/install.sh | sh

# Install Ruff
RUN $HOME/.local/bin/uv tool install ruff@latest

# Install Wasmtime
RUN curl -sSfL https://wasmtime.dev/install.sh  | bash

# Install Wasmer
RUN curl https://get.wasmer.io -sSfL | sh

# Install WasmEdge
RUN curl -sSf https://raw.githubusercontent.com/WasmEdge/WasmEdge/master/utils/install.sh | bash
