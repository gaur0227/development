@echo off
rem '�����R�[�h:shift-jis---sincd.20170622-kawase'

setlocal

set /a num=%date:~2,2%%date:~5,2%
set /a num+=1


rem '��������C���[�W�t�@�C���̕ϐ���`'
set img[1]=calendar_%num:~,2%_%num:~2,2%l.jpg
set img[2]=calendar_%num:~,2%_%num:~2,2%m.jpg
set img[3]=calendar_%num:~,2%_%num:~2,2%s.jpg
set img[4]=20%num:~,2%%num:~2,2%.jpg
set img[5]=sum_%num:~,2%_%num:~2,2%.jpg
set img[6]=side_gallery.png
set img[7]=gallery.png


rem '�������烋�[�g�̕ϐ���`'
set root[1]=up-Dilectory\tsuzuki-secure\dl\gallery\dl\img\dl_img
set root[2]=up-Dilectory\tsuzuki-secure\dl\gallery\img
set root[3]=up-Dilectory\tsuzuki-secure\lib\common_v2015\img\banner
set root[4]=up-Dilectory\tsuzuki-secure\lib\common_v2015\img\slider
set root[5]=up-Dilectory\tsuzuki-solution2\lib\common_v2015\img\slider
set root[6]=up-Dilectory\tsuzuki-solution2\lib\common_v2015\img\banner



echo '�������烊�l�[��---sincd.20170622-kawase'

ren �@1980px�̃J�����^?�[�摜01-02(m).jpg %img[1]%
ren �A1280px�̃J�����^?�[�摜.jpg %img[2]%
ren �B1024px�̃J�����^?�[�摜.jpg %img[3]%
ren �C�T���l�C���摜��.jpg %img[4]%
ren �D�T���l�C���摜��.jpg %img[5]%
ren �E�T�C�g?�n?�i�[.png %img[6]%
ren �F���[�e�[�V�����n?�i�[.png %img[7]%


echo "��������o�b�N�A�b�v�̍쐬"
mkdir _bak
copy *.jpg _bak\*.jpg
copy *.png _bak\*.png


echo "��������A�b�v�p�f�B���N�g���̍쐬"
mkdir %root[1]%
mkdir %root[2]%
mkdir %root[3]%
mkdir %root[4]%
mkdir %root[5]%
mkdir %root[6]%

echo "��������ړ�����"
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

echo "index.html���Y�ꂸ�ɕҏW���܂��傤"
echo "tsuzuki.xml���Y�ꂸ�ɕҏW���܂��傤"

echo "\tsuzuki_v2015\secure\dl\gallery"
banner side_gallery
