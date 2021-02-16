# Docker image for Sphinx and ReadTheDocs

The image is available here: https://hub.docker.com/repository/docker/bwibo/sphinx-rtd

## Usage

```bash
# Build HTML docs
docker run --rm \
  -v $PWD:/docs \
  bwibo/sphinx-rtd make html
```

