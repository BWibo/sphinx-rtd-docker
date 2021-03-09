ARG BASEIMAGE_TAG='latest'
FROM sphinxdoc/sphinx:${BASEIMAGE_TAG}

COPY requirements.txt /requirements.txt
RUN set -x && \
  pip3 install -r /requirements.txt && \
  rm -v /requirements.txt

WORKDIR /docs
