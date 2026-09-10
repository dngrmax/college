import random  # глобальный импорт модуля

def gen_massive():
    # локальные переменные функции
    a = [random.randint(0, 100) for _ in range(10)]  # список случайных чисел от 0 до 100
    b = [random.randint(0, 100) for _ in range(10)]
    return a, b  # возвращаем два списка (ссылкой)


def get_sums(a: list, b: list):
    # формальные параметры: a, b (передаются по ссылке, т.к. это списки)
    # локальные переменные функции:
    sum_a, sum_b = 0, 0

    # цикл по элементам списка a
    for i in a:  # i — локальная переменная цикла
        sum_a += i

    # цикл по элементам списка b
    for i in b:
        sum_b += i

    return sum_a, sum_b  # возвращаем результаты (по значению, т.к. это числа)


def check_sums(a: list, b: list, sum_a: int, sum_b: int):
    # формальные параметры: a, b, sum_a, sum_b
    # a, b — передаются по ссылке (могут изменяться внутри функции)
    # sum_a, sum_b — передаются по Ссылке (числа, неизменяемые типы)

    if sum_a < sum_b:
        for i in range(len(a) - 1):  # i — локальная переменная цикла
            a[i] = a[i] * 10 
    else:
        for i in range(len(b) - 1):
            b[i] = b[i] * 10


# глобальные переменные a и b — создаются в основной программе
a, b = gen_massive()           # Глобальнык переменные массивов
sum_a, sum_b = get_sums(a, b)  # глобальные переменные для хранения сумм
check_sums(a, b, sum_a, sum_b)

# вывод результатов
print("Массив A:", a)
print("Массив B:", b)
print("Сумма A:", sum_a)
print("Сумма B:", sum_b)
