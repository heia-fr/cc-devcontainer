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

# Install various tools
RUN $HOME/.local/bin/uv tool install pre-commit@latest
RUN $HOME/.local/bin/uv tool install pyright@latest
RUN $HOME/.local/bin/uv tool install mypy@latest
RUN $HOME/.local/bin/uv tool install black@latest

# Install Wasm Runtimes
RUN curl -sSfL https://wasmtime.dev/install.sh  | bash
RUN curl https://get.wasmer.io -sSfL | sh
RUN curl -sSf https://raw.githubusercontent.com/WasmEdge/WasmEdge/master/utils/install.sh | bash
