print('Очередь в магазине\n\n')

clients = []

client = float(input('Введите в секундах время обслуживания клиента: '))
while client != 0:
    clients.append(client)
    client = float(input('Введите в секундах время обслуживания клиента: '))

time, client = min((time, client) for client, time in enumerate(clients))

print(f"\n\nНаиболее быстро обслужили клиента №{client+1}\nВремя обслуживания: {round(time, 2)} сек")    
