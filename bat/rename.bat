@echo off
rem 'UNICODE:Shift-JIS---sincd.20170622-fujito'

setlocal
set /p nam1="数値1を入力してください"
set /p nam2="数値2を入力してください"


echo "ここからリネーム"

ren img[1].jpg calendar_%nam1%l.jpg
ren img[2].jpg calendar_%nam1%m.jpg
ren img[3].jpg calendar_%nam1%s.jpg
ren img[4].jpg %nam2%.jpg
ren img[5].jpg sum_%nam1%.jpg
ren img[6].png side_gallery.png
ren img[7].png gallery.png



echo "ここからバックアップの作成"
mkdir _bak
copy *.jpg _bak\*.jpg
copy *.png _bak\*.png


echo "ここからアップ用ディレクトリの作成"
mkdir up-Dilectory\servername1\dl\gallery\dl\img\dl_img
mkdir up-Dilectory\servername1\dl\gallery\img
mkdir up-Dilectory\servername1\lib\common_vYEAR\img\banner
mkdir up-Dilectory\servername1\lib\common_vYEAR\img\slider
mkdir up-Dilectory\servername2\lib\common_vYEAR\img\slider


echo "ここから移動処理"

move calendar_%nam1%l.jpg up-Dilectory\servername1\dl\gallery\dl\img\dl_img
move calendar_%nam1%m.jpg up-Dilectory\servername1\dl\gallery\dl\img\dl_img
move calendar_%nam1%s.jpg up-Dilectory\servername1\dl\gallery\dl\img\dl_img
move %nam2%.jpg  up-Dilectory\servername1\dl\gallery\dl\img
move sum_%nam1%.jpg up-Dilectory\servername1\dl\gallery\img
move side_gallery.png up-Dilectory\servername1\lib\common_vYEAR\img\banner
copy gallery.png up-Dilectory\servername1\lib\common_vYEAR\img\slider
move gallery.png up-Dilectory\servername2\lib\common_vYEAR\img\slider

endlocal

echo "index.htmlも忘れずに編集しましょう"
echo "servername.xmlも忘れずに編集しましょう"
