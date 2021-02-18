FROM ubuntu:18.04

ENV PORT=4001
ENV HOST="0.0.0.0"

RUN apt update
RUN apt install -y ruby-full build-essential zlib1g-dev

RUN gem install jekyll bundler github-pages

COPY . /blog

EXPOSE $PORT

CMD cd blog && bundle exec jekyll serve --port $PORT --host $HOST
