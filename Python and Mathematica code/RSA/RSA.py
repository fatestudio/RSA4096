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


    
from random import randrange, getrandbits
def is_prime(n, k=128):
    """ Test if a number is prime
        Args:
            n -- int -- the number to test
            k -- int -- the number of tests to do
        return True if n is prime
    """
    # Test if n is not even.
    # But care, 2 is prime !
    if n == 2 or n == 3:
        return True
    if n <= 1 or n % 2 == 0:
        return False
    # find r and s
    s = 0
    r = n - 1
    while r & 1 == 0:
        s += 1
        r //= 2
    # do k tests
    for _ in range(k):
        a = randrange(2, n - 1)
        x = pow(a, r, n)
        if x != 1 and x != n - 1:
            j = 1
            while j < s and x != n - 1:
                x = pow(x, 2, n)
                if x == 1:
                    return False
                j += 1
            if x != n - 1:
                return False
    return True
def generate_prime_candidate(length):
    """ Generate an odd integer randomly
        Args:
            length -- int -- the length of the number to generate, in bits
        return a integer
    """
    # generate random bits
    p = getrandbits(length)
    # apply a mask to set MSB and LSB to 1
    p |= (1 << length - 1) | 1
    return p
def generate_prime_number(length=1024):
    """ Generate a prime
        Args:
            length -- int -- length of the prime to generate, in          bits
        return a prime
    """
    p = 4
    # keep generating while the primality test fail
    while not is_prime(p, 128):
        p = generate_prime_candidate(length)
    return p
if __name__ == '__main__':
    '''
    Detect if the script is being run directly by the user
    '''
    print("RSA Encrypter/ Decrypter")
    m = str(generate_prime_number())
    p = str(generate_prime_number())
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
