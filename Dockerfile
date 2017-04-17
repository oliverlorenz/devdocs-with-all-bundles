FROM ruby:2.4.1-slim
MAINTAINER Oliver Lorenz "mail@oliverlorenz.com"

ENV DEBIAN_FRONTEND noninteractive
WORKDIR /app
RUN apt-key adv --recv-keys --keyserver keyserver.ubuntu.com C3173AA6 && \
    echo deb http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu trusty main > /etc/apt/sources.list.d/ruby.list && \
    apt-get update && \
  	apt-get install -y nodejs make libcurl3 git build-essential zlib1g-dev && \
    gem install bundler && \
    git clone https://github.com/Thibaut/devdocs.git /app && \
    bundle install --system && \
    apt-get autoremove -y && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/*
RUN thor docs:download --all
EXPOSE 9292
CMD rackup -o 0.0.0.0
