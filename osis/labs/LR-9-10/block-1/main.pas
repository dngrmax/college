type
  TIntArray = array[1..10] of Integer; // тип массива целых чисел

// Процедура генерации массивов
// Параметры: a, b — передаются по ссылке (var), изменяются внутри
procedure GenMassive(var a, b: TIntArray);
var
  i: Integer; // локальная переменная
begin
  for i := 1 to 10 do
  begin
    a[i] := Random(101); // случайное число от 0 до 100
    b[i] := Random(101);
  end;
end;

// Процедура вычисления сумм элементов массивов
// Параметры: a, b — по значению (const), sum_a, sum_b — по ссылке (var)
procedure GetSums(const a, b: TIntArray; var sum_a, sum_b: Integer);
var
  i: Integer; // локальная переменная
begin
  sum_a := 0;
  sum_b := 0;

  for i := 1 to 10 do
    sum_a := sum_a + a[i]; // вычисление суммы A

  for i := 1 to 10 do
    sum_b := sum_b + b[i]; // вычисление суммы B
end;

// Процедура проверки и изменения массивов
// Параметры: a, b — по ссылке (var), sum_a, sum_b — по значению
procedure CheckSums(var a, b: TIntArray; sum_a, sum_b: Integer);
var
  i: Integer; // локальная переменная
begin
  if sum_a < sum_b then
  begin
    for i := 1 to 9 do // len(a) - 1
      a[i] := a[i] * 10;
  end
  else
  begin
    for i := 1 to 9 do
      b[i] := b[i] * 10;
  end;
end;

// ГЛАВНАЯ ПРОГРАММА
var
  a, b: TIntArray;     // глобальные переменные (массивы)
  sum_a, sum_b: Integer; // глобальные переменные (суммы)
begin
  GenMassive(a, b);             // фактические параметры
  GetSums(a, b, sum_a, sum_b);  // фактические параметры
  CheckSums(a, b, sum_a, sum_b);// фактические параметры

  // вывод результатов
  writeln('Массив A: ', a);
  writeln('Массив B: ', b);
  Writeln('Сумма A: ', sum_a);
  Writeln('Сумма B: ', sum_b);
end.
