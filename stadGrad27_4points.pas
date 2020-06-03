const m=60;
const b=80;
var ost,ostB: array[0..m-1] of integer; 
  // количество элементов с отстаком i
  // ost[15] - количество чисел mod 60 =15
  // ost100 количество чисел mod 60 =15 и >b=80
    count,i,n,a: integer;
begin
  read(n);
  for i:= 0 to m-1 do begin ost[i]:=0; ost100[i]:=0; end;
  count:=0;
  for i:= 1 to n do
  begin
    read(a); [75,195,255,15,15,12,72,132,315]   a= 75  
    if a>b then begin 
                      count:=count+ost[a mod m]; 
                      inc(ostB[a mod m]); 
                  end
             else count:=count+ostB[a mod m];
    inc(ost[a mod m]);
  end;
  writeln(count);
end.