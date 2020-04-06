const
N=30;
var
a: array [1..N] of longint;
i, j, p: longint;
begin
  for i := 1 to N do
  readln(a[i]);
  
  p:=1;
  for i:= 1 to n do
      if (a[i] mod 2 <> 0)and(a[i] mod 3 = 0) then
          p:=p*a[i];
  
  write(p);
  
end.