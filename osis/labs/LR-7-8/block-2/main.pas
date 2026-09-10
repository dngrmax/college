var
  s: string;
  i: integer;
  count_plus_minus: integer;
  count_before_zero: integer;

begin
  writeln('Введите строку:');
  readln(s);
  count_plus_minus := 0;
  count_before_zero := 0;

  for i := 1 to length(s) do
  begin
    if (s[i] = '+') or (s[i] = '-') then
    begin
      count_plus_minus := count_plus_minus + 1;
      if (i < length(s)) and (s[i+1] = '0') then
        count_before_zero := count_before_zero + 1;
    end;
  end;

  writeln('Общее количество "+" и "-": ', count_plus_minus);
  writeln('Количество "+" или "-" перед "0": ', count_before_zero);
end.
