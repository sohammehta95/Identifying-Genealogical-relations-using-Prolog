# coding: utf-8
import argparse
import re

parser = argparse.ArgumentParser()
parser.add_argument('-input', help='training file', required=True)
parser.add_argument('-output', help='test file', required=True)


args = vars(parser.parse_args())


inputfile = args['input']
outputfile = args['output']

with open(inputfile) as f:
    lines = f.readlines()

#Removing extra spces in the end of each line
lines = [x.strip() for x in lines] 


file = open(outputfile,"w") 


#Clean Each line and get it in the form of a List
for x in lines:
	eachline = re.split(' |`|:|{|}|\'|\(|\)|]|,|-|\[|>',x)
	eachline = [x for x in eachline if x != '']
	eachline = [x.lower() for x in eachline]
	# file.write(''.join(eachline))

	if len(eachline)>3:
		#print eachline
		file.write(eachline[1] + "(" + eachline[3] + ")" + "." + "\n")
		file.write(eachline[4] + "(" + eachline[3] + "," + eachline[5] + ")" + "." + "\n")
		if len(eachline)>6:
			file.write(eachline[6] + "(" + eachline[3] + "," + eachline[7] + ")" + "." + "\n")
			if len(eachline)>8:
				file.write(eachline[8] + "(" + eachline[3] + "," + eachline[9] + ")" + "."  +"\n")
				if len(eachline)>10:
					file.write(eachline[10] + "(" + eachline[3] + "," + eachline[11] + ")" + "."  +"\n")
file.close() 
