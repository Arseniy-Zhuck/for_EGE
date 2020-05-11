var A: array[1..1000] of integer;
    C: array[0..18] of integer;
    i,n,s,min,imin: integer;
 
begin
  //чтение
  read(N);
  for i:= 1 to n do read(a[i]);
  // обработка
  for i:= 0 to 18 do C[i]:=0; // инициализация
  for i:= 1 to n do
  begin
    s:=(a[i] div 10)mod 10  + (a[i] mod 10);
    C[s]:=C[s]+1;
  end;
      // пройти по массиву С и найти в нем минимум
  min:=1001;
  for i:= 0 to 18 do 
    if (C[i]<min) and (C[i]>=1) then
    begin
      min:=C[i];
      imin:=i;
    end;
  writeln(imin);
end.

[14//,417,//123,3,4841] A

[0,0,0,1,0,3,0,0,1,0,0,0,0,0,0,0,0,0,0] C





