@echo off
rem 'UNICODE:Shift-JIS---sincd.20170622-fujito'
setlocal
rem /p nam1="数値1を入力してください."
rem /p nam2="数値2を入力してください."


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


echo "ここからリネーム"

ren img[1].jpg %img[1]%
ren img[2].jpg %img[2]%
ren img[3].jpg %img[3]%
ren img[4].jpg %img[4]%
ren img[5].jpg %img[5]%
ren img[6].png %img[6]%
ren img[7].png %img[7]%



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


echo "ここから移動処理"

move %img[1]% %root[1]%
move %img[2]% %root[1]%
move %img[3]% %root[1]%
move %img[4]% up-Dilectory\servername1\dl\gallery\dl\img
move %img[5]% %root[2]%
move %img[6]% %root[3]%
copy %img[7]% %root[4]%
move %img[7]% %root[5]%

endlocal

echo "index.htmlも忘れずに編集しましょう"
echo "servername.xmlも忘れずに編集しましょう"
