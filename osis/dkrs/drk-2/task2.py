s = input("Введите строку: ")
sub = input("Введите подстроку для инверсии: ")

result = list(s)  # превращаем строку в список, чтобы менять символы
len_s = len(s)
len_sub = len(sub)

i = 0
while i <= len_s - len_sub:
    # проверяем совпадение подстроки с текущей позицией
    match = True
    for j in range(len_sub):
        if s[i + j] != sub[j]:
            match = False
            break

    # если совпадение найдено — инвертируем
    if match:
        for j in range(len_sub):
            result[i + j] = sub[len_sub - j - 1]  # записываем в обратном порядке
        i += len_sub  # переходим за конец подстроки
    else:
        i += 1

print("Результат:", "".join(result))
