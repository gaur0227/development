import urllib.request, urllib.error

import lxml.html

print('URLを入力して下さい。> \n')
inpurl = input()

print('Is this URL http ? yes => y Enter')
quis = input()

if quis == 'y':
    html = urllib.request.urlopen(inpurl).read()
else:
    html = open(inpurl).read()

#
# anchors = html.xpath('//a')
# for anchor in anchors:
#     print(ancor.text)

from lxml import etree
root = etree.fromstring(html, etree.HTMLParser())


# htmlを読み込む
# 検索用配列を作成
# 置き換え用配列を作成
print(root)
print('取得するタグを入力して下さい。\n(a,p,h1,etc...)> ')
tag = '//' + input()

print('A------output------A','\n')

anchors = root.xpath(tag)
i = 0
listes = []
for anchor in anchors:
    i += 1
    test = 'This is Comments'
    tag.xpath(tag+'@[href="."]')

    print ('--',i ,'\n')
    print (anchor.text)
    print (anchor.attrib,'\n')


print('\n','Z------output------Z')

print(listes)
