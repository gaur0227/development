echo off
rem "アップフォルダに移動"
echo on

setlocal
set /a num1=%date:~2,2%%date:~5,2%%date:~8,2%
set dire1=%num1%_upFiles
set dire2=%num1%_upFiles\campaign\img
set dire3=%num1%_upFiles\lib\img\slide
set dire4=%num1%_upFiles\coupon\img
set dire5=%num1%_upFiles\menu\pdf
set dire6=_bak

move *.pdf %dire6%
move *.jpg %dire6%

copy _bak\img_cp*jpg %dire2%
copy _bak\banner_cp*.jpg %dire2%
copy _bak\banner_cp*.jpg %dire3%
copy _bak\banner_cp*_m.jpg %dire3%
copy _bak\img_coupon.jpg %dire4%
copy _bak\img_coupon.pdf %dire4%
copy _bak\calorie_allergen.pdf %dire5%
copy _bak\origin.pdf %dire5%
endlocal
