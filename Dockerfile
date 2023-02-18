FROM ruby:3.2.1-alpine3.17

ARG WORKDIR
ARG VERSION

WORKDIR $WORKDIR
ENV VERSION $VERSION

RUN apk add --no-cache \
        make \
        gcc \
        g++

COPY ./src/Gemfile* ./
RUN bundle install
COPY ./src ./

CMD jekyll serve \
        --disable-disk-cache \
        --trace \
        --incremental \
        --watch \
        --unpublished \
        --future \
        --port 80 \
        --host 0.0.0.0 \
        --config ./_config.yml \
        --source ./ \
        --destination ./_site

EXPOSE 80
