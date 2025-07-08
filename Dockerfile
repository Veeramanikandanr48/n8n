# Use official n8n Docker image
FROM n8nio/n8n

# Basic authentication settings
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

# Skip setup page
ENV N8N_SKIP_WEBHOOK_DEREGISTRATION_SHUTDOWN=true
ENV N8N_DIAGNOSTICS_ENABLED=false

# Host and port settings
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# Prevent n8n from showing onboarding/setup screen
ENV N8N_DISABLE_PRODUCTION_MAIN_MENU=true
