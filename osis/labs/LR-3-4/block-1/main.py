step = int(input('Введите шаг (целым числом): '))

print("x      y=x**2")
for i in range(2,13,step):
    print(f"{i}         {i**2}")