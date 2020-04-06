var i,n,x,y,max1,max2: integer;
begin
  read(n);
  max1:=0;
  max2:=0;
  
  for i:= 1 to n do
  begin
      read(x,y);
      if x=y then if abs(x)> max1 then max1:=abs(x);
      if x=-y then if abs(x)>max2 then max2:=abs(x);
  end;
  
  writeln(max1*max2);
end.