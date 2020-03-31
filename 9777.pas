var i,n,x,y,xmax,ymax: integer;
begin
  read(n);
  xmax:=0; ymax:=0;
  for i:= 1 to n do
  begin
    read(x);
    read(y);
    if x=0 then if abs(y)>ymax then ymax:=abs(y);
    if y=0 then if abs(x)>xmax then xmax:=abs(x);
  end;
  write(xmax*ymax/2);
end.