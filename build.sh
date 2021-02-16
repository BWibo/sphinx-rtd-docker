#!/usr/bin/env bash

DOCKER_BUILDKIT=1 \
docker build -t bwibo/sphinx-rtd --build-arg BASEIMAGE_TAG=3.5.0 .
