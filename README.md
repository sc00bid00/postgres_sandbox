# PostgreSQL Docker Sandbox

This repository provides a Docker-based sandbox environment for users to train with PostgreSQL without needing to install it on their system. The setup includes PostgreSQL and pgAdmin4 for database management.

## Table of Contents
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)
- [Folder Structure](#folder-structure)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [License](#license)

## Getting Started

### Prerequisites

Ensure you have the following installed on your system:
- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Installation

1. **Clone the repository:**
    ```sh
    git clone https://github.com/yourusername/postgres-docker-sandbox.git
    cd postgres-docker-sandbox
    ```

2. **Set up environment variables:**
    Ensure the `.env` file contains the necessary environment variables. You can customize these values as needed.

3. **Create necessary directories and start the containers:**

    For **Linux/MacOS**:
    ```sh
    chmod +x setup.sh
    ./setup.sh
    ```

    For **Windows**:
    ```sh
    setup.bat
    ```

This will create the required directories, set permissions, and start the Docker containers.

## Usage

- **pgAdmin** will be accessible at `http://localhost:5050`
  - Login using the credentials specified in the `.env` file:
    - **Email:** `pga@email.com`
    - **Password:** `PGAPW`

- **PostgreSQL** will be running on the default port `5432`
  - Access it using the credentials specified in the `.env` file:
    - **Database:** `PGDB`
    - **User:** `PGME`
    - **Password:** `PGPW`

## Configuration

The `.env` file contains all the necessary configuration variables:

```env
# PGADMIN LOGIN DATA
PGADMIN_DEFAULT_EMAIL=pga@email.com
PGADMIN_DEFAULT_PASSWORD=PGAPW
PGADMIN_LISTEN_PORT=80

# DATABASE
HOST='postgres'
PORT=5432
POSTGRES_DB=PGDB
POSTGRES_USER=PGME
POSTGRES_PASSWORD=PGPW

# CONF
DATE_FORMAT='d.m.Y'
DECIMAL_SEP=','
THOUSAND_SEP=''
CSV_DELIMITER=';'
```

Feel free to customize these values according to your preferences.

## Folder Structure

Here is the expected folder structure after setting up the sandbox:

```
postgres-docker-sandbox/
├── .env
├── docker-compose.yml
├── setup.sh
├── setup.bat
├── postgres_data/       # Directory for PostgreSQL data
├── pgadmin/             # Directory for pgAdmin data
└── README.md
```

- **.env:** Environment variables for the setup.
- **docker-compose.yml:** Docker Compose configuration file.
- **setup.sh:** Setup script for Linux/MacOS.
- **setup.bat:** Setup script for Windows.
- **postgres_data/:** Directory where PostgreSQL will store its data.
- **pgadmin/:** Directory where pgAdmin will store its data.
- **README.md:** This README file.

## Troubleshooting

If you encounter any issues, follow these steps:

1. **Check container logs:**
    ```sh
    docker-compose logs
    ```

2. **Restart the containers:**
    ```sh
    docker-compose down
    docker-compose up
    ```

3. **Verify Docker and Docker Compose installation:**
    Ensure you have the latest versions installed.

4. **File and directory permissions:**
    Ensure the directories `./postgres_data` and `./pgadmin` have the correct permissions.

## Contributing

We welcome contributions! Please fork the repository and create a pull request with your changes. Ensure your code adheres to the existing style and passes all tests.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

Happy coding!
