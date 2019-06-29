FROM gitpod/workspace-full:latest

USER root
# Install custom tools, runtime, etc.
RUN apt-get update && apt-get install -y \
        python3-curses python3-bottle \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

pip3 install pick

USER gitpod
# Apply user-specific settings

# Give back control
USER root
