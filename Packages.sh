#!/bin/bash
PACKAGES="git zsh bcmwl-kernel-source google-chrome-stable skype sublime-text-installer curl libcurl3 libcurl3-dev php5-curl nodejs npm linux-source nvidia-current unity-tweak-tool gnome-system-tools ubuntu-tweak gawk libreadline6-dev libyaml-dev libsqlite3-dev sqlite3 autoconf libgdbm-dev libncurses5-dev automake libtool bison libffi-dev bundler postgresql libpq-dev" &&
apt-get -y --force-yes install $PACKAGES &&
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

