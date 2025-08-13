FROM dannydirect/tinyproxy:latest

# Optional: set up basic authentication
ENV TINYPROXY_USER=proxyuser
ENV TINYPROXY_PASSWORD=proxypass

# Listen on port 8888
EXPOSE 8888
