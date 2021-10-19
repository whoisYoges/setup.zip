# import fileinput
import fileinput

f = open("replacedNewlineWithSpace.txt", "x")

# Using fileinput.input() method
for line in fileinput.input(files ='packages.txt'):
    line2 = line.replace("\n"," ")
    f.write(line2)