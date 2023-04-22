from bs4 import BeautifulSoup
import requests

html_text = requests.get('http://masonbristol.me/cattax/index.html').text

soup = BeautifulSoup(html_text, 'lxml')

print(soup.title.text)
print("-----------------------------")
info = soup.find('p', class_='info')

print("-----------------------------")
print(info)

strongElements = info.find_all('strong')

for element in strongElements:
    print(element.text)
    print("-----------------------------")


