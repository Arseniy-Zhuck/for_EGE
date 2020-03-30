var a: array[1..5,1..5] of integer;
    i,j,n,m,s: integer;
    
begin
  writeln('kol-vo strok: ');
  read(n);
  writeln('kol-vo stolbcov: ');
  read(m);
  
  
  for i:= 1 to n do
      for j:= 1 to m do
          read(a[i,j]);
  
  s:=0;
  for i:= 1 to n do
      for j:= 1 to m do
          s:=s+a[i,j];
          
  write(S);
  
  
end.