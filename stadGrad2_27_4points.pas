const M=80;
const B=50;
var ost,ostB: array[0..m-1] of integer; // количество элементов с отстаком i
    count,i,n,a,r: integer;

begin 
  read(n);
  for i:=0 to m-1 do begin ost[i]:=0; ostB[i]:=0; end;
  count:=0;
  for i:= 1 to n do
    begin
      read(a);
      r:= a mod m;
      if r=0 then 
      begin
        if a>B  then count:=count+ost[0]
                else count:=count+ostB[0];
      end
      else
        if a>B  then count:=count+ost[m-r]
                else count:=count+ostB[m-r];
      if a>B then inc(ostB[r]);
      inc(ost[r]);
    end;
  write(count);
end.
    