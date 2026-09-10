var
  cnt := 0;

procedure fib(i, n: integer);  // Параметризация
begin
  var ans := i + n;
  cnt += 1;
  Print(ans);
  if cnt < 10 then // База рекурсии
    fib(n, ans); // Декомпозиция
end;

begin
  var x:= 0;
  var y:= 1;
  fib(x,y);
end.