FROM mcr.microsoft.com/devcontainers/python:3.12-bookworm
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

# Install Wasmtime
RUN curl -sSfL https://wasmtime.dev/install.sh  | bash

# Install Poetry with poetry-plugin-up
RUN curl -sSfL https://install.python-poetry.org | python3 -
RUN $HOME/.local/bin/poetry self add poetry-plugin-up
