﻿const K=10; // k четное
var i,n,a,min,ost,min_ost0,min_ost0_2,m1,m2: integer; 
    min_ost: array[1..132] of integer;
    // min_ost[45] - минимальное из чисел, которые при делении
    // на 133 дают остаток 45
begin
  read(n);
  min_ost0:=1001; min_ost0_2:=1001; m1:=1001; m2:=1001;
  for i:= 1 to 132 do min_ost[i]:=1001; // ИНИЦИАЛИЗАЦИЯ
  for i:= 1 to n do
  begin
    read(a);
    ost:= a mod K;
    if ost=0 then
    begin
      if a<min_ost0 then begin min_ost0_2:=min_ost0; min_ost0:=a; end
      else if a<min_ost0_2 then min_ost0_2:=a;
    end
    else if ost=k div 2 then
    begin
      if a<m1 then begin m2:=m1; m1:=a; end
      else if a<m2 then m2:=a;
    end
    else if min_ost[ost]>a then min_ost[ost]:=a;
  end;
  if (min_ost0<>1001) and (min_ost0_2<>1001) then min:= min_ost0 + min_ost0_2
  else min:=2001;
  if (m1<>1001) and (m2<>1001) and (m1+m2)<min then min:=m1+m2;
  for i:= 1 to k div 2 do
    if (min_ost[i]<>1001) and (min_ost[k-i]<>1001) then
      if (min_ost[i]+min_ost[k-i])<min then min:=(min_ost[i]+min_ost[k-i]);
  write(min);
end.