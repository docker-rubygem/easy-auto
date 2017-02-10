FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.2

RUN gem install easy-auto --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["create-branch"]
CMD ["--help"]
