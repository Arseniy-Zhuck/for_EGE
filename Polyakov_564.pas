var
  i, N, max, maxs, ots, x: integer;
  a: array[0..6] of integer;

begin
  read(N);
  for i := 0 to 6 do 
    readln(a[i]);
  for i := 7 to N-1 do
  begin
    readln(x);
    ots := a[i mod 7]; 
    a[i mod 7] := x;
    if i = 7 then begin
      max := ots;
      maxs := ots + x;
    end
    else begin
      if ots > max then max := ots;
      if max + x > maxs then 
        maxs := max + x;
    end;     
  end;  
  writeln(maxs);  
end.