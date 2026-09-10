procedure obr_rec(a, b: integer); // Параметризация
  begin
    if a < b then Print(0) // База рекурсии
    else begin
      Print(a);
      obr_rec(a-2, b);// Декомпозиция
    end;
  end;
  
  begin
    obr_rec(25,0);
  end.