FROM mhart/alpine-node:0.12

#compass
RUN apk add --update build-base libffi-dev ruby ruby-dev git \
    && gem install sass compass autoprefixer-rails --no-ri --no-rdoc \
    && apk del build-base libffi-dev ruby-dev \
    && rm -rf /var/cache/apk/* \
    && npm install -g grunt grunt-cli bower --production \
    && gem update --system \
    && gem update \
    && gem cleanup

CMD ["node"]
