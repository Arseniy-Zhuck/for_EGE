var
  a, n, r, max, max7: integer;

begin
  readln(a);
  n := 0;
  while a <> 0 do
  begin
    n := n + 1;
    if (a mod 7 = 0) and (a mod 49 <> 0) and (a > max7) then max7 := a;
    if (a mod 7 <> 0) and (a > max) then max := a;
    readln(a);
  end;
  readln(r);
  writeln('Введено чисел: ', n);
  writeln('Контрольное значение: ', r);
  writeln('Вычисленное значение: ', max * max7);
  if max * max7 = r then
    writeln('Значения совпали')
  else writeln('Значения не совпали')
end.