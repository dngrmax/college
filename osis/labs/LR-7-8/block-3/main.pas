var
  s, result: string;
  i: integer;

begin
  writeln('Введите строку:');
  readln(s);
  result := '';
  i := 1;
  while i <= length(s) do
  begin
    if (s[i] = 'x') and (i + 3 <= length(s)) and (copy(s, i + 1, 3) = 'abc') then
    begin
      i := i + 1; 
    end
    
    else
    begin
      result := result + s[i];
      i := i + 1;
    end;
  end;

  writeln('Результат: ', result);
end.
