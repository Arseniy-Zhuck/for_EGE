const
N = 6;
var
  a: array [1..N] of integer;
  i, j, min: integer;
begin
  for i := 1 to N do
    readln(a[i]);
  
  min:=1001;  // инициализация
  for i:= 1 to n do
    if (a[i]>0) and (a[i] mod 3 <>0) then
        if a[i]<min then min:=a[i]; // находит минимум
  // после цикла!!!
  if min=1001 then write('не найдено') 
              else write(min);


end.