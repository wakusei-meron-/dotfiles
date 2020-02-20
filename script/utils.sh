#!/bin/bash
#
# open Browser (Chrome, Firefox or Safari)

openBrowser(){

  # 各アプリケーションのパス
  app="/Applications"
  chrome="${app}/Google Chrome.app"
  firefox="${app}/Firefox.app"
  safari="${app}/Safari.app"

  # 区切り文字を改行に指定
  IFS=$'\n'

  # アプリケーションの探索
  for app in $chrome $firefox $safari; do

    # 存在するアプリケーションで開く
    if [ -e $app ]; then
      open $1 -a $app
      break
    fi
  done
}

auto_ssh() { # $1: login_name, $2: host, $3: password
  echo $1
  expect -c "
  set timeout -1
  spawn ssh -l $1 $2
  expect \"Are you sure you want to continue connecting (yes/no)?\" {
      send \"yes\n\"
      expect \"${1}@${2}'s password:\"
      send \"${3}\n\"
  } \"${1}@${2}'s password:\" {
      send \"${3}\n\"
  } \"Permission denied (publickey,gssapi-keyex,gssapi-with-mic).\" {
      exit
  }
  interact
  "
}

sbt_run() {
  expect -c "
  set timeout -1
  spawn sbt run
  expect \"Enter number:\" { send \"2\n\"}
  interact
  "
}

case "$1" in
  auto_ssh)
    auto_ssh $2 $3 $4
    ;;
  sbt_run)
    sbt_run
    ;;
esac
