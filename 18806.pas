var i,n,a,r,left,right: integer;
    ost: array[0..119] of integer;
    
begin
  read(n);
  for i:= 0 to 119 do ost[i]:=0;
  left:=0; right:=0;
  for i:= 1 to n do
  begin
    read(a);
    r:=a mod 120;
    if r = 0 then
    begin
      if (ost[r]+a>left+right) then
        begin left:=osr[r]; right:=a; end;
    end
    else
     begin
        if (ost[120-r]+a>left+right)and(ost[120-r]>a) then
           begin left:=ost[120-r]; right:=a; end;
     end;
    if a>ost[r] then ost[r]:=a;
  end;
  if left<>0 then write(left,'  ',right)
              else write('NO');
end.    