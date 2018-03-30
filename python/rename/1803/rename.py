import datetime
import math
import os
import shutil


y = str(datetime.date.today().year)
yy = y[2:4] #18
mm = datetime.date.today().month + 1
flg = int(math.log10(mm)+1)
if flg == 1:
    mm = "0" + str(mm)
elif flg == 2:
    if mm == 13:
        mm = "01"
        y = str(int(y)+1)#2019
        yy = str(int(yy)+1)#19
    else:
        mm = str(mm)

yyyymm = y + mm

def calendarImg(size):
    name = "calendar_" + str(yy) + "_" + mm + str(size) + ".jpg"
    return name


name_ = [""]*7
name_[0] = calendarImg("l")
name_[1] = calendarImg("m")
name_[2] = calendarImg("s")
name_[3] = yyyymm + ".jpg"
name_[4] = "sum_" + yy + "_" + mm + ".jpg"
name_[5] = "side_gallery" + ".png"
name_[6] = "gallery" + ".png"

img_ = [""]*7
img_[0] = "①1980pxのカレンダー画像.jpg"
img_[1] = "②1280pxのカレンダー画像.jpg"
img_[2] = "③1024pxのカレンダー画像.jpg"
img_[3] = "④サムネイル画像大.jpg"
img_[4] = "⑤サムネイル画像小.jpg"
img_[5] = "⑥サイドバナー.png"
img_[6] = "⑦ローテーションバナー.png"

root_ = [""]*9
root_[0] = "up-Dilectory/hogehoge-secure/dl/gallery/dl/img/dl_img/"
root_[1] = root_[0]
root_[2] = root_[0]
root_[3] = "up-Dilectory/hogehoge-secure/dl/gallery/dl/img/"
root_[4] = "up-Dilectory/hogehoge-secure/dl/gallery/img/"
root_[5] = "up-Dilectory/hogehoge-secure/lib/common_v2015/img/banner/"
root_[6] = "up-Dilectory/hogehoge-solution2/lib/common_v2015/img/slider/"
root_[7] = "up-Dilectory/hogehoge-solution2/lib/common_v2015/img/banner/"


#rename
# 7回リネームを繰り返す
# "img_${num}"を"name_${num}"にリネーム

# roots
os.mkdir("_bak")
os.makedirs(root_[0])
os.makedirs(root_[4])
os.makedirs(root_[5])
os.makedirs("up-Dilectory/hogehoge-secure/lib/common_v2015/img/slider")
os.makedirs(root_[6])
os.makedirs(root_[7])

i=0
for i in range(7):
    os.rename(img_[i],name_[i])
    shutil.copyfile(name_[i] ,str(root_[i]+name_[i]))
    shutil.move(name_[i], "_bak")
else:
    shutil.copyfile(str("_bak/"+name_[5]) ,str(root_[7]+name_[5]))
