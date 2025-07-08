FROM n8nio/n8n:1.100.1

ENV NODE_ENV=production
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_DISABLE_PRODUCTION_MAIN_MENU=true
ENV N8N_RUNNERS_ENABLED=true
ENV TZ=Asia/Kolkata

RUN mkdir -p /home/node/.n8n
WORKDIR /home/node

# ⚠️ Use root here so the installed n8n is available
USER root

EXPOSE 5678
CMD ["n8n"]
