#!/usr/bin/env bash

echo "Enter your name for git commits."
read real_name
echo "Enter your email for git commits."
read email 

sudo apt-get -y update
sudo apt-get -y install build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev git-core
cd /tmp
wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p125.tar.gz
tar -xvzf ruby-1.9.3-p125.tar.gz
cd ruby-1.9.3-p125/
./configure --prefix=/usr/local
make
make install
gem install chef ruby-shadow --no-ri --no-rdoc

#GIT CONFIG
git config --global user.name $real_name
git config --global user.email $email
git config --global color.ui true
