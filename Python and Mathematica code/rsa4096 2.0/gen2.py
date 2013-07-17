'''
    For readmemh function
'''
'''
RANGE = 128
LEN = 7
for i in range(RANGE):
    res = str(hex(i))[2:]
    if(len(res) < LEN):
        for j in range(LEN - len(res)):
            res = "0" + res
    print("#10 m_in = 8'h" + res + ";")
    print("e_in = 8'h" + res + ";")
    print("n_in = 8'h" + res + ";")
    print("r_in = 8'h" + res + ";")
    print("t_in = 8'h" + res + ";")
'''

for i in range(128): 
    print("if(k == " + str(i) + ")")
    print("\tres3 = res4[0 +: " + str(i + 1) + "];")
