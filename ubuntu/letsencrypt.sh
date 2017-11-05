#!/bin/bash

# 設定したいドメイン
DOMAIN=${1}

# Let's Encryptの取得
sudo apt-get install letsencrypt

# 証明書発行に80番ポートを利用するためnginxを停止
sudo service nginx stop

# 証明書を取得
sudo letsencrypt certonly --standalone -d ${DOMAIN}

# 使い方
cat << EOF
【使い方】
    /etc/letsencrypt/live/(your domain)/ にファイルができるので、
    それをnginxのconfに設定してください。

【設定例】
    ssl_certificate /etc/letsencrypt/live/${DOMAIN}/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/${DOMAIN}/privkey.pem;

  ※90日で期限切れするので、以下コマンドを実行して更新する必要があります。
    sudo service nginx stop && sudo letsencrypt renew && sudo service nginx start
EOF

# nginx再起動
sudo service nginx start

exit
