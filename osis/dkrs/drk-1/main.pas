var x, y: real;
begin
  Writeln('Введите x: ');
  Read(x);
  if x < -4 then begin
     if (-10 <= x) and (x <= -4) then
       y:= Power(E, x) * (-x)- Power(Abs(x), 0.1*x)
     else y:= 86/(Power(x, 2)) + Tan(x)
  end
  else 
    y:= x*3/Cos(x) - Log10(Abs(x))/Cos(2*x);
  
  Writeln('y равен: ', y:10:2);
end.