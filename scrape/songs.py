from bs4 import BeautifulSoup
import requests

html_text = requests.get('https://music.163.com/#/user/songs/rank?id=302036076').text

soup = BeautifulSoup(html_text, 'lxml')

print(html_text)

songs = soup.find_all('b')

for song in songs:
    print(song.text)


