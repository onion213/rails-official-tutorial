FROM ruby:2.5
RUN apt-get update &&  apt-get install -y \
	sqlite3 \
	nodejs \
	curl \
	apt-transport-https \
	wget && \
	curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
	echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
	apt-get update && apt-get install -y yarn
WORKDIR /web
RUN gem install rails
