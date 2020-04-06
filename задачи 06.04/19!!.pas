var
b: array [0..5] of integer;
ost: array[0..2] of integer;
i,n,x,k:integer;
begin
  readln(n);
  for i:=1 to 6 do
    readln(b[i mod 6]);
  k:=0;
  for i:= 0 to 2 ost[i]:=0;
  for i:=7 to n do
  begin
    readln(x);
    if (abs(x-b[i mod 6])) mod 3 =0 then inc(k);
    k:=k+ ost[x mod 3]; 
    
    inc(ost[b[i mod 6] mod 3]);
    b[i mod 6]:=x;
    
    
  end;
  writeln(k);
end.
{2 3 4 5 5 6 7 8 6 5 6 5 6 5 3 4 4 5 4 5}