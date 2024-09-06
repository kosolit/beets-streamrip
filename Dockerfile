# Container image that runs your code
FROM alpine:3.10

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]


# Update packages and install necessary dependencies
RUN yum update -y && \
    yum install -y git python3-pip

# Clone the repository
pip install beets
