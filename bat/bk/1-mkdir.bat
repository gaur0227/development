echo off
rem "フォルダの作成"
echo on

setlocal

set /a num1=%date:~2,2%%date:~5,2%%date:~8,2%
mkdir %num1%_upFiles
mkdir %num1%_upFiles\campaign\img
mkdir %num1%_upFiles\lib\img\slide
mkdir %num1%_upFiles\coupon\img
mkdir %num1%_upFiles\menu\pdf
mkdir _bak


endlocal
