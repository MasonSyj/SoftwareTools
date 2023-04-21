from bs4 import BeautifulSoup

file = "index.html"
soup = BeautifulSoup(open(file, 'r'))

text = soup.get_text()
print(text)
print("--------------------Separate Line----------------")
print(soup.title.text)
