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

def calendarImg(size):
    name = "calendar_" + str(yy) + "_" + mm + str(size) + ".jpg"
    return name


name_ = [""]*7
name_[0] = calendarImg("l")
name_[1] = calendarImg("m")
name_[2] = calendarImg("s")
name_[3] = y + mm + ".jpg"
name_[4] = "sum_" + yy + "_" + mm + ".jpg"
name_[5] = "side_gallery" + ".png"
name_[6] = "gallery" + ".png"

root_ = [""]*8
root_[0] = "hogehoge/dl/gallery/dl/img/dl_img/"
root_[1] = root_[0]
root_[2] = root_[0]
root_[3] = "hogehoge/dl/gallery/dl/img/"
root_[4] = "hogehoge/dl/gallery/img/"
root_[5] = "hogehoge/lib/common_v2015/img/banner/"
root_[6] = "hoge/html/lib/common_v2015/img/slider/"
root_[7] = "hoge/html/lib/common_v2015/img/banner/"


#move or copy
# 7回移動処理を繰り返す

i=0
for i in range(7):
    shutil.copyfile("_bak/"+name_[i] ,str(root_[i]+name_[i]))
else:
    shutil.copyfile(str("_bak/"+name_[5]) ,str(root_[7]+name_[5]))
