# SFTP server for testing

Creates a basic SFTP server with ssh key authentication for testing.

### Requirements

- Docker
```
$ docker --version
# Example output: $ Docker version 25.0.3
```

- Docker Compose
```
$ docker-compose --version
# Example output: $ Docker Compose version v2.24
```

### Usage

1. Create a new `.env` file from the sample file. Change the `SFTP_USERNAME` if desired.
2. Generate ssh keys with `make ssh-keygen`. When prompted you can either enter a password or just skip it.
3. Start the server with `make start`.
4. Confirm the container is running on docker desktop or with `docker container ls -a`.
