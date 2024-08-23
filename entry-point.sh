#!/bin/bash

echo "Creating directory $OUTPUT_DIR"
mkdir -p $OUTPUT_DIR
echo "Downloading S3 File $CONFIG_S3_URL into $OUTPUT_DIR"
aws s3 cp $CONFIG_S3_URL $OUTPUT_DIR
cd $OUTPUT_DIR
unzip data.zip
ls -la $OUTPUT_DIR