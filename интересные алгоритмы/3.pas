var a: array[1..7] of integer;
    i,j,n,x: integer;
    res: boolean;

//[1,2,3,4,5,6,7,2,1,1]   dec(n)
begin
  read(n);
  for i:= 1 to n do read(a[i]);
  
  i:=1;
  while i<=n do
  begin
    x:=a[i];
    res:=false;
    j:=1;
    while (j<=i-1) and (res=false) do
    begin
      res:= res or (a[j]=x);
      j:=j+1;
    end;
    if res then
      begin
    dec(n);
    for j:= i to n do a[j]:=a[j+1];
      end
    else inc(i);
  end;
  
  for i:= 1 to n do writeln(a[i]);
  
  
end.