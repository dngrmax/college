import math
x = -12
print('x          y ')
while -12 <= x <= -2:
    if x < -4:
        if -10 <= x < -4:
            y = math.e**x * (-x) - abs(x) ** (0.1 * x) 
        else:
            y = 86 / (x**2) + math.tan(x)  
    else:
        y = x * 3 / (math.cos(x)) - math.log10(abs(x)) / math.cos(2 * x)
    print(f"{x:.2f}     {y:.2f}")
    x += 0.3
