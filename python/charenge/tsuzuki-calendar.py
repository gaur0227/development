import os
import datetime

#ファイル名の変更
# os.rename("./test1.txt", "./test2.txt")

d = [
    '①1980pxのカレンダー画像.jpg',
    '②1280pxのカレンダー画像.jpg',
    '③1024pxのカレンダー画像.jpg',
    '④サムネイル画像大.jpg',
    '⑤サムネイル画像小.jpg',
    '⑥サイドバナー.png',
    '⑦ローテーションバナー.png'
]
for item in d:
    print(item)


# 日付取得
now = datetime.datetime.now()
time-y_m = "{0:%Y%m}".format(now)
print(time-y_m)



e = [
]

# calendar_17_11l.jpg
# calendar_17_11m.jpg
# calendar_17_11s.jpg
# 201711.jpg
# sum_17_11.jpg
# side_gallery.png
# gallery.png


# set img[1]=calendar_%num:~,2%_%num:~2,2%l.jpg
# set img[2]=calendar_%num:~,2%_%num:~2,2%m.jpg
# set img[3]=calendar_%num:~,2%_%num:~2,2%s.jpg
# set img[4]=20%num:~,2%%num:~2,2%.jpg
# set img[5]=sum_%num:~,2%_%num:~2,2%.jpg
# set img[6]=side_gallery.png
# set img[7]=gallery.png


# set root[1]=up-Dilectory\tsuzuki-secure\dl\gallery\dl\img\dl_img
# set root[2]=up-Dilectory\tsuzuki-secure\dl\gallery\img
# set root[3]=up-Dilectory\tsuzuki-secure\lib\common_v2015\img\banner
# set root[4]=up-Dilectory\tsuzuki-secure\lib\common_v2015\img\slider
# set root[5]=up-Dilectory\tsuzuki-solution2\lib\common_v2015\img\slider
# set root[6]=up-Dilectory\tsuzuki-solution2\lib\common_v2015\img\banner


#アップ用フォルダの作成
#バックアップファイルの作成

#ファイル移動
