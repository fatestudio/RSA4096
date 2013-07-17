'''
Created on 2013-7-8

@author: fatestudio
'''
n0 = 0x5fec898f
W = 32

y1 = 1
y2 = 0
for i in range(2, W):
    if(2 ** (i - 1) < ((n0 * y1) % (2 ** i))):
        y2 = y1 + 2 ** (i - 1) 
    else:
        y2 = y1
    y1 = y2
    y2 = 0
    
print(hex(y1))