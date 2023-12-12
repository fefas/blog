FROM ruby:3.2.2

ARG WORKDIR
ARG VERSION

WORKDIR $WORKDIR

RUN apt-get update && \
    apt-get install \
        make \
        gcc \
        g++

COPY ./src/Gemfile* ./
RUN bundle install
COPY ./src ./

ENV VERSION $VERSION
EXPOSE 80

