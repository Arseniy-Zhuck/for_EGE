var minPr, min, minCh, i, n, a: integer;
    B: array[0..14] of integer;
begin
  read(n);
  for i:= 1 to 15 do
    readln(B[i mod 15]);
  minPr:= 1000001;
  min:=1001;
  minCH:=1001;
  for i:= 16 to n do
  begin
    read(a);
    if a*b[i mod 15] < minPr then minPr:=a*b[i mod 15];
    if a mod 2 = 0 then 
        begin if a*min < minPr then minPr:=a*min; end
                   else
        begin if a*minCh < minPr then minPr:=a*minCh; end;
    
    if b[i mod 15] < min then min:= b[i mod 15];
    if (b[i mod 15] mod 2 = 0) and (b[i mod 15] < minCh) then
        minCh:=b[i mod 15];
    
    b[i mod 15]:=a;
  end;
  if minPr=1000001 then minPr:=-1;
  write(minPr);
end.