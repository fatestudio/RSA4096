import random
import time

random.seed(0)
nbits = 1024
timer = 0   #

def genBigRam(bits):
    ret = 0
    mul = 1
    for i in range(bits):
        ran = random.randint(0, 1)
        #ran = 1
        ret = ret + ran * mul
        mul = mul * 2
    
    return ret


def expF(m, e, n): # binary method
    ret = 0
    e_str = str(bin(e))
    e_str = e_str[2:]
    len_e_str = len(e_str)
    
    if(e_str[0] == '1'):
        ret = m
    else:
        ret = 1
    
    for i in range(1, len_e_str):
        timer2 = time.clock()
        ret = ret * ret % n

        if(e_str[i] == '1'):
            ret = ret * m % n
            if(ret >= n):
                ret = ret % n
        
    return ret


def findRLen(n):
    r = 1
    i = 0
    while(r <= n):
        r = r * 2
        i = i + 1
    return i
    
# extende algorithm
def extGCD(a, b):
    #timer = time.clock()
    q_arr = []
    r_arr = []
    gcd = 1
    # reverse a and b if necessary
    fReversed = False
    if(a < b):
            fReversed = True
            temp = a
            a = b
            b = temp
    oa = a
    ob = b

    # get GCD
    while(a != 1):
            q = a / b
            q_arr.append(q)
            r = a % b
            r_arr.append(r)
            #print "& " + str(a) + " = " + str(b) + " * " + str(q) + " + " + str(r) + " & \\\\"

            if(r == 0):
                    gcd = b
                    break
            else:
                    a = b
                    b = r
    # get x and y
    x_arr = []
    y_arr = []
    x_arr.append(0)
    y_arr.append(1)
    x_arr.append(1)
    y_arr.append(-q_arr[0])
    x = 1
    y = -q_arr[0]
    #print "& " + str(r_arr[0]) + " = " +  str(oa) + " * " + str(x) + " + " + str(ob) + " * " + str(y) + " & \\\\"
    for i in range(1, len(q_arr)-1):
            x = (x_arr[i] * -q_arr[i] + x_arr[i - 1])
            y = (y_arr[i] * -q_arr[i] + y_arr[i - 1])
            x_arr.append(x)
            y_arr.append(y)
            #print "& " + str(r_arr[i]) + " = " +  str(oa) + " * " + str(x) + " + " + str(ob) + " * " + str(y) + " & \\\\"

    if(fReversed):
            temp = x
            x = y
            y = temp
    
    #print("extGCD time:")
    #print(time.clock() - timer)
    
    return [x, y, gcd]

def expMont(m, e, n): # montgomery method
    timer = 0
    ret = 0;
    r_len = findRLen(n)
    r = 1
    for i in range(r_len):
        r = r * 2
    
    [n_prime, r_prime, gcd] = extGCD(n, r)
    #print(extGCD(n, r))
    #print(str(n_prime * n + r_prime * r))
    
    n_prime = -n_prime  #required in expMontgomery
#    print("n_prime")
#    print(n_prime)
    
    m_bar = (m << r_len) % n
    x_bar = r % n
#    print("m_bar:")
#    print(m_bar)
#    print("x_bar:")
#    print(x_bar)
    
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
            
        for i in range(r_len - len_a_bar_str):
            if(res % 2 == 1):
                res = res + n
            res = res >> 1
        
        while(res >= n):
            res = res - n
            
        return res
    
    def monPro(a_bar, b_bar):
#        print("In monPro:")
        t = a_bar * b_bar
        m1 = t * n_prime
        m2 = ((m1 >> r_len) << r_len) ^ m1 # mod r
        m3 = m2 * n
        m4 = m3 + t
        #m = m % r
        u = m4 >> r_len

        while(u >= n):
            u = u - n    
                   
        return u
    
    e_str = str(bin(e))
    e_str = e_str[2:]
    len_e_str = len(e_str)
    for i in range(len_e_str):
        timer2 = time.clock()
        x_bar = monPro2(x_bar, x_bar)
            
        if(e_str[i] == "1"):
            x_bar = monPro2(m_bar, x_bar)  
                         
        timer2 = time.clock() - timer2
        timer = timer + timer2
    ret = monPro2(x_bar, 1)
    return ret

m = 17555138354946113191141010309033626261506170611135471526354579215981238085834524547740315849324880781158639249182737547366981179404960923829194416882503485085848182600170715683902659269020498168229402187359487369299193972129197772247141905173302697475832536265048518193930668434175352994376184146558931651303002292987717320706926089312207674911049302498665888188599392584101799552096456267229224488749319106235222906107947625275060164243221291030559243187544269633275025972382150717043095405143910038416311535159461906279370243107425063578323272112035737965461708575574149884779334005006337920179933158918985296826224384473521474735539140964139892957487338467374588961258543587338945796308902111663848726154348875217007564921316789307131918025934771659546984551605715982755963209936979867302211183990738234101411363983648159585194340426689908218758758611436509155181778768859364794260008730241236400517907563749470585822571718510358701601387373501325685612060824814047853843976245211261955398334250472844321554624475555320206753526853222895260720715190400718725066079635005699720190336383345020852905052124227370707133635389457094415022926741814341280786252814913193157076942669884844089932018236043725198465813263226599219621752093

e = 1

n = 0x44c5b4763fe31d0347fc816ac16e2284c10faa4003ba33db73f7ba8e0445d656de3a5db5154ed51212093d26ac512b01f18dd1eed77c96c0084f3dd6415af341ee52bdb6d1020a15d9ed17e3cc0e95ee8d103ed3cc667e971773308cdc6b13ab2e47dc0e959f3a518cfe5cd12d5db79ba2a7ae1f3ac7652ccdf8440407295e4299901c0475491bc354c56c9a9cc9af4ec9546b439f9d01298a449ebe89d9bf020067dba8589890086a17b9af5b569643d037cdff7c240d4969d495dd81355c53f0e642f43328ad088ded3c9691eb79fa5d5f576cdeb8fc4c7b297d0b0e5e18baf320cd576d14475b349aae908fb5262cc703806984c8199921167d8fcf23cae883333218bd91a1b7f03edca7e2dcaa37f463b337d20b5d59db610487c89da11b62397bc701762741bab9f87ff50592859be3cecb8c497c68a8c24d4244ef7febe8e5b4617589a82b5a702cfa93ea5c4ed8f33418f3d4e7115804f92283868a29678a5aa33b6fe5078c5fe8f8dc3bf364eb8ac8ce8a245e6b33138131c541013d0326324dfb695ffb3a1890c78092b4d42b28fef02b9c014ea5ac06d864c2f2e39403560d97dae38d9d643c25fbb230bbd92a4aa2b410d93c4efbc8d60b21fbac78255d6807923986bb968a437d5c8dfc5eda92d864ac5db9d707107e855c384429e821a4c74803e31ba1621582283d15a9ec0806705fca161622bd795fec898fL

if(n % 2 == 0):
    n = n + 1

print("m:\t")
print(str(m))
print("e:\t")
print(str(e))
print("n:\t")
print(str(n))
print("m^e mod n:\t")
repeats = 1
total_time = time.clock()
for i in range(repeats):
    m_2_e_mod_n = expMont(m, e, n)
print("Montgomery:")
print(str(m_2_e_mod_n))

total_time = time.clock() - total_time
print(total_time)
    
total_time = time.clock()
for i in range(repeats):
    m_2_e_mod_n = expF(m, e, n)
print("Normal Exp:")
print(str(m_2_e_mod_n))
total_time = time.clock() - total_time
print(total_time)