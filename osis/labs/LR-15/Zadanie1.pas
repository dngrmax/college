function sumTo(a: integer): integer; // Параметризация
begin
  if (a <= 1) then // База рекурсии
    a := 1
  else
    a += (sumTo(a - 1)); // Декомпозиция
  sumTo := a;
end;

begin
  var x := ReadInteger('Введите x:');
  Print($'Сумма: {sumTo(x)}');
end.