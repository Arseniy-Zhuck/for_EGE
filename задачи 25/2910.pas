var A: array[1..5,1..5] of integer;
    i,j,n,max,sum: integer;
    
begin
  read(n);
  for i:= 1 to n do
    for j:= 1 to n do
      readln(A[i,j]);
      
  sum:=0;
  for i:= 1 to n do
  begin
    max:=a[i,1];
    for j:= 1 to n do 
      if a[i,j]>max then max:=a[i,j];
    sum:=sum+max;
  end;
  
  writeln(sum);
  
end.
