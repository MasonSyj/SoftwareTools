* The first word in the file. Can you guess what it will be, it is a city in Europe?

 cat words | head -n 1

* The last word in the file. Can you guess this one, another city in Europe?

  cat words | tail -n 1

* The number of words in the words file - there is one word per line.

cat words | wc -l

* The 6171st word in the file. Can you read my mind and guess this word directly?

cat words | head -n 6171 | tail -n 1

* All words containing the letter Q, capitalised. (A regular expression containing a string of one or more letters matches all strings that contain the expression as a substring.)

cat words | grep 'Q'

* All words starting with the letter X. The regular expression X would match an X anywhere in the word, but ^X matches an X only at the start of the string.

cat words | grep '^X'

* All words ending in j. (The expression 'j$' matches a j only at the end of the string, but you have to single-quote it to stop the shell from interpreting the dollar sign). Can you guess the word - it is a city in eastern Europe?

cat words | grep 'j$'

* The number of words containing the letter Q, ignoring case (e.g. capitalised or not).

cat words | grep -i  'q'

* The first five words containing the letter sequence cl.

cat words | grep -i  'cl' | head -n 5

* All words containing the sequence "kp", but not "ckp". Can you guess any of these?

 cat words | grep  'kp' | grep -v 'ckp'

* The last 15 words of exactly two letters. The expression . (period) matches a single character, and '^...$' for example would match all strings of the format exactly three characters between start and end of string. You need to quote it because of the dollar sign.

cat words | grep  '^..$' | tail -n 15

* All words from the first 100 words on the list, which contain the letter y.

cat words | head -n 100 | grep 'y'

* The first five words that are among the last 100 words on the list, and contain the letter y (whether capitalised or not).

cat words | tail -n 100 | grep -i 'y'

* All three-letter words with no vowels (aeiou).The regular expression '[aeiou]' matches any string that contains one of the bracketed characters; you need quotes to stop the shell from interpreting the brackets. Remember to exclude words with capitalised vowels as well. There are 12 of these, can you guess them all before looking?

cat words | grep -i  '...' | grep -v '[aeiou]'

* All words of exactly 7 letters, where the third one is an e and the word ends "-ded". This kind of search is really useful for crosswords. There are 9 words of this form, can you guess them?

cat words | grep  '^..e.ded$'

Find all words that start with a P (whether capitalised or not), and contain at least four instances of the letter a. Putting a * after something in a regular expression searches for any number of repetitions of this, including 0 so for example 'a*' would find words with any number of the letter a, including 0 (which is not what you want here). You need single quotes to stop the shell from expanding the *. Can you guess the words? There are essentially four of them, two demonyms (for some reason one of them has a plural in the list, the other doesn't), and two nouns which are not proper nouns.

\bP[a-zA-Z]*a[a-zA-Z]*a[a-zA-Z]*a[a-zA-Z]*a[a-zA-Z]*\b

Using regular expressions, the pattern to search for all words that start with a P and contain at least four instances of the letter 'a' is:

css
Copy code
\bP[a-zA-Z]*a[a-zA-Z]*a[a-zA-Z]*a[a-zA-Z]*a[a-zA-Z]*\b

```
Breaking down the pattern:
\b is a word boundary anchor that matches the position between a word character (as defined by [a-zA-Z0-9_]) and a non-word character.
P matches the letter P.
[a-zA-Z]* matches any number of occurrences of any letter.
a matches the letter a.
[a-zA-Z]* matches any number of occurrences of any letter.
a matches the letter a.
[a-zA-Z]* matches any number of occurrences of any letter.
a matches the letter a.
[a-zA-Z]* matches any number of occurrences of any letter.
a matches the letter a.
[a-zA-Z]* matches any number of occurrences of any letter.
\b is a word boundary anchor that matches the position between a word character and a non-word character.
Using this pattern, we can find the four words that start with a P and contain at least four instances of the letter a:

Patagonia
Palauan
Paniolo
Paraguayans
```
