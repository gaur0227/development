echo off
rem "���O�̕ύX����/�o�b�N�t�@�C���ړ�"
echo on

setlocal
set /p nam2= "���l����͂�������([cp�ԍ�])"

ren *_*_KV.jpg img_cp%nam2%.jpg
ren *_*_WEB_PC.jpg banner_cp%nam2%.jpg
ren *_*_WEB_SmartPhone.jpg banner_cp%nam2%_m.jpg

ren *_KV.jpg img_cp%nam2%.jpg
ren *_WEB_PC.jpg banner_cp%nam2%.jpg
ren *_WEB_SmartPhone.jpg banner_cp%nam2%_m.jpg

ren �ŐV*�J����*.pdf calorie_allergen.pdf
ren �ŐV*��v�������Y�����*.pdf origin.pdf

copy *.jpg ..\_bak\*.jpg
copy *.pdf ..\_bak\*.pdf

endlocal
