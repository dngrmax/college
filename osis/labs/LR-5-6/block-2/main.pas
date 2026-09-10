program БАМБАМБИМБИМ БРР БРР ПАТАПИМ;

var
  a: array[1..10] of Integer;
  i, count, max_count: Integer;
begin
  { Заполняем массив случайными числами от 1 до 10 }
  count:=0;
  max_count:=0;
  for i := 1 to 10 do
  begin
    a[i] := Random(10) + 1;
  end;
  Writeln(a);
  
  for i:=1 to 9 do
  begin
    if a[i] >= a[i+1] then count := count + 1
    else begin
      count:= count + 1;
      if max_count < count then max_count:= count;
      count:=0
    end;
    end;
    Writeln(max_count)
  end.