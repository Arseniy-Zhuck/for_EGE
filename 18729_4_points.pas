var mass: array[0..117] of integer;
    ost,i,n,a,left,right,sum: integer;
begin
  read(n);// [2,3,116,115,...] ->  mass[0,0,2,3,...,85,...,116]  a -> i 
  for i:=0 to 117 do mass[i]:=0;
  left:=0; right:=0; sum:=0;
  for i:= 1 to n do
  begin
      read(a);
      ost:=a mod 117;
      if ost>0 then
          begin
              if (a+mass[117-ost]>sum)and (mass[117-ost]>a) then
                begin
                  sum:=a+mass[117-ost];
                  left:=mass[117-ost];
                  right:=a;
                end;
          end
      else
          begin
              if (a+mass[0]>sum) and (mass[0]>a) then
                begin
                  sum:=a+mass[0];
                  left:=mass[0];
                  right:=a;
                end;
          end;
     if a>mass[ost] then mass[ost]:=a;
  end;
  writeln(left,'  ',right);
end.