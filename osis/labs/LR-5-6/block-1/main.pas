program RandomArraySum;

var
  a, b: array[1..10] of Integer;
  i, a_sum, b_sum: Integer;
begin
  { Заполняем массивы случайными числами от 1 до 100 }
  for i := 1 to 10 do
  begin
    a[i] := Random(100) + 1;
    b[i] := Random(100) + 1;
  end;

  Writeln(a);
  Writeln(b);
  
  a_sum := 0;
  b_sum := 0;
  
  for i := 1 to 10 do
  begin
    if a[i] > 0 then
      a_sum := a_sum + a[i];
    if b[i] > 0 then
      b_sum := b_sum + b[i];
  end;

  if a_sum > b_sum then
  begin
    for i := 1 to 10 do
      b[i] := b[i] * 10;
      Writeln(b);
  end
  else
  begin
    for i := 1 to 10 do
      a[i] := a[i] * 10;
      Writeln(a);
  end;
end.
