s = input("Введите строку: ")

count_plus_minus = 0
count_before_zero = 0

for i in range(len(s)):
    if s[i] == '+' or s[i] == '-':
        count_plus_minus += 1 
        if i + 1 < len(s) and s[i+1] == '0':
            count_before_zero += 1 
            
            
print("Общее количество '+' и '-':", count_plus_minus)
print("Количество '+' или '-' перед '0':", count_before_zero)
