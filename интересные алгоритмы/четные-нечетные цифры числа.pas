var
  a, step10, step101, otvet1, otvet2: integer;

begin
  readln(a);
  step10 := 1;
  step101 := 1;
  otvet1 := 0;
  otvet2 := 0;
  while a > 0 do
  begin
    if a mod 2 = 0 then
    begin
      otvet2 := otvet2 + (a mod 10) * step10;
      step10 := step10 * 10;
    end
    else begin
      otvet1 := otvet1 + (a mod 10) * step101;
      step101 := step101 * 10;
    end;
    a := a div 10;
  end;
  writeln(otvet1);
  writeln(otvet2);
  writeln(otvet1 + otvet2);
end.