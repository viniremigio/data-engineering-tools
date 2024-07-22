# Docker Compose
Automates multi-container setups
Replace multiple `docker build` and `docker run` commands through a single file with multiple configurations

- Does not replace Dockerfiles 
- Does not replace Images or Containers
- Not suited for managing multiple conainers on different hosts

Be aware of networks so docker-compose application can communicate

`docker compose down` delete containers but keeps volume. You can pass `-v` to remove volumes