FROM n8nio/n8n:latest

# install ffmpeg (no need for chown)
USER root
RUN apk add --no-cache ffmpeg

# drop this—leave it owned by root, since we run as root
# RUN mkdir -p /home/node/.n8n \
#  && chown -R node:node /home/node/.n8n

# stay as root so that your volume (root-owned) is writable
USER root

# no ENTRYPOINT override needed; just use the default:
CMD ["n8n", "start"]