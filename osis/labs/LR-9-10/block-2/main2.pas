const
  n = 8;

type
  Matrix = array[1..n, 1..n] of integer;
  Vector = array[1..n] of integer;

procedure FillMatrix(var a: Matrix);
var
  i, j: integer;
begin
  for i := 1 to n do
    for j := 1 to n do
      a[i, j] := random(9) + 1;  { числа от 1 до 9 }
end;

procedure PrintMatrix(a: Matrix);
var
  i, j: integer;
begin
  writeln('Исходная матрица:');
  for i := 1 to n do
  begin
    for j := 1 to n do
      write(a[i, j]:3);
    writeln;
  end;
end;

function HasUniqueMax(row: integer; a: Matrix): integer;
var
  j, maxVal, countMax: integer;
begin
  maxVal := a[row, 1];
  for j := 2 to n do
    if a[row, j] > maxVal then
      maxVal := a[row, j];

  countMax := 0;
  for j := 1 to n do
    if a[row, j] = maxVal then
      countMax := countMax + 1;

  if countMax = 1 then
    HasUniqueMax := 1
  else
    HasUniqueMax := -1;
end;

procedure BuildVector(a: Matrix; var b: Vector);
var
  i: integer;
begin
  for i := 1 to n do
    b[i] := HasUniqueMax(i, a);
end;

procedure PrintVector(b: Vector);
var
  i: integer;
begin
  writeln('Результирующий массив:');
  for i := 1 to n do
    write(b[i]:4);
  writeln;
end;

var
  a: Matrix;
  b: Vector;

begin
  FillMatrix(a);
  PrintMatrix(a);
  BuildVector(a, b);
  PrintVector(b);
end.
