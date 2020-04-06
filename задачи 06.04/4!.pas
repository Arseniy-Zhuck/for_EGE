var
n,i,x,xmaxp,xmaxn,ymaxp,ymaxn,y:integer;
s:real;
begin
  readln(n);
  xmaxp:=-100000;xmaxn:=100000;ymaxp:=0;ymaxn:=0;
  for i:=1 to n do
  begin
    readln(x,y);
    if (y=0) then
      if x>xmaxp then xmaxp:=x;
    if  (y=0) then 
      if x<xmaxn then xmaxn:=x;
    if  y>ymaxp then ymaxp:=y;
    if  y<ymaxn then ymaxn:=y;
  end;
  writeln((xmaxp-xmaxn)*(ymaxp-ymaxn)/2);
end.