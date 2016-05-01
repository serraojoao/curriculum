from lxml import html
import requests
#

# page = requests.get('http://econpy.pythonanywhere.com/ex/001.html')
# tree = html.fromstring(page.content)
#
# #This will create a list of buyers:
# buyers = tree.xpath('//div[@title="buyer-name"]/text()')
# #This will create a list of prices
# prices = tree.xpath('//span[@class="item-price"]/text()')
#
# print (buyers)
# print (prices)
# print ("--------------------------")

# headers = {'User-agent' : ('Mozilla/4.0 (compatible; MSIE 6.0; ''Windows NT 5.2; .NET CLR 1.1.4322)')}
# cookies = dict(cookies_are='working')
#
# r = requests.get('https://pt.linkedin.com/in/joão-serrão-3b067630', headers=headers, cookies=cookies)
# #r = requests.get('https://pt.linkedin.com/in/joão-serrão-3b067630')
# l = html.fromstring(r.content)
# experience = l.xpath('//*[@id="name"]/h1/span/span/text()')
# print (experience)


r = requests.get('http://www.inc.com/inc5000/list/2015/')

l = html.fromstring(r.content)
experience = l.xpath('//*[@id="contentcontainer"]/section/div[2]/div/div/div[2]/h1/div/text()')
print (experience)

experience1 = l.xpath('//*[@id="list_headers"]/div[2]/text()')
print (experience1)

experience2 = l.xpath('//*[@id="right"]/table/tbody/tr[1]/td[2]/a/href/@href')
print (experience2)

experience3 = l.xpath('//*[@id="right"]/table/tbody/tr[1]/td[3]/text()')
print (experience3)
