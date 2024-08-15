FROM ubuntu

# Copy all files to /root/ directory
COPY * /root/

# Set the working directory
WORKDIR /root/

# Run the installation script
RUN sh install.sh

# Create a volume to optionally mount the current directory
VOLUME /workspace

# Add the entrypoint script directly in the Dockerfile
RUN echo '#!/bin/sh' > /entrypoint.sh && \
    echo '' >> /entrypoint.sh && \
    echo '# Check if a directory is mounted at /workspace' >> /entrypoint.sh && \
    echo 'if [ "$(ls -A /workspace)" ]; then' >> /entrypoint.sh && \
    echo '    # If there is content in /workspace, start nvim in that directory' >> /entrypoint.sh && \
    echo '    cd /workspace' >> /entrypoint.sh && \
    echo 'else' >> /entrypoint.sh && \
    echo '    # Otherwise, start nvim in the current working directory' >> /entrypoint.sh && \
    echo '    cd /root' >> /entrypoint.sh && \
    echo 'fi' >> /entrypoint.sh && \
    echo '' >> /entrypoint.sh && \
    echo '# Start nvim' >> /entrypoint.sh && \
    echo 'nvim' >> /entrypoint.sh && \
    chmod +x /entrypoint.sh

# Set the entrypoint to the script
ENTRYPOINT ["/entrypoint.sh"]

