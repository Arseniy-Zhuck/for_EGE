var A: array[1..5] of integer;
    i,j,n: integer;
    min,R: integer;
begin
    // чтение
    read(n);
    for i:= 1 to n do read(a[i]);
    read(R);
    // обработка
    min:=2001; // вычисленное контрольное значений
    for i:= 1 to n-1 do
        for j:=i+1 to n do
            if ((a[i]+a[j]) mod 2 =0)and (a[i]+a[j]<min) then
                min:=a[i]+a[j];
    
    //вывод данных
    writeln('Вычисленное контрольное значение: ',min);
    if min=R then writeln('Контроль пройден') 
        else writeln('Контроль не пройден');
end.