var cars:integer;
var money:real;
begin
  writeln('Введите количество проданных машин:');
  read(cars);
  writeln('Введите цену одной машины:');
  read(money);
  writeln('Выручка: ', cars*money:10:2, ' руб.');
end.