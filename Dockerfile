# Use official n8n image
FROM n8nio/n8n:latest

# Environment variables (keep sensitive ones in Render dashboard instead)
ENV N8N_HOST=n8n-genx.onrender.com
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://n8n-genx.onrender.com/
ENV DB_TYPE=sqlite
ENV DB_SQLITE_PATH=/data/database.sqlite

# Expose the default n8n port
EXPOSE 5678

# Create volume mount for persistent data
VOLUME /data

# Use tini for graceful shutdowns
ENTRYPOINT ["tini", "--"]

# Start n8n normally
CMD ["n8n", "start"]
