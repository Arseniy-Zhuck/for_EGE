const
N=5;
var
a: array [1..N] of integer;
i, k, m: integer;
begin
  for i:=1 to N do
  readln(a[i]);
  m:=30001;
  for i:= 1 to n do
      if a[i] mod 2 = 0 then
          if a[i]<m then m:=a[i];
  
  for i:= 1 to n do 
      if a[i] mod 2 = 0 then
          a[i]:= a[i] - (m-2);
          
  for i:= 1 to n do 
      write(a[i]);
end.
  
  
  
  





end.