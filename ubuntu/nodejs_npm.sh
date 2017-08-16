#!/bin/bash

echo "##### NodeJS・npmインストール #####"

# nvm の取得
git clone git://github.com/creationix/nvm.git ~/.nvm
chmod +x ~/.nvm/nvm.sh

# bash_profileに実行パスを追加
cat << EOF >> ~/.bash_profile
if [[ -s ~/.nvm/nvm.sh ]] ; then
    source ~/.nvm/nvm.sh
fi
EOF
source ~/.bash_profile

# インストール可能なバージョンを確認
nvm ls-remote

# 適宜最新バージョンに変更
TARGET=v8.4.0
nvm install ${TARGET}

# インストールしたNodeJS・npmのバージョン確認
node -v
npm -v

exit
