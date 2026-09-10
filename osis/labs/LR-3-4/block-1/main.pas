var i,step:integer;
begin
  Write('Введите шаг: ');
  Read(step);
  Writeln('x    y=x**2');
  for i:=2 to 12 step step do
  begin
    Writeln(i,'      ',Power(i, 2));
  end;
end.