const m=60;
var   ost: array[0..m-1] of integer;
      left,right,a,i,n,r: integer;
      
begin
  read(n);
  left:=0; right:=0;
  for i:= 0 to m-1 do ost[i]:=0;
  // главный цикл
  for i:= 1 to n do
  begin
    read(a);
    r:=a mod m;
    if (ost[r]>0)and(ost[r]+a>left+right) then 
      begin left:=ost[r]; right:=a; end;
    if a>ost[r] then ost[r]:=a;
  end;
  writeln(left,'  ',right);
  end.