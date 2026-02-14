# Compiler Construction Lecture - Development Container

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
8. If you are prompted to reopen the folder in a container, click on "Reopen in Container". You can also click on the button in the bottom left corner of the window and select "Reopen in Container"

## Customization

The file `.install.sh` is executed when the container is built. You can modify this file to install additional tools or libraries.

Currently, this script configure the theme for [oh-my-zsh](https://ohmyz.sh/) and patches the `~/.zshrc` file to source the `.zshrc` file from the project folder.
