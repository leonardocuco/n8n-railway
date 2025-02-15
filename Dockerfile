FROM n8nio/n8n:latest

# Build arguments for database credentials and other settings
ARG PGPASSWORD
ARG PGHOST
ARG PGPORT
ARG PGDATABASE
ARG PGUSER
ARG N8N_ENCRYPTION_KEY
ARG TZ
ARG WEBHOOK_URL

# Configure n8n to use PostgreSQL
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_DATABASE=$PGDATABASE
ENV DB_POSTGRESDB_HOST=$PGHOST
ENV DB_POSTGRESDB_PORT=$PGPORT
ENV DB_POSTGRESDB_USER=$PGUSER
ENV DB_POSTGRESDB_PASSWORD=$PGPASSWORD

# Set additional n8n and system settings
ENV N8N_ENCRYPTION_KEY=$N8N_ENCRYPTION_KEY
ENV TZ=${TZ:-Europe/Berlin}       # Default timezone can be changed as needed
ENV WEBHOOK_URL=$WEBHOOK_URL

# Start n8n
CMD ["n8n", "start"]
