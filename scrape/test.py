from bs4 import BeautifulSoup

text='''
<!DOCTYPE html>
 <html>
   <head>
     <meta charset='utf-8' />
     <link rel='stylesheet' href='style.css'/>
     <title>A Title</title>
   </head>
   <body>
     <header>
       <h1>A Title</h1>
     </header>
     <main>
       <p class='info'>
            This page links to some other pages.
       </p>
       <div class='container'>
      <div id="l1">
        <a href='./page1.html'>Page 1</a>
      </div>
      <div id="l2">
        <a href='./page2.html'>Page 2</a>
      </div>
      <div id="l3">
        <a href='./page3.html'>Page 3</a>
      </div>
      <div id="l4">
        <a href='./page4.html'>Page 4</a>
      </div>
      <div id="l5">
        <a href='./page5.html'>Page 5</a>
      </div>
       </div>
     </main>
     <footer>
      -- by A. Page Author.
     </footer>
   </body>
 </html>
'''

soup = BeautifulSoup(text, 'lxml')

print('--------------------------')
print(soup.find_all('a')[0])

print('--------------------------')
# print(soup.find('l1').a.text)

print('--------------------------')
print(soup.main.div.div.a.text)

print('--------------------------')
print(soup.find('footer').parent.find('div').find_all('a')[0].contents[0])








