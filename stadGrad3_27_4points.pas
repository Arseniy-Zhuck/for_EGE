const m=80;
var   ost: array[0..m-1] of integer;
      left,right,a,i,n,r: integer;
      
begin
  read(n);
  left:=0; right:=0;
  for i:= 0 to m-1 do ost[i]:=0;
  // главный цикл     [60,20,110]
  for i:= 1 to n do
  begin
    read(a);
    r:=a mod m;
    if (ost[(m-r) mod m]>0) and (ost[(m-r) mod m]+a>left+right) then 
      begin left:=ost[(m-r) mod m]; right:=a; end;
    if a>ost[r] then ost[r]:=a;
  end;
  writeln(left,'  ',right);
  end.