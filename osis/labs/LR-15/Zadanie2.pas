function stepen(a, b: integer): integer;  // Параметризация
var
   answer: integer;
begin
  if (b = 0) then answer := 1 // База рекурсии
  else
    answer := a * (stepen(a, b - 1)); // Декомпозиция
  stepen := answer;    
end;

begin
  var x:= ReadInteger('Число?');
  var y:= ReadInteger('Степень?');
  Println($'Ответ: {stepen(x, y)}');
end.