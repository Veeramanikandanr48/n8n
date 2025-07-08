FROM n8nio/n8n

# Basic auth (set to your desired username/password)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

# Optional: expose default port
EXPOSE 5678
