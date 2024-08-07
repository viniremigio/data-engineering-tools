# Docker Compose
Automates multi-container setups
Replace multiple `docker build` and `docker run` commands through a single file with multiple configurations

- Does not replace Dockerfiles 
- Does not replace Images or Containers
- Not suited for managing multiple conainers on different hosts

Be aware of networks so docker-compose application can communicate

`docker compose down` delete containers but keeps volume. You can pass `-v` to remove volumes

## Components
- Webserver: Serves the UI
- Scheduler: Schedules tasks and check dependencies
- Meta Database: Stores Airflow metadata
- Executor: Defines how and on which system to execute tasks (Kubernetes, standalone, Celery)
- Triggerer: Used for deferrable operators
- Worker: executes the tasks

## Core Concepts
- Task
- Operator
- Dependency
- DAG

## Limitations
- Streaming: Airflow is batch oriented
- Data Processing: Use appropriate operators such as Spark

## Commands
astro dev bash
airflow db check
airflow db clean
airflow db export-archived

airflow dags backfill
airflow dags reserialize #resync dags

airflow tasks test
airflow cheat-sheet