var maxPr, max, i,n,a: integer;
    b: array[0..7] of integer;

begin
  read(n);
  for i:= 1 to 8 do readln(b[i mod 8]);
  max:=-100;
  maxPr:=-37;
  for i:= 9 to n do
  begin
    read(a);
    if a*b[i mod 8]> maxPr then maxPr:=a*b[i mod 8];
    if a*max > maxPr then maxPr:= a*max;
    if b[i mod 8]> max then max:=b[i mod 8];
    b[i mod 8]:=a;
  end;
  writeln(maxPr);
  
end.