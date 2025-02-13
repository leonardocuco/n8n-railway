FROM n8nio/n8n:latest

# If you need special Alpine networking or other custom steps,
# you can do them here. Otherwise you can even skip the Dockerfile entirely.

ENV ENABLE_ALPINE_PRIVATE_NETWORKING=true

# Start n8n with the official entrypoint
CMD ["n8n", "start"]
