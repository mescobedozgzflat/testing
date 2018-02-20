FROM mhart/alpine-node:0.12

#compass
RUN apk add --update build-base libffi-dev ruby ruby-dev git \
    && gem install sass compass --no-ri --no-rdoc \
    && gem install  autoprefixer-rails -v 7.1.6 \
    && apk del build-base libffi-dev ruby-dev \
    && rm -rf /var/cache/apk/* \
    && npm install -g grunt grunt-cli bower --production 

CMD ["node"]
