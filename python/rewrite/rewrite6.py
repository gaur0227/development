# list
import sys
import os
import re
#文字コード指定に必要
import codecs

# listimport csv
import csv
with open('tokyolist.csv') as fp:
    lst = list(csv.reader(fp))

lst[0][0] = 'adachiku.html'
llst = [0,'LL_タイトル','LL_ディスクリ','LL_キーワード','LL_地域']


#置換文字列を指定
name_old='test/'+lst[0][0] #この文字を含むファイルを操作＋ファイル名の置換元文字列
name_new='new/'+lst[0][0] #ファイル名の置換後文字列

g=0
for g in range(4):
    g += 1
    txt_old=llst[g] #ファイル内の置換元 文字列
    txt_new=lst[0][g] #ファイル内の置換後文字列
    #パス指定小楽でスクリプト配置フォルダのファイル一覧取得
    files = os.listdir()
    for file in files:
        #まず.txtを含むファイルのみ読込
        txt = re.compile('.html')
        if txt.search(file):
            # ファイル名の置換前後の文字列を指定
            file_new = file.replace(name_old,name_new)
            read_file = codecs.open(file, 'r', 'UTF-8')
            write_file = codecs.open(file_new, 'w', 'UTF-8')
            lines = read_file.readlines() #読み込み
            lines2 = []
            for line in lines:
                line = line.replace(txt_old,txt_new) #テキスト置換
                lines2.append(line) #別リストにする
            else:
                write_file.write(''.join(lines2)) #書き込み
                read_file.close()
    #       os.rename(file, file_new)
        else:
            pass
