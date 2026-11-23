3rd program

import nltk
from nltk.corpus import words

nltk.download('words')

# Load dictionary
dictionary = set(words.words())

# Get input
text = input("Enter a sentence: ")

# Check spelling
for word in text.split():
    if word.lower() in dictionary:
        print(word, "- Correct")
    else:
        print(word, "- Incorrect")


Program 4

import nltk
from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize

nltk.download('stopwords')
nltk.download('punkt')
nltk.download('punkt_tab')

text = input("Enter text: ")

stop_words = set(stopwords.words('english'))
words = word_tokenize(text)

result = [w for w in words if w.lower() not in stop_words]

print("After removing stop words:", " ".join(result))


Program 5 


import nltk
from nltk import FreqDist
from nltk.tokenize import word_tokenize

nltk.download('punkt')
nltk.download('punkt_tab')

text = input("Enter a text: ")

words = word_tokenize(text.lower())

freq = FreqDist(words)

print("Word Frequency:")

for word, count in freq.items():
    print(word, ":", count)
