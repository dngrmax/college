x1, y1 = int(input('Введите координаты слона: \n')),int(input())
x2, y2 = int(input('Введите координаты фигуры: \n')),int(input())

if (x1+y1 == x2+y2) or (x1-y2==x2-y1):
    print('Слон бьет фигуру!')
else:
    print('Слон НЕ бьёт фигуру!')