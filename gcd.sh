#!/bin/bash

#文字数チェック
if [ $# -ne 2 ];
then
     echo "引数エラー:引数は２つの自然数を入力してください"
     exit
fi

#数字だけの文字列にマッチする場合
if echo "$1" | grep -q "^[0-9]\+$";
then
     echo "1つめの入力値は:$1"
else
     echo "1つ目の入力値は0以上の自然数を入力してください"
     exit 
fi

if echo "$2" | grep -q "^[0-9]\+$";
then
    echo "2つめの入力値は:$2"
else
     echo "2つ目の入力値は0以上の自然数を入力してくだざい。"
     exit 
  fi



vara=$1
varb=$2

gcd(){
      while [ $vara -ne $varb  ]
      do
      if [ $vara -gt $varb  ];then
         vara=$(( vara-varb ))

      else
         varb=$(( varb-vara ))
      fi
      done
      echo "最大公約数は :$vara"
  }

gcd $1 $2

