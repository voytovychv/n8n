### add postgres container
```
docker container run -d --rm -p 5532:5432 -e POSTGRES_PASSWORD=postgres -e POSTGRES_USER=postgres -e POSTGRES_DB=n8n --name n8n-db postgres:alpine
```

### create n8n container

## create volume first
```
docker volume create n8n_data
```
## create n8n container

```
docker run -it --rm \
 --name n8n \
 -p 5678:5678 \
 -e GENERIC_TIMEZONE="Europe/Berlin" \
 -e TZ="Europe/Berlin" \
 -e N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true \
 -e N8N_RUNNERS_ENABLED=true \
 -e DB_TYPE=postgresdb \
 -e DB_POSTGRESDB_DATABASE=n8n \
 -e DB_POSTGRESDB_HOST=127.0.0.1 \
 -e DB_POSTGRESDB_PORT=5532 \
 -e DB_POSTGRESDB_USER=postgres \
 -e DB_POSTGRESDB_SCHEMA=n8n \
 -e DB_POSTGRESDB_PASSWORD=postgres \
 -v n8n_data:/home/node/.n8n \
 docker.n8n.io/n8nio/n8n
 ```