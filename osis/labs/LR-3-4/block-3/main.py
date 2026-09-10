print('Работа кассового аппарата в киоске (для окончания дня - введите "0") ')
newspaper = float(input('Введите цену газеты: '))
newspaper_cnt = 0
journal = float(input('Введите цену журнала: ')) 
journal_cnt = 0

client_choice = int(input('Что хотите приобрести: '
                          '\n1-газету'
                          '\n2-журнал'
                          '\n3-оба варианта\n---> '))
while True:
    if client_choice == 1:
        sum = newspaper
        newspaper_cnt += 1
    elif client_choice == 2:
        sum = journal
        journal_cnt += 1
    else:
        sum = (journal + newspaper)
        newspaper_cnt += 1
        journal_cnt += 1
    
    print(f'Сумма покупки ----> {sum, 2}')
    mc = float(input('Сколько внесли денег: '))
    print(f'\n\nСдача ---> {mc - sum, 2}'
          '\nСпасибо! Хорошего дня')
    client_choice = int(input('Что хотите приобрести: '
                            '\n1-газету'
                            '\n2-журнал'
                            '\n3-оба варианта\n---> '))
    if client_choice == 0:
        break

print(f"\n\n\nПодытог: \nКуплено газет: {newspaper_cnt}"
      f"\nКуплено журналов: {journal_cnt}")
        
    