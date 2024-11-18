# Use the latest Ubuntu image
FROM ubuntu:latest

# Update the package list and install required software
RUN apt-get update && apt-get install -y \
    ffmpeg \
    python3 \
    python3-pip \
    nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Expose the port
EXPOSE 5000

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
