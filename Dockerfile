FROM python:3.8-slim
LABEL authors="mmuutassim"

# Install dependencies
RUN pip install awscli
RUN apt-get update && apt-get install -y zip unzip && rm -rf /var/lib/apt/lists/*

# Set environment variables
ENV CONFIG_S3_URL=s3://
ENV OUTPUT_DIR=/opt/project/app-config

# Copy the entry point script
COPY entry-point.sh /opt/project/entry-point.sh
# Copy the global script
COPY global.sh /opt/project/global.sh

# Make both scripts executable
RUN chmod +x /opt/project/entry-point.sh /opt/project/global.sh

# Optionally list files for debugging
RUN ls -la /opt/project
RUN ls -la /opt/project/entry-point.sh
RUN ls -la /opt/project/global.sh

# Set the entry point for the container
ENTRYPOINT ["/opt/project/entry-point.sh"]





# FROM python:3.8-slim
# MAINTAINER Muutassim-Mukhtar<mukhy16@gmail.com>

# RUN pip install awscli
# RUN apt-get update && apt-get install -y zip unzip && rm -rf /var/lib/apt/lists/*

# ENV CONFIG_S3_URL=s3://
# ENV OUTPUT_DIR=/opt/project/app-config

# COPY entry-point.sh /opt/project/entry-point.sh
# RUN ls -la /opt/project
# RUN ls -la /opt/project/entry-point.sh
# RUN chmod +x /opt/project/entry-point.sh

# ENTRYPOINT ["/opt/project/entry-point.sh"]