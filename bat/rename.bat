@echo off
rem 'UNICODE:Shift-JIS---sincd.20170622-fujito'

setlocal
set /p nam1="���l1����͂��Ă�������"
set /p nam2="���l2����͂��Ă�������"


echo "�������烊�l�[��"

ren img[1].jpg calendar_%nam1%l.jpg
ren img[2].jpg calendar_%nam1%m.jpg
ren img[3].jpg calendar_%nam1%s.jpg
ren img[4].jpg %nam2%.jpg
ren img[5].jpg sum_%nam1%.jpg
ren img[6].png side_gallery.png
ren img[7].png gallery.png



echo "��������o�b�N�A�b�v�̍쐬"
mkdir _bak
copy *.jpg _bak\*.jpg
copy *.png _bak\*.png


echo "��������A�b�v�p�f�B���N�g���̍쐬"
mkdir up-Dilectory\servername1\dl\gallery\dl\img\dl_img
mkdir up-Dilectory\servername1\dl\gallery\img
mkdir up-Dilectory\servername1\lib\common_vYEAR\img\banner
mkdir up-Dilectory\servername1\lib\common_vYEAR\img\slider
mkdir up-Dilectory\servername2\lib\common_vYEAR\img\slider


echo "��������ړ�����"

move calendar_%nam1%l.jpg up-Dilectory\servername1\dl\gallery\dl\img\dl_img
move calendar_%nam1%m.jpg up-Dilectory\servername1\dl\gallery\dl\img\dl_img
move calendar_%nam1%s.jpg up-Dilectory\servername1\dl\gallery\dl\img\dl_img
move %nam2%.jpg  up-Dilectory\servername1\dl\gallery\dl\img
move sum_%nam1%.jpg up-Dilectory\servername1\dl\gallery\img
move side_gallery.png up-Dilectory\servername1\lib\common_vYEAR\img\banner
copy gallery.png up-Dilectory\servername1\lib\common_vYEAR\img\slider
move gallery.png up-Dilectory\servername2\lib\common_vYEAR\img\slider

endlocal

echo "index.html���Y�ꂸ�ɕҏW���܂��傤"
echo "servername.xml���Y�ꂸ�ɕҏW���܂��傤"
