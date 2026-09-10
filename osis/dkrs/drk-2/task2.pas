var
  s, sub: string;
  i, j, k, pos, len_s, len_sub: Integer;
  result: string;
  find: Boolean;

begin
  Write('Введите строку: ');
  ReadLn(s);
  Write('Введите подстроку для инверсии: ');
  ReadLn(sub);

  len_s := Length(s);
  len_sub := Length(sub);
  result := s; // скопируем исходную строку, чтобы менять в ней символы

  i := 1;
  while i <= len_s - len_sub + 1 do
  begin
    // Проверяем, начинается ли подстрока с позиции i
    find := True;
    for j := 1 to len_sub do
      if s[i + j - 1] <> sub[j] then
      begin
        find := False;        
        Break;
      end;

    // Если нашли совпадение, то инвертируем
    if find then
    begin
      for j := 1 to len_sub do
        result[i + j - 1] := sub[len_sub - j + 1]; // записываем символы в обратном порядке
      i := i + len_sub; // переходим за конец подстроки
    end
    else
      i := i + 1;
  end;

  WriteLn('Результат: ', result);
end.
