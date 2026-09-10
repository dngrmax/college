function NOD(a,b: integer): integer;  // Параметризация
  begin
    var res := a mod b;
    if res = 0 then NOD:= b // База рекурсии
    else
      NOD:= NOD(b, res); // Декомпозиция
  end;

begin
  Println(NOD(3430, 1365));
end.