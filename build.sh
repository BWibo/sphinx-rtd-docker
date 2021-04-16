#!/usr/bin/env bash

# List Sphinx versions here
versions=("3.5.2" "3.5.3" "3.5.4")

for i in "${versions[@]}"; do
  DOCKER_BUILDKIT=1 \
    docker build -t "bwibo/sphinx-rtd:$i" --build-arg BASEIMAGE_TAG="$i" .

  docker push "bwibo/sphinx-rtd:$i"

  # latest tag
  if [[ "$i" == "${versions[-1]}" ]]; then
    docker tag "bwibo/sphinx-rtd:$i" "bwibo/sphinx-rtd:latest"
    docker push "bwibo/sphinx-rtd:latest"
  fi
done
