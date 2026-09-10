# Ввод строки
s = input()
result = ""
i = 0
while i < len(s):
    if s[i] == 'x' and i + 3 <= len(s) and s[i+1:i+4] == 'abc':
        i += 1
    else:
        result += s[i]
        i += 1
print("Результат:", result)
