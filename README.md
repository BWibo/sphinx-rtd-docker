# Docker image for Sphinx and ReadTheDocs

`Dockerfile` for [Sphinx](https://www.sphinx-doc.org/en/master/) including following extensions:

* Sphinx ReadTheDocs Theme: [`sphinx_rtd_theme`](https://github.com/readthedocs/sphinx_rtd_theme)
* Copy burron [`sphinx_copybutton`](https://github.com/executablebooks/sphinx-copybutton)
* Sphinx emojies [`sphinxemoji`](https://github.com/sphinx-contrib/emojicodes)
* Sphinx Fontwaesome [`sphinx_fontawesome`](https://pypi.org/project/sphinx_fontawesome/)
* Sphinx Toolbox [`sphinx-toolbox`]([sphinx-toolbox](https://pypi.org/project/sphinx-toolbox))

The image is available on DockerHub: https://hub.docker.com/repository/docker/bwibo/sphinx-rtd

## Usage

Mount your local `docs` folder to `/docs` inside the container and append the command you want to use.
More info on the available commands is available in the documentation of the base image:
https://hub.docker.com/r/sphinxdoc/sphinx

```bash
# Build HTML docs
docker run --rm \
    -v $PWD:/docs \
  bwibo/sphinx-rtd make html
```

## Build

Run `build.sh` to build the image or:

```bash
docker build -t bwibo/sphinx-rtd --build-arg SPHINX_VERSION=6.2.1 .
```
