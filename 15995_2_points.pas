var A: array[1..1000] of integer;
    i,j,n: integer;
    max,x,y: integer;
begin
  // чтение
  read(n);
  for i:= 1 to n do read(A[i]);
  // обработка
  max:=0; x:=0; y:=0;
  for i:= 1 to n-1 do
      for j:= i+1 to n do
          if ((a[i]+a[j]) mod 2 <>0)and(a[i]*a[j] mod 5=0)
              and (a[i]*a[j]>max) then
                  begin
                      max:=a[i]*a[j];
                      x:=a[i];
                      y:=a[j];
                  end;
  //вывод
  if max=0 then write(0) else write(x,'  ',y);
end.
