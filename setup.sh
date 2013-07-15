#!/usr/bin/env bash

sudo apt-get -y update
sudo apt-get -y install build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev git-core
cd /tmp
wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p125.tar.gz
tar -xvzf ruby-1.9.3-p125.tar.gz
cd ruby-1.9.3-p125/
./configure --prefix=/usr/local
make
make install
sudo gem install chef ruby-shadow --no-ri --no-rdoc
