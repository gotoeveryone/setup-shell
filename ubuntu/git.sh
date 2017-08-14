#!/bin/bash

echo "##### Gitインストール：開始 #####"

# apt-getの管理対象が最新バージョンかを確認
sudo apt-cache policy git

# 最新版を取得できるようリポジトリを追加
sudo apt-get -y install python-software-properties
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt-get update

# Gitをインストール
sudo apt-get -y install git

# バージョン確認
git --version

# ヘルプ出力
cat << EOF
  以下のようにすることで、必要なファイルをリポジトリから取得します。
    git clone <repository> <target_path>
  ベアリポジトリとして取得する場合、以下のようにします。
    git clone --bare <repository> <target_path>
EOF

echo "##### Gitインストール：終了 #####"

exit
