#!/bin/bash
# Run script for gitlab-mcp-server MCP Server
# Generated automatically from MCP configuration

# Build the Docker image
docker build -t gitlab-mcp-server-mcp-server .

# Run the container
docker run -d \
  --name gitlab-mcp-server-mcp-server \
  -p 3000:3000 \
  --restart unless-stopped \
  gitlab-mcp-server-mcp-server

# To add environment variables, use:
# docker run -d -e VAR_NAME=value ...

echo "MCP Server gitlab-mcp-server is now running on http://localhost:3000"
echo "Use 'docker logs gitlab-mcp-server-mcp-server' to view logs"
echo "Use 'docker stop gitlab-mcp-server-mcp-server' to stop the server"
