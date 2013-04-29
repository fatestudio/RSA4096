'''
    For readmemh function
'''
RANGE = 128
LEN = 7
for i in range(RANGE):
    res = str(hex(i))[2:]
    if(len(res) < LEN):
        for j in range(LEN - len(res)):
            res = "0" + res
    print(res)
