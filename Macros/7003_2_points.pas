  var A: array[1..6] of integer;
      i,j,n,R,max: integer;
  begin
    // чтение
    read(n);
    for i:= 1 to n do readln(a[i]);
    read(R);
    // обработка
    max:=0;
    for i:= 1 to n-1 do
      for j:= i+1 to n do
        if (a[i]*a[j]>max) and (a[i]*a[j] mod 15 <>0)
          then max:=a[i]*a[j];
    // вывод
    writeln('Получено чисел: ',n);
    writeln('Приянтое контрольное значение ',R);
    if max=0 then writeln('Контроль не пройден') else
      begin 
        writeln('Вычисленное контрольное значение ',max);
        if max=R then writeln('Контроль пройден')
          else writeln('Контроль не пройден');
      end;
  end.