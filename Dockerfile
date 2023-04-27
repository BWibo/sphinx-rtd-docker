FROM python:slim

WORKDIR /docs
COPY requirements.txt /requirements.txt

ARG SPHINX_VERSION=6.2.1

RUN set -ex \
  && apt-get update \
  && apt-get install --no-install-recommends -y \
        git \
        graphviz \
        imagemagick \
        make \
  && apt-get autoremove \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && pip install sphinx==${SPHINX_VERSION} \
  && pip install -r /requirements.txt \
  && rm -v /requirements.txt

CMD ["make", "html"]
