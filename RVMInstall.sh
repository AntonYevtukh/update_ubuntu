#! /bin/bash
chmod -R 777 $HOME/.zshrc &&
echo 'export PATH=$PATH:$HOME/.rvm/bin' &&
gedit $HOME/.zshrc &&
\curl -sSL https://get.rvm.io | bash &&
$HOME/update_ubuntu/RubyInstall.sh
