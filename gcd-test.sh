#!/bin/bash

set -e

#STEP 1 正常系 数字入力
#引数1=2、引数2=4
#想定出力:2
./same.sh 2 4
if [ $? -ne 0 ];then
    echo "期待値エラー　スクリプトの確認をしてください"  
else
    echo "STEP1　成功"	
fi
    echo "\n"


#STEP 1 正常系 数字入力
#引数1=20、引数2=400
#想定出力:
./same.sh 20 400
if [ $? -ne 0 ];then
    echo "期待値エラー　スクリプトの確認をしてください"
else
    echo "STEP1　成功"
fi	
    echo "\n"

#STEP 2　入力個数異常
#引数1=0、引数2=22
#想定出力:エラー出力
./same.sh 3
if [ $? -ne 0 ];then
   echo "期待値エラー　スクリプトの確認をしてください"  
else
   echo "STEP1 成功(引数エラーとなる事が成功)"	
fi
   echo "\n"


#STEP 3 入力文字異常
#引数1=2、引数2=A
#想定出力:エラー出力
./same.sh 2 A 
if [ $? -ne 0 ];then
   echo "期待値エラー　スクリプトの確認をしてください"
else
   echo "STEP1 成功"
fi
   echo "\n"

