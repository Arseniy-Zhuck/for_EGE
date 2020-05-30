const m=80;
const b=100;
var ost,ost100: array[0..m-1] of integer; // количество элементов с отстаком i
    count,i,n,a: integer;
begin
  read(n);
  for i:= 0 to m-1 do begin ost[i]:=0; ost100[i]:=0; end;
  count:=0;
  for i:= 1 to n do
  begin
    read(a);
    if a>100 then begin 
                      count:=count+ost[a mod m]; 
                      inc(ost100[a mod m]); 
                  end
             else count:=count+ost100[a mod m];
    inc(ost[a mod m]);
  end;
  writeln(count);
end.