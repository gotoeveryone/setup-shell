#!/bin/bash

echo "##### rbenvインストール：開始 #####"

# Git clone
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# ~/.bash_profile 設定追加
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

# ~/.bash_profile 再読み込み
source ~/.bash_profile

# バージョン確認
rbenv --version

# ヘルプ出力
cat << EOF
  インストール可能なバージョン一覧を表示します。
    rbenv install -l
  インストールを行います。
    rbenv install <target_version>
EOF

echo "##### rbenvインストール：終了 #####"

exit
