FROM python:3.8-slim
LABEL authors="mmuutassim"

RUN pip install awscli
RUN apt-get update && apt-get install -y zip unzip && rm -rf /var/lib/apt/lists/*

ENV CONFIG_S3_URL=s3://
ENV OUTPUT_DIR=/opt/project/app-config

COPY entry-point.sh /opt/project/entry-point.sh
RUN ls -la /opt/project
RUN ls -la /opt/project/entry-point.sh
RUN chmod +x /opt/project/entry-point.sh

ENTRYPOINT ["/opt/project/entry-point.sh"]