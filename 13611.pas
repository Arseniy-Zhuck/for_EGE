var
a:array [1..8] of integer;
s,N,i,k, max:integer;
begin
  readln(N);
  max:=0;
  for i:=1 to 8 do
    a[i]:=0;
  for i:=1 to N do
    begin
    readln(s);
    k:=0;
        while s>0 do
        begin
          k:=k+1;
          s:=s div 10;
        end;
    a[k]:=a[k]+1;
    end;
    
    
    
    k:=0;
    for i:=1 to 8 do
      if a[i]>=max then
        begin
        max:=a[i];
        k:=i;
        end;
      
      
      
      write(k, ' ');
        write(max);
end.