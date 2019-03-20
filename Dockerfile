FROM ruby:2.6.2-alpine3.9

ARG VCS_REF

LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.vcs-url="https://github.com/jlivermont/raven-base"

EXPOSE 3000

RUN mkdir -p /app
WORKDIR /app
COPY Gemfile Gemfile.lock /app/

# Install dependency packages we need in the final image
RUN apk add --no-cache postgresql-dev sqlite-dev tzdata nodejs

# Create the service user for downstream images
# Temporarily install a build environment for building native gems
RUN apk add --no-cache --virtual .build-deps shadow build-base \
    && useradd -ms /bin/sh ruby \
    && gem install bundler \
    && bundle install \
    && apk del .build-deps

USER service
CMD ["irb"]
