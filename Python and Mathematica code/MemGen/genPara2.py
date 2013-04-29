'''
Created on Apr 23, 2013

@author: fatestudio
'''
import random
random.seed(0)
BYTES = 1024
LEN = 8

def retStr(n):
    s = str(hex(n))[2:]
    s = s[0 : len(s) - 1]
    if(len(s) < BYTES):
        zeros = ""
        for i in range(BYTES - len(s)):
            zeros = zeros + "0"
        s = zeros + s

def out2file(n, filename):
    n_file = open(filename, 'w')
    s = retStr(n)
    for i in range(BYTES):
        if((i + 1) % LEN == 0):
            n_file.write("\t")
        n_file.write(s[i])
    n_file.close()

n = 0x44c5b4763fe31d0347fc816ac16e2284c10faa4003ba33db73f7ba8e0445d656de3a5db5154ed51212093d26ac512b01f18dd1eed77c96c0084f3dd6415af341ee52bdb6d1020a15d9ed17e3cc0e95ee8d103ed3cc667e971773308cdc6b13ab2e47dc0e959f3a518cfe5cd12d5db79ba2a7ae1f3ac7652ccdf8440407295e4299901c0475491bc354c56c9a9cc9af4ec9546b439f9d01298a449ebe89d9bf020067dba8589890086a17b9af5b569643d037cdff7c240d4969d495dd81355c53f0e642f43328ad088ded3c9691eb79fa5d5f576cdeb8fc4c7b297d0b0e5e18baf320cd576d14475b349aae908fb5262cc703806984c8199921167d8fcf23cae883333218bd91a1b7f03edca7e2dcaa37f463b337d20b5d59db610487c89da11b62397bc701762741bab9f87ff50592859be3cecb8c497c68a8c24d4244ef7febe8e5b4617589a82b5a702cfa93ea5c4ed8f33418f3d4e7115804f92283868a29678a5aa33b6fe5078c5fe8f8dc3bf364eb8ac8ce8a245e6b33138131c541013d0326324dfb695ffb3a1890c78092b4d42b28fef02b9c014ea5ac06d864c2f2e39403560d97dae38d9d643c25fbb230bbd92a4aa2b410d93c4efbc8d60b21fbac78255d6807923986bb968a437d5c8dfc5eda92d864ac5db9d707107e855c384429e821a4c74803e31ba1621582283d15a9ec0806705fca161622bd795fec898fL
out2file(n, "n.txt")
n_file = open("n.txt", 'w')

m = random.randint(0, n) 
out2file(m, "m.txt")

e = random.randint(0, n) 
out2file(e, "e.txt")
 