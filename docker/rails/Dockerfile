# rubyのバージョンを指定
FROM ruby:2.6.3

# パッケージの取得
RUN apt-get update -qq && \
    apt-get install -y apt-utils \
                       build-essential \
                       libpq-dev \
                       nodejs \
                       default-mysql-client

# Dockerコンテナにファイル作成&コピー
RUN mkdir /app
WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install -j4
ADD . /app

# コンテナの実行
EXPOSE 3000