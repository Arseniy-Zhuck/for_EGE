const
N=6;
var
a: array [1..N] of integer;
i, j, max: integer;
begin
  for i:=1 to N do
    readln (a[i]);
  
  max:=-1;
  for i:= 1 to n do
      if (a[i]>99) and (a[i]<1000) and (a[i] mod 8 <>0) then
          if a[i]>max then max:=a[i];
  
  if max = -1 then write('Не найдено')
              else write(max);



end.