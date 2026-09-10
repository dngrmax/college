var N, M, K: integer;
begin
  Write('Введите количество найденных банок медведем: ');
  Read(N);
  Write('Введите количество мёда в 1 банке: ');
  Read(M);
  Write('Введите количество мёда необходимое для зимы: ');
  Read(K);
  if (N*M) > K then Write('YES')
  else Write('NO');
end.