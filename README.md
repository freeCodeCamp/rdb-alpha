### Prerequisites

1. Docker and Docker Compose
1. VSCode and the [Remote Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension
1. Git

### Current steps to run projects in a Docker container

1. Clone the RDB Alpha repo with `git clone https://github.com/scissorsneedfoodtoo/rdb-alpha`
1. From the `rdb-alpha` directory, run `docker-compose up -d`
1. Once the image is built and the container is running, open VSCode
1. Press Ctrl / Cmd + P and enter `Remote-Containers:Attach to Running Container...`
1. Select the `rdb-alpha` container from the dropdown
1. In the new VSCode window, open the terminal and navigate to the `project` directory
1. Press Ctrl / Cmd + P and enter `Extensions: Install Extensions`
1. Search for the CodeRoad extensions and click "Install"
1. Press Ctrl / Cmd + P and enter `CodeRoad: Start`
1. In the CodeRoad window, click the "Open Workspace" button
1. Select `/home/codeally/project/` as the workspace and click "OK"
1. Press Ctrl / Cmd + P and enter `CodeRoad: Start` to restart CodeRoad
1. Click "Start New Tutorial"
1. Enter the URL to the `tutorial.json` file for the project you want to start (ex: https://raw.githubusercontent.com/moT01/.learn-bash-by-building-a-boilerplate/main/tutorial.json)
1. Click "Start"
1. Enter `exit` in the current terminal
1. Open a new terminal with Ctrl / Cmd + `
1. Start coding
