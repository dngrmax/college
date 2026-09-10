x = float(input('Введите x-координату: '))
y = float(input('Введите y-координату: '))

if x > 0 and y > 0:
    print('1-четверть')
elif x < 0 and y > 0:
    print('2-четверть')
elif x < 0 and y < 0:
    print('3-четверть')
elif x > 0 and y < 0:
    print('4-четверть')
