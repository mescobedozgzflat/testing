FROM mhart/alpine-node:0.12

#compass
RUN apk add --update build-base libffi-dev ruby ruby-dev git \
    && gem install sass compass  autoprefixer-rails json --no-ri --no-rdoc  \
    && apk del build-base libffi-dev ruby-dev \
    && rm -rf /var/cache/apk/* \
    && npm install -g grunt grunt-cli bower --production \
    && apt-get update && \
      DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends rsync && \
      apt-get clean autoclean && \
      apt-get autoremove -y && \
      rm -rf /var/lib/apt/lists/*

ADD ./run /usr/local/bin/run

CMD ["node"]
