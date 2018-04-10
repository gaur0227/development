import urllib.request, urllib.error
import lxml.html

def rewrite(name,target,words):
    # 読み込み
    inpurl = 'test/'+name
    htmll = open(inpurl).read()

    # 置換
    dst = htmll.replace(target, words)

    # 保存
    file = open(inpurl, 'w')  #書き込みモードでオープン
    file.write(dst)


# -----リストの読み込み-----
import sys
import os
import re
#文字コード指定に必要
import codecs

# listimport csv
import csv
with open('otherlist2.csv') as fp:
    lst = list(csv.reader(fp))

print(lst[0][0])
lst[0][0] = 'gifu.html' #初発リストの修正
llst = [0,'LL_タイトル','LL_ディスクリ','LL_キーワード','LL_地域','LL_マップ','LL_TEL','LL_リンク番号','LL_住所A','LL_住所B','LL_最寄り']

# ここからループ処理
for i in range(len(lst)):
    name = lst[i][0]
    for ii in range(len(llst)-1):
        ii += 1
        target = llst[ii]
        word = lst[i][ii]
        rewrite(name,target,word)
    i += 1
