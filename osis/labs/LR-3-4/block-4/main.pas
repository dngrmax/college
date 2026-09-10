var
  clients: array[1..100] of real;
  n, i, minIndex: integer;
  minValue, t: real;

begin
  writeln('Очередь в магазине');
  writeln();

  n := 0;
  write('Введите в секундах время обслуживания клиента (0 - конец): ');
  readln(t);

  while (t <> 0) do
  begin
    n := n + 1;
    clients[n] := t;
    write('Введите в секундах время обслуживания клиента (0 - конец): ');
    readln(t);
  end;

  minValue := clients[1];
  minIndex := 1;

  for i := 2 to n do
  begin
    if clients[i] < minValue then
    begin
      minValue := clients[i];
      minIndex := i;
    end;
  end;

  writeln();
  writeln('Наиболее быстро обслужили клиента №', minIndex);
  writeln('Время обслуживания: ', minValue:0:2, ' сек');

end.
