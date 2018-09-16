import urllib.request
import bs4


url = 'http://www.nikkei.com/markets/kabu/'
response = urllib.request.urlopen(url)
html = response.read()

soup = bs4.BeautifulSoup(html, 'html.parser')
span = soup.find_all('span')

nikkei_heikin = ""

for tag in span:
    try:
        string_ = tag.get("class").pop(0)
        if string_ in "mkc-stock_prices":
            nikkei_heikin = tag.string
            break
    except:
        pass
print(nikkei_heikin)
