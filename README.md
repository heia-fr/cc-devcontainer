# Compiler Construction Lecture - Development Environment

## Setup

1. Install [Docker](https://docs.docker.com/get-docker/)
2. Install [Visual Studio Code](https://code.visualstudio.com/)
3. Install the [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension for Visual Studio Code
4. Create a new folder for your project
5. Download the [cc-devcontainer.tar.gz](https://github.com/heia-fr/cc-devcontainer/releases/latest/download/cc-devcontainer.tar.gz) or [cc-devcontainer.zip](https://github.com/heia-fr/cc-devcontainer/releases/latest/download/cc-devcontainer.zip) file and extract it into the folder
   On Unix based systems, you can use the following commands:

   ```bash
   curl -sSfLo - https://github.com/heia-fr/cc-devcontainer/releases/latest/download/cc-devcontainer.tar.gz | tar xvf -
   ```
6. Check that you have the following files in your project folder:

   ```
   .
   ├── .devcontainer
   │   ├── Dockerfile
   │   └── devcontainer.json
   └── .startup.sh
   ```
7. Open the project folder in Visual Studio Code
8. Click on the green button in the bottom left corner of the window and select "Reopen in Container"
