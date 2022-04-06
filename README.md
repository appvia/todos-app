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
  -d ghcr.io/appvia/todos-app:sha-777555b550e290fa7c6be050957b6e906492bad4
```

### Run the container in a Kubernetes cluster
```bash
NAMESPACE=""

helm upgrade todos-app charts/todos-app/ \
  --install \
  --namespace ${NAMESPACE} \
  --wait
```
