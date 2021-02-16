ARG BASEIMAGE_TAG='3.5.0'
FROM sphinxdoc/sphinx:${BASEIMAGE_TAG}

COPY requirements.txt /requirements.txt
RUN set -x && \
  pip3 install -r /requirements.txt

WORKDIR /docs
