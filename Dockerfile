FROM alpine:latest

# Install tinyproxy
RUN apk --no-cache add tinyproxy

# Copy our tinyproxy configuration
COPY tinyproxy.conf /etc/tinyproxy/tinyproxy.conf

# Expose proxy port
EXPOSE 8888

# Run tinyproxy in foreground (so Docker keeps it alive)
CMD ["tinyproxy", "-d"]
