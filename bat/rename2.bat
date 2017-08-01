@echo off
rem '文字コード:shift-jis---sincd.20170622-kawase'

setlocal

set /a num=%date:~2,2%%date:~5,2%
set /a num+=1


rem 'ここからイメージファイルの変数定義'
set img[1]=calendar_%num:~,2%_%num:~2,2%l.jpg
set img[2]=calendar_%num:~,2%_%num:~2,2%m.jpg
set img[3]=calendar_%num:~,2%_%num:~2,2%s.jpg
set img[4]=20%num:~,2%%num:~2,2%.jpg
set img[5]=sum_%num:~,2%_%num:~2,2%.jpg
set img[6]=side_gallery.png
set img[7]=gallery.png


rem 'ここからルートの変数定義'
set root[1]=up-Dilectory\tsuzuki-secure\dl\gallery\dl\img\dl_img
set root[2]=up-Dilectory\tsuzuki-secure\dl\gallery\img
set root[3]=up-Dilectory\tsuzuki-secure\lib\common_v2015\img\banner
set root[4]=up-Dilectory\tsuzuki-secure\lib\common_v2015\img\slider
set root[5]=up-Dilectory\tsuzuki-solution2\lib\common_v2015\img\slider
set root[6]=up-Dilectory\tsuzuki-solution2\lib\common_v2015\img\banner



echo 'ここからリネーム---sincd.20170622-kawase'

ren ①1980pxのカレンタ?ー画像01-02(m).jpg %img[1]%
ren ②1280pxのカレンタ?ー画像.jpg %img[2]%
ren ③1024pxのカレンタ?ー画像.jpg %img[3]%
ren ④サムネイル画像大.jpg %img[4]%
ren ⑤サムネイル画像小.jpg %img[5]%
ren ⑥サイト?ハ?ナー.png %img[6]%
ren ⑦ローテーションハ?ナー.png %img[7]%


echo "ここからバックアップの作成"
mkdir _bak
copy *.jpg _bak\*.jpg
copy *.png _bak\*.png


echo "ここからアップ用ディレクトリの作成"
mkdir %root[1]%
mkdir %root[2]%
mkdir %root[3]%
mkdir %root[4]%
mkdir %root[5]%
mkdir %root[6]%

echo "ここから移動処理"
move %img[1]% %root[1]%
move %img[2]% %root[1]%
move %img[3]% %root[1]%
move %img[4]% up-Dilectory\tsuzuki-secure\dl\gallery\dl\img
move %img[5]% %root[2]%
move %img[6]% %root[3]%
copy %img[7]% %root[4]%
move %img[7]% %root[5]%
move %img[6]% %root[6]%


endlocal

echo "index.htmlも忘れずに編集しましょう"
echo "tsuzuki.xmlも忘れずに編集しましょう"

echo "\tsuzuki_v2015\secure\dl\gallery"
banner side_gallery
