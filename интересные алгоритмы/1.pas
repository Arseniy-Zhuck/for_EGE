var
  a: array[0..9] of integer;
  i, x, j: integer;

begin
  for i := 0 to 9 do
    a[i] := 0;
  readln(x);
  while x > 0 do
  begin
    a[x mod 10] := a[x mod 10] + 1;
    x := x div 10;
  end;
  for i := 0 to 9 do
    if a[i] > 0 then
      for j := 1 to a[i] do
        writeln(i);
end.