#! /bin/bash
echo 'rvm group add rvm "$USER"'
echo 'rvm fix-permissions'
echo ' '
echo 'rvm group add rvm "$USER" && rvm install ruby-2.1.5 && rvm use ruby-2.1.5@rails_4.2 --create --default && gem install bundler'
