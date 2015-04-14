#!/bin/bash
apt-get update &&
apt-get -y --force-yes dist-upgrade &&
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 &&
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub |  apt-key add - &&
add-apt-repository -y "deb http://archive.canonical.com/ $(lsb_release -sc) partner" &&
add-apt-repository -y ppa:webupd8team/sublime-text-3 &&
add-apt-repository -y ppa:ubuntu-x-swat/x-updates &&
add-apt-repository -y ppa:freyja-dev/unity-tweak-tool-daily &&
add-apt-repository -y ppa:tualatrix/ppa &&
sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list' &&
apt-get -y update &&
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com `apt-get update 2>&1 | grep -o '[0-9A-Z]\{16\}$' | xargs` &&
PACKAGES="git zsh bcmwl-kernel-source google-chrome-stable skype sublime-text-installer curl libcurl3 libcurl3-dev php5-curl nodejs npm linux-source unity-tweak-tool gnome-system-tools ubuntu-tweak gawk libreadline6-dev libyaml-dev libsqlite3-dev sqlite3 autoconf libgdbm-dev libncurses5-dev automake libtool bison libffi-dev bundler postgresql libpq-dev" &&
apt-get -y --force-yes install $PACKAGES &&
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
chsh -s /bin/zsh &&
reboot

