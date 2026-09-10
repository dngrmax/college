var x1,y1,x2,y2: integer;
begin
    write('Введите координаты слона: ');
    readln(x1,y1);
    write('Введите координаты фигуры: ');
    readln(x2,y2);
    if (x1+y1=x2+y2) or (x1-y1=y2-y2) then
        writeln ('Слон бьёт фигуру.');
    else
        writeln ('Слон не бьёт фигуру.');
    readln;
end.
