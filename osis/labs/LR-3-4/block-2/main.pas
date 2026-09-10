var courier, day: integer;
begin
  courier:= 1000;
  day:= 1;
  while courier <= 30000 do begin
    courier:= courier * 2;
    day:= day + 1;
  end;
  writeln('Согласился на ', day, ' день')
end.