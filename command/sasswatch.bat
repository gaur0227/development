cd ../
echo off
echo SASSのウォッチングを初めます。
dir scss
dir css
set /p filename="ファイル名を指定してください。(拡張子は省略) > "
sass --watch --style expanded scss/%filename%.scss:css/%filename%.css
