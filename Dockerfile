# Use official n8n image
FROM n8nio/n8n:1.100.1

# Set production environment
ENV NODE_ENV=production

# Enable basic authentication (change values for production)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

# Set default host and port
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# Optional: disable main menu in production
ENV N8N_DISABLE_PRODUCTION_MAIN_MENU=true

# Optional: enable task runners (recommended for newer versions)
ENV N8N_RUNNERS_ENABLED=true

# Optional: timezone
ENV TZ=Asia/Kolkata

# Create directory for user data (if needed)
RUN mkdir -p /home/node/.n8n

# Set working directory
WORKDIR /home/node

# Use a non-root user for better security
USER node

# Expose default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
