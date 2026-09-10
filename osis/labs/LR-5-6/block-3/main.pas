program Массивы;
var
  arr: array[1..40] of Integer;
  n, i, j: Integer;
begin

  n := 20;

  { Заполняем массив случайными числами от -100 до 100 }
  for i := 1 to n do
  begin
    arr[i] := Random(201) - 100;
  end;
  
  Writeln('Исходный массив: ', arr);
  i := 1;
  while i <= n do
  begin
    if arr[i] < 0 then
    begin
      { сдвигаем элементы вправо, чтобы вставить индекс, потому что я не знаю как сделать по другому }
      for j := n downto i + 1 do
        arr[j + 1] := arr[j];
      arr[i + 1] := i; { вставляем номер элемента }
      n := n + 1;      { увеличиваем длину массива }
      i := i + 1;      { пропускаем вставленный элемент }
    end;
    i := i + 1;
  end;

  Writeln('Результат: ',arr);
end.
