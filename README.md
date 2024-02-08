# docker-mssql-proxy

## Overview

This repository contains a Docker image and related files for setting up an MSSQL proxy server. The proxy allows for secure communication with an MSSQL database, and it is intended to be used within a Dockerized environment.

## Usage

To use this MSSQL proxy, follow these steps:

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/alrik11es/docker-mssql-proxy.git
   ```
2. Navigate to the repository directory:

   ```bash
   cd docker-mssql-proxy
   ```
3. Make sure the following files are present in the project:
    - `certs/ca.crt`
    - `certs/client.crt`
    - `certs/client.ovpn`
    - `certs/client.pem`   

4. Rename the provided example files and customize the configuration files according to your needs:

    - Rename `docker-compose.example.yml` to `docker-compose.yml`
    - Rename `nginx.example.conf` to `nginx.conf`

5. Build the Docker image:

   ```bash
   docker build -t mssql-proxy .
   ```

6. Run the Docker container:

   ```bash
   docker-compose up -d
   ```

Now, your MSSQL proxy should be up and running, providing a secure connection to your MSSQL database.

## Configuration

You can customize the proxy configuration by modifying the `docker-compose.yml` file and adjusting the environment variables accordingly.

## Important Notes

- Ensure that you have Docker installed on your machine before using this proxy.
- Review and update the proxy's configuration to match your MSSQL database settings.

## Contributors

- Marcos Sigueros (@alrik11es)

## License

This project is licensed under the [MIT License](LICENSE). Feel free to modify and distribute it as needed.

---

Feel free to contribute, report issues, or suggest improvements!