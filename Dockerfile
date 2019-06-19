FROM ruby:2.6-alpine

RUN apk add --update \
    build-base \
  && rm -rf /var/cache/apk/*

RUN gem install --no-document \
    pg_query \
    sinatra

COPY app.rb app.rb

EXPOSE 4567
CMD ["ruby", "app.rb"]
