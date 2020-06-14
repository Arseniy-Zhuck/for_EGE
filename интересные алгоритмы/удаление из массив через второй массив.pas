var A,B:array[1..7] of integer;
    i,j,n,k,x: integer;
    res: boolean;
    
    
    
begin
  read(n);
  for i:= 1 to n do read(a[i]);
 
 k:=0;
  for i:= 1 to n do
  begin
    res:=false;
    j:=1;
    while (j<=k) and (res=false) do
    begin
      res:= (b[j]=a[i]) or (res);
      j:=j+1;
    end;
    if res=false then
    begin
      k:=k+1;
      b[k]:=a[i];
    end;
  end;
  
  for i:= 1 to k do writeln(b[i]);
  
  
end.