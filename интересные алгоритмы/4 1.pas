var
  a, b: array[1..7] of integer;
  i, j, N: integer;

begin
  readln(N);
  for i := 1 to N do
  begin
    readln(a[i]);
  end;
  j := 0;
  for i := 1 to N do
    if a[i] mod 2 <> 0 then begin
      j := j + 1;
      b[j] := a[i];
    end;
  for i := 1 to j do
    writeln(b[i]);
end.