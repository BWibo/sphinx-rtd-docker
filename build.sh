#!/usr/bin/env bash

# List Sphinx versions here
versions=(
  "3.5.2" "3.5.3" "3.5.4"
  "4.0.0" "4.0.1" "4.0.2" "4.0.3" "4.1.0" "4.1.1" "4.1.2" "4.2.0" "4.3.0" "4.3.1" "4.3.2" "4.4.0" "4.5.0"
  "5.0.0" "5.0.1" "5.0.2" "5.1.0" "5.1.1" "5.2.0" "5.2.1" "5.2.2" "5.3.0"
  "6.0.0" "6.0.1" "6.1.1" "6.1.2" "6.1.3" "6.2.0" "6.2.1"
)

for i in "${versions[@]}"; do
  DOCKER_BUILDKIT=1 \
    docker build -t "bwibo/sphinx-rtd:$i" --build-arg SPHINX_VERSION="$i" .

  docker push "bwibo/sphinx-rtd:$i"

  # latest tag
  if [[ "$i" == "${versions[-1]}" ]]; then
    docker tag "bwibo/sphinx-rtd:$i" "bwibo/sphinx-rtd:latest"
    docker push "bwibo/sphinx-rtd:latest"
  fi
done
