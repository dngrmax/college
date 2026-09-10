var sum, total_bottles, buy_bottles: integer;
begin
  write('Введите вашу сумму денег: ');
  read(sum);
  buy_bottles:= sum div 45;
  total_bottles:= total_bottles+buy_bottles;
  sum:=sum mod 45 + buy_bottles * 20;
  if sum >= 45 then total_bottles:= total_bottles + 1;
  Writeln('Куплено бутылок:', total_bottles);
end.