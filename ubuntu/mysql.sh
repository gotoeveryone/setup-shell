#!/bin/bash

echo "##### MySQLインストール：開始 #####"

# パッケージのインストール
sudo apt-get -y install mysql-server libmysqlclient-dev

# バージョン確認
mysql --version

# 設定ファイルの変更について
cat << EOF
以下コマンドで設定ファイルを開き、必要な項目を編集します。
  sudo vim /etc/mysql/mysql.conf.d/mysqld.cnf

------------------------------
#
# * Character Settings
#
#default-character-set=utf8 # あればコメントアウト
character-set-server=utf8
------------------------------

設定変更後、MySQLを再起動します。
  sudo service mysql restart

EOF

# タイムゾーンデータを登録
cat << EOF
mysqlスキーマを操作可能なユーザで以下を実行してください。
  /usr/bin/mysql_tzinfo_to_sql /usr/share/zoneinfo/ | mysql -u <mysql_user> -p mysql
EOF

echo "##### MySQLインストール：終了 #####"

exit
