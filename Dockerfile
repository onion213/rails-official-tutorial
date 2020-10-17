FROM ruby:2.5
RUN apt-get update
RUN apt-get install -y \
	sqlite3 \
	nodejs \
	yarn
WORKDIR /web
RUN gem install rails
