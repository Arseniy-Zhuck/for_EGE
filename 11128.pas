var i,n,a,min6,min6_2,min2,min3,min0,r,p: integer;
    min: array[1..5] of integer;
begin
  read(n);
  min6:=1001; min6_2:=1001; min2:=1001; min3:=1001; min0:=1001;
    
  for i:= 1 to n do
  begin
      
      read(a);
      if (a mod 2<>0)and(a mod 3<>0)and(a<min0) then min0:=a;
      if (a mod 2<>0)and(a mod 3=0)and(a<min3) then min3:=a;
      if (a mod 2=0)and(a mod 3<>0)and(a<min2) then min2:=a;
      if (a mod 2=0)and(a mod 3=0) then 
        if (a<min6) then
                    begin
            
                        min6_2:=min6;
                        min6:=a;
            
                    end
                    else  if a<min6_2 then min6_2:=a;
      
  end;
 
  min[1]:=min6*min6_2;
  min[2]:=min6*min0;
  min[3]:=min6*min2;
  min[4]:=min6*min3;
  min[5]:=min2*min3;
  
  p:=1001*1001;
  for i:= 1 to 5 do if min[i]<p then p:=min[i];
  
  read(r);
  writeln('Вычисленное контрольное значение ',p);
  if p=r then writeln('Контроль пройден')
         else writeln('Контроль не пройден');
 
  
  
end.