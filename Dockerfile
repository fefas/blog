FROM ruby:3.2.1-alpine3.17

ARG WORKDIR
ARG VERSION

WORKDIR $WORKDIR

RUN apk add --no-cache \
        make \
        gcc \
        g++

COPY ./src/Gemfile* ./
RUN bundle install
COPY ./src ./

ENV VERSION $VERSION
EXPOSE 80

