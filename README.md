### Prerequisites

1. [Docker Engine](https://docs.docker.com/engine/) and [Docker Compose](https://docs.docker.com/compose/)
1. [VSCode](https://code.visualstudio.com/download) and the [Remote Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension
1. Git

### How to Run a Project in Docker

1. Clone the RDB Alpha repo with `git clone https://github.com/scissorsneedfoodtoo/rdb-alpha`
1. From the `rdb-alpha` directory, run `docker-compose up -d`
1. Once the image is built and the container is running, open VSCode
1. Press Ctrl / Cmd + P and enter `Remote-Containers:Attach to Running Container...`
1. Select the `rdb-alpha` container from the dropdown
1. In the new VSCode window, wait for the container to load. Then press Ctrl / Cmd + P and enter `CodeRoad: Start`
1. In the CodeRoad window, click "Start New Tutorial"
1. Enter the URL to the `tutorial.json` file of the project you want to start (ex: https://raw.githubusercontent.com/moT01/.learn-bash-by-building-a-boilerplate/main/tutorial.json)
1. Click the "Start" button
1. Enter `exit` in the current VSCode terminal and click the "X" button to close the terminal window
1. Open a new VSCode terminal with Ctrl / Cmd + `
1. Start coding

### How to Restart or Switch Projects

1. Close the project's VSCode window
1. In a terminal, navigate to the `rdb-alpha` directory and run `docker-compose down`
1. Run `docker-compose up -d`
1. Open VSCode and attach to the remote `rdb-alpha` container as described above

### `tutorial.json` File URLs for CodeRoad

- [Learn Bash by Building a Boilerplate](https://raw.githubusercontent.com/moT01/.learn-bash-by-building-a-boilerplate/main/tutorial.json)
- [Learn Relational Databases by Building a Mario Database](https://raw.githubusercontent.com/moT01/learn-relational-databases-by-building-a-mario-database/main/tutorial.json)
- [Celestial Bodies Database](https://raw.githubusercontent.com/moT01/.celestial-bodies-database/main/tutorial.json)
- [Learn Bash Scripting by Building Five Programs](https://raw.githubusercontent.com/moT01/.learn-bash-scripting-by-building-five-programs/main/tutorial.json)
- [Learn SQL by Building a Student Database](https://raw.githubusercontent.com/moT01/.learn-sql-by-building-a-student-database/main/tutorial.json)
- [World Cup Database](https://raw.githubusercontent.com/moT01/.world-cup-database/main/tutorial.json)
- [Learn Advanced Bash by Building a Kitty Ipsum Translator](https://raw.githubusercontent.com/moT01/.learn-advanced-bash-by-building-a-kitty-ipsum-translator/main/tutorial.json)
- [Learn Bash and SQL by Building a Bike Rental Shop](https://raw.githubusercontent.com/moT01/.learn-bash-and-sql-by-building-a-bike-rental-shop/main/tutorial.json)
- [Salon Appointment Scheduler](https://raw.githubusercontent.com/moT01/.salon-appointment-scheduler/main/tutorial.json)
- [Learn Nano by Building a Castle](https://raw.githubusercontent.com/moT01/.learn-nano-by-building-a-castle/main/tutorial.json)
- [Learn Git by Building an SQL Reference Object](https://raw.githubusercontent.com/moT01/.learn-git-by-building-an-sql-reference-object/main/tutorial.json)
- [Periodic Table Database](https://raw.githubusercontent.com/moT01/.periodic-table-database/main/tutorial.json)
- Learn GitHub by Building a List of Inspirational Quotes (in progress)
- [Number Guessing Game](https://raw.githubusercontent.com/moT01/.number-guessing-game/main/tutorial.json)
