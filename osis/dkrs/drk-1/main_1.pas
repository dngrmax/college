var x, y: real;
begin
  x:= -12.0;
  Writeln('X            Y');
  while (x >= -12) and (x <= -2) do begin
    if x < -4 then begin
       if (-10 <= x) and (x <= -4) then
          y:= Power(E, x) * (-x)- Power(Abs(x), 0.1*x)
       else y:= 86/(Power(x, 2)) + Tan(x)
    end
    
  else 
    y:= x*3/Cos(x) - Log10(Abs(x))/Cos(2*x);

    Writeln(x:4:2, '    ',y:6:2 );
    x:= x + 0.3;
  end;
 
end.