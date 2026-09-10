var x,y:integer;
begin
  Write('Введите х-координату: ');
  Read(x);
  Write('Введите y-координату: ');
  Read(y);
  if (x > 0) and (y > 0) then writeln('1-четверть');
  if (x < 0) and (y > 0) then writeln('2-четверть');
  if (x < 0) and (y < 0) then writeln('3-четверть');
  if (x > 0) and (y < 0) then writeln('4-четверть');
end.