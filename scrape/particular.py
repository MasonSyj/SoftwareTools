from bs4 import BeautifulSoup
import requests

html_text = requests.get('http://masonbristol.me/cattax/index.html').text

soup = BeautifulSoup(html_text, 'lxml')

container1 = soup.find_all('div', class_='container', not_= {'class':'exclude'})

def particular(tag):
    return tag.name == 'div' and 'container' in tag.get('class', []) and 'exclude' not in tag.get('class', [])

container2 = soup.find_all(particular)

for container in container1:
    print(container)
    print("----------------------------")
    print(container.text)

print("######################################")

for container in container2:
    print(container)
    print("----------------------------")
    print(container.text)

container3 = soup.select('div.container:not(.exclude)')

print("######################################")

for container in container3:
    print(container)
    print("----------------------------")
    print(container.text)


