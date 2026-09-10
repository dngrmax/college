sum = int(input('Введите вашу сумму денег: '))
total_bottles = 0

buy_bottles = sum // 45
total_bottles += buy_bottles
sum = sum % 45 + buy_bottles * 20
if sum >= 45:
    total_bottles += 1

print(f"Куплено бутылок: {total_bottles}")