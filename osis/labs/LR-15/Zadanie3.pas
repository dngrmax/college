procedure LoopFor(i, n: integer); // Параметризация
{Первый параметр – счетчик шагов, второй параметр – общее количество шагов}
begin
  if i <= n then begin // База рекурсии
    Println('Hello ', i);
    LoopFor(i + 1, n); // Декомпозиция
  end;
 
end;

begin
  var a:= ReadInteger('Введите начальное значение счетчика: ');
  var b:= ReadInteger('Введите конечное значение счетчика: ');
  LoopFor(a, b);                    
end.