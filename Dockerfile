# Dockerfile for gitlab-mcp-server MCP Server
# Generated automatically from MCP configuration

FROM alpine:latest

# Set working directory
WORKDIR /app

# Set environment variables
# No environment variables configured

# Install common utilities
RUN apk add --no-cache bash curl

# Copy application files
COPY . .

# Expose MCP server port
EXPOSE 3000

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD wget --no-verbose --tries=1 --spider http://localhost:3000/health || exit 1

# Start the MCP server
CMD ["/путь/к/gitlab-mcp-server/run-mcp.sh"]
