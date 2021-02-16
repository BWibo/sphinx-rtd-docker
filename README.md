# Docker image for Sphinx and ReadTheDocs

The image is available here: https://hub.docker.com/repository/docker/bwibo/sphinx-rtd

## Usage

Mount your local `docs` folder to `docs` inside the container and append the command you want to use.
More info on the available command is available in the documentation of the base image:
https://hub.docker.com/r/sphinxdoc/sphinx


```bash
# Build HTML docs
docker run --rm \
  -v $PWD:/docs \
  bwibo/sphinx-rtd make html
```

