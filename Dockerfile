# ✅ Use official n8n image
FROM n8nio/n8n:1.100.1

# ✅ Environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=password@123
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_DISABLE_PRODUCTION_MAIN_MENU=true
ENV N8N_RUNNERS_ENABLED=true
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV TZ=Asia/Kolkata

# ✅ Expose port
EXPOSE 5678

# ✅ No manual CMD or USER needed — the base image already includes CMD ["n8n"]
