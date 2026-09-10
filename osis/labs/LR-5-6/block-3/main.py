from random import randint

a = [randint(-100, 100) for _ in range(20)]
print("Исходный массив:", a)

i = 0
while i < len(a):
    if a[i] < 0:
        a.insert(i + 1, i)  # вставляем индекс после отрицательного числа
        i += 1  # пропускаем только что вставленный элемент
    i += 1

print("Результат:", a)
