#!/bin/sh -l
# Update packages and install necessary dependencies
RUN yum update -y && \
    yum install -y git python3-pip

# Install Beets
RUN pip install beets
