FROM ruby:2.3-alpine


RUN gem install git-pr-release

RUN apk --no-cache add git

ADD run /bin/run
WORKDIR /workspace

ENTRYPOINT ["run"]

