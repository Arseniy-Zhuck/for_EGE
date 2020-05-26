const k=3;
var i,n,a,sum,p: integer;
    ost: array[0..k-1] of integer;
    
begin
  read(n);
  for i:= 1 to n do
  begin
    read(a);
    p:=a mod 3;
    if a+ost[(k-p)mod 3]>sum then sum:=a+ost[(k-p)mod 3];
    if a>ost[p] then ost[p]:=a;
  end;
end.