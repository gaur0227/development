echo off
rem "名前の変更処理/バックファイル移動"
echo on

setlocal
set /p nam2= "数値を入力ください([cp番号])"

ren *_*_KV.jpg img_cp%nam2%.jpg
ren *_*_WEB_PC.jpg banner_cp%nam2%.jpg
ren *_*_WEB_SmartPhone.jpg banner_cp%nam2%_m.jpg

ren *_KV.jpg img_cp%nam2%.jpg
ren *_WEB_PC.jpg banner_cp%nam2%.jpg
ren *_WEB_SmartPhone.jpg banner_cp%nam2%_m.jpg

ren 最新*カロリ*.pdf calorie_allergen.pdf
ren 最新*主要原料原産国情報*.pdf origin.pdf

copy *.jpg ..\_bak\*.jpg
copy *.pdf ..\_bak\*.pdf

endlocal
