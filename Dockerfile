FROM ruby:3.3.4-slim-bookworm

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        git \
        default-libmysqlclient-dev \
        default-mysql-client && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY Gemfile Gemfile.lock /app/

RUN bundle install

EXPOSE 3000

CMD [ "bash" ]
