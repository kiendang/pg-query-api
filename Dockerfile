FROM ruby:2.6-alpine

RUN apk add --update build-base && \
    gem install --no-document -V \
      pg_query \
      sinatra && \
    apk del build-base && \
    rm -rf /var/cache/apk/*

COPY app.rb app.rb

EXPOSE 4567
CMD ["ruby", "app.rb"]
