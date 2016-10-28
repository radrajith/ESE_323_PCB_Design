import glob
import os
from os.path import isfile, join

a = raw_input("SubString: ")
os.chdir("C:\\Users\\radra\\Box Sync\\Senior Fall 2016\\ESE 323\\text files")
for filename in glob.glob("*.txt"):
	if isfile(filename):
		f = open(filename, 'r')
		for line in f:
			if(line.find(a) > 0):
				print filename
				break;