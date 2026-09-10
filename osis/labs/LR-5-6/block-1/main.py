from random import randint

a = [randint(1, 100) for _ in range(10)]
b = [randint(1, 100) for _ in range(10)]
print(a, b, sep="\n")

a_sum = 0
b_sum = 0
for i in a:
    if i > 0:
        a_sum += i
    
for i in b:
    if i > 0:
        b_sum += i
        
if a_sum > b_sum:
    for i in range(len(b)-1):
        b[i] = b[i] * 10
    print(b)
else:
    for i in range(len(a)-1):
        a[i] = a[i] * 10
    print(a)