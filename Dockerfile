# multiarch-docker/Dockerfile

# Use Ubuntu 24.04 base image
FROM ubuntu:24.04

# Set environment variable to suppress prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install utilities
RUN apt-get update && \
    apt-get install -y curl bash && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Default command
CMD ["bash"]
