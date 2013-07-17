'''
Created on 2013-7-7

@author: fatestudio
'''
WIDTH = 32
BYTES = WIDTH / 4
ADDR = 7
SSIZE = 2 ** ADDR
TOTALBIT = WIDTH * SSIZE


n = 0x149c1965ad98fa46718523dad5f58f409d89062bd8eda4fdf2066470f135295f07c9917922a964a86e6637fa3ca95da43ef4b1440a12b8ef9518ae092a7c394a6748cb70d58c588c1b98a5e684eecd0d6482cd53c788fa6917f328b41c901b921b9e6229191b68a6de0ae73aa48bb1b97d90a87cd03fbbc4958f626f4a1131523a9a9a285a43a743c95f516a94fb9120578e46c026e95b17ebafa21eb031aa153c4a088ffc15c724fb94efe911f499d4713bc2b69544b8f0565a3bcbc87476039409db1237b42777bc768610a3668dd167329a416f1cd4b76f39db9920e96cfce28601753d3988efd7c2368322eec88afc9227224374a351c79891833b715d01ae06fdfb77efa45d06cdb515499fa60711a738951c5836fd35605d6ab7d595c77acdff93e6b100354e1fd46c8dac7c5ee2276688a89b7b2a71a5acdaa14ea7d579c730582a57f5213bf4e86e41840ab5d8e7aee5bebbc2b0f2bb3810c6183272d1aeed41c012e824ae264f5fc010a19efb05f6b41fca9bc4a0a34b0f89fd1237e4e415995f80cfb6cb06c0a97843a5f817df090edd741e9f2b94c7ae4af92d64dc64dc90e98f4afe5e12a9a96f7d7742d4b94bc352c949d7192d6bf19f25d484432c1e910135f001a401baa22b888c2eef79ce5f386efa550d21bcdfdf4473e04255b841d1a34bdb41d7011500400a06490666572b90f2c573053f82acaa289eL

ns = str(hex(n))[2:-1][::-1]
print(ns)
print(len(ns))

def boundaryPrint(ms, i, headstr):
    if(len(ms) >= i * BYTES + BYTES):   # much larger
        print(headstr + ms[i * BYTES : i * BYTES + BYTES][::-1] + ";")
    elif(len(ms) <= i * BYTES):          # much smaller
        print(headstr + "00000000;")
    else:                               # in between
        for j in range(BYTES):
            if(len(ms) <= i * BYTES + j):
                zeros = ""                  # generate zeros string
                for k in range(BYTES - j):
                    zeros = zeros + "0"
                if(j == 0):
                    print(headstr + zeros + ";")
                else:
                    print(headstr + zeros + ms[i * BYTES : ][::-1] + ";")
                break

for i in range(SSIZE):
    boundaryPrint(ns, i, "\t" + str(hex(i))[2:] + "\t" + ":" + "\t")