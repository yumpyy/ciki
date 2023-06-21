# python version for cwiki
# i will probably forget about this and move on to something else

import wikipedia
from os import system

system("clear")
# query = input("Search : ")

print(wikipedia.summary("city hunter"))
# print(wikipedia.summary(query))

wikipedia.page(query).content
wikipedia.page(query).title
