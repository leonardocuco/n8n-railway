FROM n8nio/n8n:latest
USER root

RUN apk add --no-cache ffmpeg \
 && mkdir -p /home/node/.n8n \
 && chown -R node:node /home/node/.n8n

USER node

CMD ["sh", "-c", "chown -R node:node /home/node/.n8n && n8n start"]
