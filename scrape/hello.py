from bs4 import BeautifulSoup
import requests

html_text = requests.get('https://beautiful-soup-4.readthedocs.io/en/latest/').text

soup = BeautifulSoup(html_text, 'lxml')

print(soup.title.text)

sections = soup.find_all('div', class_='section')

for section in sections:
    print("---------------------------")
    print(section)
    print("---------------------------")
