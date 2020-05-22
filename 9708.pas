var i,n,a,max,max1,max7,max2,max14,max14_2: integer;
    little_massivchik: array[1..5] of integer;
begin
  read(n);
  max1:=0; max7:=0;
  max2:=0; max14:=0; max14_2:=0;
  for i:= 1 to n do
  begin
    read(a);
    if (a mod 2 <>0) and (a mod 7 <> 0) then 
      if a>max1 then max1:=a;
    if (a mod 2 <> 0) and (a mod 7 = 0) then
      if a>max7 then max7:=a;
    if (a mod 2 = 0) and (a mod 7<>0) then
      if a>max2 then max2:=a;        
    if (a mod 14 = 0) then
    begin
      if a>max14 then 
        begin max14_2:=max14, max14:=a; end
      else if a>max14_2 then max14_2:=a;
    end;
  end;
  little_massivchik[1]:=max14*max1;
  little_massivchik[2]:=max14*max2;
  little_massivchik[3]:=max14*max7;
  little_massivchik[4]:=max14*max14_2;
  little_massivchik[5]:=max2*max7;
  max:=0;
  for i:= 1 to 5 do
    if little_massivchik[i]>max then max:=little_massivchik[i];
  write(max);
end.