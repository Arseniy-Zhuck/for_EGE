var
  a: array[1..7] of integer;
  i, k, j, N: integer;

begin
  readln(N);
  for i := 1 to N do
    readln(a[i]);
  i := 1;
  j := N;
  while i <= j do
    if a[i] mod 2 = 0 then begin
      j := j - 1;
      for k := i to j do
        a[k] := a[k + 1];
    end
    else i := i + 1;
  for i := 1 to j do
    writeln(a[i]);
end.