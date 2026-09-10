from random import randint

a = [randint(1, 10) for _ in range(10)]
print(a)
max_count = 0
count = 0
for i in range(len(a)-1):
    if a[i] >= a[i+1]:
        count += 1
    else:
        count += 1
        if max_count < count:
            max_count = count  
        count = 0          

print(max_count)