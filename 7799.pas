var
  a: array[0..3] of integer;
  i, N, x, min, otvet: integer;

begin
  readln(N);
  min := 1001;
  otvet := 2001;
  for i := 1 to 4 do
    readln(a[i mod 4]);
  for i := 5 to N do
  begin
    readln(x);
    if a[i mod 4] + x < otvet then
      otvet := a[i mod 4] + x;
    if x + min < otvet then
      otvet := x + min;
    if a[i mod 4] < min then
      min := a[i mod 4];
    a[i mod 4] := x;
  end;
  writeln(otvet);
end.