FROM docker.n8n.io/n8nio/n8n:latest

USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n
USER node

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV N8N_RUNNERS_ENABLED=true

EXPOSE 5678
CMD ["n8n", "start"]
