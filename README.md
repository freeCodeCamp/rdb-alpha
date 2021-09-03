### Prerequisites

1. Docker and Docker Compose
2. VSCode and the [Remote Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension
3. Git

### Current steps to run projects in a Docker container

1. Clone the RDB Alpha repo with `git clone https://github.com/scissorsneedfoodtoo/rdb-alpha`
2. From the `rdb-alpha` directory, run `docker-compose up -d`
3. Once the image is built and the container is running, open VSCode
4. Press Ctrl / Cmd + P and enter `Remote-Containers:Attach to Running Container...`
5. Select the `rdb-alpha` container from the dropdown
6. In the new VSCode window, open the terminal and navigate to the `project` directory
7. Press Ctrl / Cmd + P and enter `Extensions: Install Extensions`
8. Search for the CodeRoad extensions and click "Install"
9. Press Ctrl / Cmd + P and enter `CodeRoad: Start`
10. In the CodeRoad window, click the "Open Workspace" button
11. Select `/home/codeally/project/` as the workspace and click "OK"
12. Press Ctrl / Cmd + P and enter `CodeRoad: Start` to restart CodeRoad
13. Click "Start New Tutorial"
14. Enter the URL to the `tutorial.json` file for the project you want to start (ex: https://raw.githubusercontent.com/moT01/.learn-bash-by-building-a-boilerplate/main/tutorial.json)
15. Click "Start"
16. Enter `exit` in the current terminal
17. Open a new terminal with Ctrl / Cmd + `
18. Start coding
