'''
Created on 2013-7-8

@author: fatestudio
'''
import sys
sys.stdout = open('output.txt', 'w')

TOTALSIZE = 4096
WIDTH = 32
TOTALADDR = TOTALSIZE / WIDTH
m = 0x44d9850809f292387a1798fe6addd9e61d9fe398147a8f45f0ef320f7f60e7f75f2bc20a7f5195cde62d43f261908b9ccf719ab2922fbd8dca5b35354a1d50572d6bc20d80d6a1cc2472fd603e9ba024cea2df00a66dc4e21681081399f8a8f10fc9eee0a1727f7ea5f24b6de6fec4b843b2a7d15ab2c21ccc93ff710fce97d786e30efce9b2e70b4d4dfccb7d779cc4b5ca436953c178e61067a8cd7a3283c27e969e2c8bf23fb9a431f7a41c30359dfde228125fb5f3d866d7002091472ad52631db9d17034ce51797350e6256403bf3df0bbf66ac168b4a1ca795718ada2027c013f38018399ee6a8e2f9c19ed348af5890333b5b3cedfec4623ab899605a2939b3b7fa74d8aff88ec827f99d273d5627386528cc241e345ac72eac39204ade7cef37ed2ec2f856f3d95e0ae1a1b6c596216ae0fdbc8a36bcb0167e98363905c053b25fdacbe7ce71b48fba52e5998a33736fd1ac7ce1ad0a6f226bdd974d3b564b08be04c3e5c94938160c6b3ed755a3ac132ae2a201ac902ee25777cf09f9821883744da64cc249558f2ad985fff3e0ba10ac728b4a41865bf350d278d41a8a6e165e049937f411fed1e70e79933a1d1c2ad4ab155c09fcd8f739cd488869bdbd2e72bb5b707120911b3b68b57da54f267dd138266d26d53961058fe8c1d7173e55bc7fdeb31234efe6e6480432aa50f4ec6f0093395d1805142cb6d1dL
e = 5
n = 0x84c5b4763fe31d0347fc816ac16e2284c10faa4003ba33db73f7ba8e0445d656de3a5db5154ed51212093d26ac512b01f18dd1eed77c96c0084f3dd6415af341ee52bdb6d1020a15d9ed17e3cc0e95ee8d103ed3cc667e971773308cdc6b13ab2e47dc0e959f3a518cfe5cd12d5db79ba2a7ae1f3ac7652ccdf8440407295e4299901c0475491bc354c56c9a9cc9af4ec9546b439f9d01298a449ebe89d9bf020067dba8589890086a17b9af5b569643d037cdff7c240d4969d495dd81355c53f0e642f43328ad088ded3c9691eb79fa5d5f576cdeb8fc4c7b297d0b0e5e18baf320cd576d14475b349aae908fb5262cc703806984c8199921167d8fcf23cae883333218bd91a1b7f03edca7e2dcaa37f463b337d20b5d59db610487c89da11b62397bc701762741bab9f87ff50592859be3cecb8c497c68a8c24d4244ef7febe8e5b4617589a82b5a702cfa93ea5c4ed8f33418f3d4e7115804f92283868a29678a5aa33b6fe5078c5fe8f8dc3bf364eb8ac8ce8a245e6b33138131c541013d0326324dfb695ffb3a1890c78092b4d42b28fef02b9c014ea5ac06d864c2f2e39403560d97dae38d9d643c25fbb230bbd92a4aa2b410d93c4efbc8d60b21fbac78255d6807923986bb968a437d5c8dfc5eda92d864ac5db9d707107e855c384429e821a4c74803e31ba1621582283d15a9ec0806705fca161622bd795fec898fL
nprime0 = 0xa3b18a91    #0x5c4e756f
r = 2 ** TOTALSIZE % n

rr = n ^ (2 ** TOTALSIZE - 1) 
print("rr:")
print(hex(rr))

t = r ** 2 % n
print("r:")
print(hex(r))
print("t:")
print(hex(t))

def getXi(x, i):    # get Xi from X (4096bit's 32bit value)
    lowb = 2 ** (i * WIDTH)
    highb = 2 ** ((i + 1) * WIDTH)
    
    xi = x % highb / lowb
    #print(hex(xi))
    return xi

# CORRECT NOW!
def monPro(x, y):
    z = 0
    for i in range(TOTALADDR):
        xi = getXi(x, i)
        print(i)
        print(hex(xi))
        v = xi * y + z
        
        print("v:")
        print(str(hex(v)))
        
        m = nprime0 * (v % (2 ** WIDTH)) % (2 ** WIDTH)
        z = m * n + v 
        #print(hex(z))
        z = z / (2 ** WIDTH)  
                    
    print(hex(z))
    return z    
   
def monPro2(a_bar, b_bar):
    a_bar_str = str(bin(a_bar))
    a_bar_str = a_bar_str[2:]
    len_a_bar_str = len(a_bar_str)   

    res = 0     
    for i in reversed(range(len_a_bar_str)):
        if(a_bar_str[i] == "1"):
            res = res + b_bar
        if(res % 2 == 1):
            res = res + n
        res = res >> 1  
            
    for i in range(TOTALSIZE - len_a_bar_str):
        if(res % 2 == 1):
            res = res + n
        res = res >> 1
    
    while(res >= n):
        res = res - n
        
    return res


m_bar = monPro(m, t)
#m_bar2 = monPro2(m, t)
print(hex(m_bar))
#print(hex(m_bar2))
print(hex(m * r % n)) 
