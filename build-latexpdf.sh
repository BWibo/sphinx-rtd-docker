#!/usr/bin/env bash

# List Sphinx versions here
versions=("3.5.2" "3.5.3" "3.5.4" "4.0.0" "4.0.1" "4.0.2" "4.0.3" "4.1.0" "4.1.1" "4.1.2" "4.2.0")

for i in "${versions[@]}"; do
  DOCKER_BUILDKIT=1 \
    docker build -t "bwibo/sphinx-rtd-latexpdf:$i" --build-arg BASEIMAGE_TAG="$i" .

  docker push "bwibo/sphinx-rtd-latexpdf:$i"

  # latest tag
  if [[ "$i" == "${versions[-1]}" ]]; then
    docker tag "bwibo/sphinx-rtd-latexpdf:$i" "bwibo/sphinx-rtd-latexpdf:latest"
    docker push "bwibo/sphinx-rtd-latexpdf:latest"
  fi
done
