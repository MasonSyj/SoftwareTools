from bs4 import BeautifulSoup
import os


cattaxDict = {}

for file in os.listdir('cattax'):
  if file[-4:] == 'html':
    soup = BeautifulSoup(open('cattax/'+file,'r'), features='html.parser')
    container = soup.find('div', class_='container')
    if container:
      head = soup.title.text + " : " + soup.h1.text
      info = soup.find('p', class_='info').text
      cattaxDict[head] = info
      # print(soup.title.text + " : " + soup.h1.text)
      # print(soup.find('p', class_='info').text)

   
