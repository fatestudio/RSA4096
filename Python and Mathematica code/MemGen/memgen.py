'''
MemGen.py: Generate random numbers for verilog memory initialization file (mif)

Created on Apr 23, 2013

@author: fatestudio
'''
import string
import random
import time
BITS = 4096
WIDTH = 32
ADDR = 128
BYTES = 1024
BYTE_BLOCK = 8
result = ""
random.seed(1)
result = random.randint(0, 2 ** (BITS - 1)) # just generate 4095bit positive number
print(str(hex(result)))
#print(len(str(hex(result))))

print "-- Python - Generated Memory Initialization File"
print "WIDTH = 32;"
print "DEPTH = 128;"
print
print "ADDRESS_RADIX = HEX;"
print "DATA_RADIX = HEX;"
print 
print "CONTENT BEGIN"



s = str(hex(result))[2:]
s = s[0 : len(s) - 1]
#print("before insert zeros:\t" + str(len(s)))
if(len(s) < BYTES):
    zeros = ""
    for i in range(BYTES - len(s)):
        zeros = zeros + "0"
    s = zeros + s
#print("after insert zeros:\t" + str(len(s)))
#print(s)

start = BYTES - BYTE_BLOCK
for i in range(ADDR):
    print("\t" + str(hex(i))[2:] + "\t:\t" + s[start : start + BYTE_BLOCK] + ";")
    start = start - BYTE_BLOCK
print "END;" 