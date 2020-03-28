var
  N, a, c0, c2, c5, c10, x, i: integer;

begin
  c0 := 0; c2 := 0; c5 := 0; c10 := 0;
  readln(N);
  x := 0;
  for i := 1 to N do
  begin
    readln(a);
    if a mod 2 = 0 then begin
      if a mod 5 = 0 then
        c10 := c10 + 1
      else
        c2 := c2 + 1;
    end
    else if a mod 5 = 0 then
      c5 := c5 + 1
    else
      c0 := c0 + 1
  end;
  x := c0 * c10 + c2 * c5 + c5 * c10;
  writeln(x);
end.
