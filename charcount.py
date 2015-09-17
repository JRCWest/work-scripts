#!	python3
#	-- NEEDS TO BE RUN IN THE TARGET DIRECTORY --
#	Takes a file path and counts the characters within the file.
#	...hopefully.

import os
import pprint

#	Char dictionary
charCount = {}

print("File name + extension: ")
filein = input()

#	Find out the directory the script was called in
cwd = os.getcwd()
path = os.path.join(cwd, filein)

print("Path to file: " + path)

#	Open and read selected file.
fileIn = open(path)
fileContent = fileIn.read()

#	Cycles through each craacter and keeps count
#	Makes necessary disctionary keys per char
#	"value[key]"
for char in fileContent:
	charCount.setdefault(char, 0)
	charCount[char] = charCount[char] + 1

#	For 'pretty printing'
pprint.pprint(charCount)
