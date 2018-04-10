import urllib.request, urllib.error
import lxml.html


# 置換対象のhtmlリストを取得
inpurl = 'test.html'

# htmlを読み込む
htmll = open(inpurl).read()

print(htmll)

# 検索用配列を作成
# 置き換え用配列を作成

# 置換ループ
ogp = htmll.replace('LL_キーワード','こっち')
print(ogp)
htmll.write('test')
htmll.close()
