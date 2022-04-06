# todos-app

A simple Go web application that performs CRUD operations against a PostgreSQL database as it allows you to manage a list of tasks or activities.

## Usage

### Run the application in a Docker container
```bash
VERSION=""
POSTGRESQL_DB_HOST=""
POSTGRESQL_DB_USERNAME=""
POSTGRESQL_DB_PASSWORD=""
POSTGRESQL_DB_NAME="todos"

docker run --name todos-app \
  -p 8080:8080 \
  -e DB_HOST=${POSTGRESQL_DB_HOST} \
  -e DB_NAME=${POSTGRESQL_DB_NAME} \
  -e DB_USERNAME=${POSTGRESQL_DB_USERNAME} \
  -e DB_PASSWORD=${POSTGRESQL_DB_PASSWORD} \
  -d ghcr.io/appvia/todos-app:latest@sha256:db27ed795c13856f9f779f76c469f561385dd4419399fe48f8acd09f6f199ab8
```

<!-- ## Run the Docker container in a Kubernetes cluster
TBD -->
