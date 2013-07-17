'''
Created on 2013-7-11

@author: fatestudio
'''
'''
# part1
head = "\t\t\t\t"
for i in range(1, 31):
    print(head + "OUTPUT_RESULT" + str(i) + ":")
    print(head + "begin")
    print(head + "\tif(i < `TOTAL_ADDR) begin")
    print(head + "\t\tres_out = m" + str(i) + "[i];")
    print(head + "\t\ti = i + 1;")
    print(head + "\tend")
    print(head + "\telse begin")
    print(head + "\t\tres_out = 32'h00000000;")
    print(head + "\t\ti = 0;")
    print(head + "\t\texp_state = OUTPUT_RESULT" + str(i + 1) + ";")
    print(head + "\tend")
    print(head + "end")
    print
    
# parameter part
s = ""
for i in range(1, 31):
    s = s + "OUTPUT_RESULT" + str(i) + " = " + str(i + 1) + ", "
print(s)
'''
# 
head = "\t\t\t\t"
for i in range(1, 31):
    print(head + "m" + str(i) + "[i] = m_buf" + str(i % 5 + 1) + ";")
