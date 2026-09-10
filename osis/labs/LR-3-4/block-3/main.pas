var
  newspaper, journal, mc, sum: real;
  newspaper_cnt, journal_cnt, client_choice: integer;

begin
  writeln('Работа кассового аппарата в киоске (для окончания дня - введите "0")');
  
  write('Введите цену газеты: ');
  readln(newspaper);
  newspaper_cnt := 0;
  
  write('Введите цену журнала: ');
  readln(journal);
  journal_cnt := 0;
  
  write('Что хотите приобрести: ',
        #10, '1 - газету',
        #10, '2 - журнал',
        #10, '3 - оба варианта',
        #10, '---> ');
  readln(client_choice);
  
  while true do
  begin
    if client_choice = 1 then
    begin
      sum := newspaper;
      newspaper_cnt := newspaper_cnt + 1;
    end
    else if client_choice = 2 then
    begin
      sum := journal;
      journal_cnt := journal_cnt + 1;
    end
    else
    begin
      sum := newspaper + journal;
      newspaper_cnt := newspaper_cnt + 1;
      journal_cnt := journal_cnt + 1;
    end;
    
    writeln('Сумма покупки ----> ', sum:0:2);
    write('Сколько внесли денег: ');
    readln(mc);
       
    writeln;
    writeln('Сдача ---> ', (mc - sum):0:2);
    writeln('Спасибо! Хорошего дня!');
    writeln;
    
    write('Что хотите приобрести: ',
          #10, '1 - газету',
          #10, '2 - журнал',
          #10, '3 - оба варианта',
          #10, '---> ');
    readln(client_choice);
    if client_choice = 0:
    break
  end;
  
  writeln();
  writeln('Подытог:');
  writeln('Куплено газет: ', newspaper_cnt);
  writeln('Куплено журналов: ', journal_cnt);
  
  readln();
end.
