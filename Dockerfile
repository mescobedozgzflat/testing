FROM mhart/alpine-node:0.12

#compass
RUN apk add --update build-base libffi-dev ruby ruby-dev git \
    && gem install sass compass  autoprefixer-rails json --no-ri --no-rdoc  \
    && apk del build-base libffi-dev ruby-dev \
    && rm -rf /var/cache/apk/* \
    && npm install -g grunt grunt-cli bower --production \
    && apt-get install -y \
    openssh-server \
    rsync \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["node"]
