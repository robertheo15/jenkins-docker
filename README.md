# Jenkins in Docker
This project is a Dockerized Jenkins environment. It includes a Docker daemon container, a Jenkins container, and a NGINX container.

Requirements: Docker

Usage
1. Clone the project repository.
2. Run the following command to start the project: `docker-compose up -d`
3. Once the project is running, you can access Jenkins at http://localhost:9000.

## Troubleshooting

If you encounter any problems, please consult the [Docker documentation](https://docs.docker.com/).
Additional Information
The Dockerfile for the Jenkins container can be found in the jenkins directory.
The nginx configuration file can be found in the nginx directory.
