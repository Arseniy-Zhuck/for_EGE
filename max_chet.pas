var A: array[1..10] of integer;
    i,max,n,j: integer;
begin
  read(n);
  for i:= 1 to n do read(A[i]);
  
  i:=1;
  while (i<=n) and (a[i] mod 2 > 0) do
      i:=i+1;
  if i=n+1 then write('net') 
  else
    begin
        max:=a[i];
        for j:= i to n do if a[j]>max then max:=a[j];
        write(max);
    end;
    
  
end.