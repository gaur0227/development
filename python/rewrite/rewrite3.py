# coding: UTF-8
import sys
import os
import re
#文字コード指定に必要
import codecs


#置換文字列を指定
name_old='.html' #この文字を含むファイルを操作＋ファイル名の置換元文字列
name_new='test/test.html' #ファイル名の置換後文字列


# ここからループ開始　for
txt_old='配列1' #ファイル内の置換元 文字列
txt_new='配列2' #ファイル内の置換後文字列

files = os.listdir()
for file in files:
    #まず.txtを含むファイルのみ読込
    txt = re.compile("old/tokyo/*.html")
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
