var
  s: string;
  elems: array of Char;   // массив уникальных символов
  counts: array of Integer; // массив их счётчиков
  i, j, n: Integer;
  found: Boolean;

begin
  Write('Введите строку: ');
  ReadLn(s);

  n := 0; // сколько уникальных символов нашли

  for i := 1 to Length(s) do
  begin
    found := False;

    // проверяем был ли уже такой символ
    for j := 0 to n - 1 do
      if elems[j] = s[i] then
      begin
        counts[j] := counts[j] + 1; // если был, то просто +1
        found := True;
        Break;
      end;

    // если символ новый, то добавляем
    if not found then
    begin
      SetLength(elems, n + 1); // увеличиваем длину массива на 1
      SetLength(counts, n + 1);
      elems[n] := s[i]; // добавляем новый символ
      counts[n] := 1;
      n := n + 1;
    end;
  end;

  // вывод результата
  for i := 0 to Length(elems) - 1 do
    WriteLn(elems[i], ': ', counts[i]);
end.
