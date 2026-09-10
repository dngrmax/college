import random

# Создаём исходный массив 8x8 со случайными числами
matrix = [[random.randint(1, 9) for _ in range(8)] for _ in range(8)]

# Печатаем матрицу для наглядности
for row in matrix:
    print(row)

# Функция для проверки, есть ли в строке единственный максимум
def has_unique_max(row):
    max_val = max(row)
    return 1 if row.count(max_val) == 1 else -1

# Формируем одномерный массив результатов
result = [has_unique_max(row) for row in matrix]

print("\nРезультат:", result)
