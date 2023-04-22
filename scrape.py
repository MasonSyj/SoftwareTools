from bs4 import BeautifulSoup
import os


mdict = {}

for file in os.listdir('cattax'):
  if file[-4:] == 'html':
    soup = BeautifulSoup(open('cattax/'+file,'r'), features='html.parser')
    container = soup.find('div', class_='container')
    if container:
      title = soup.title.text
      print(title)
      head = soup.title.text + " : " + soup.h1.text
      info = soup.find('p', class_='info').text
      mdict[title] = info
      # print(soup.title.text + " : " + soup.h1.text)
      # print(soup.find('p', class_='info').text)
      # in interact mode it will be, mdict.get('flowerName')

   
