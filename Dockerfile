# Use official n8n image
FROM n8nio/n8n:latest

# Set environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=milind
ENV N8N_BASIC_AUTH_PASSWORD=milind123
ENV GENERIC_TIMEZONE="Asia/Kolkata"
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV N8N_PORT=5678

# Expose port
EXPOSE 5678

# Default command
ENTRYPOINT ["tini", "--"]
CMD ["n8n"]
