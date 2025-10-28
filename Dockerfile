# Use the official n8n image
FROM n8nio/n8n:latest

# Set environment variables
ENV GENERIC_TIMEZONE="Asia/Kolkata"
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=milind
ENV N8N_BASIC_AUTH_PASSWORD=milind123
ENV N8N_PORT=5678

# Expose the n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
