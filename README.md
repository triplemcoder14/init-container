## Init Container
This repository creates a docker image that is used as an init container for your  microservices. It's goal is to 
initialize a directory that will be used as the APP_SERVICE_CONFIG directory.

The content of that directory will be downloaded from an S3 compressed file