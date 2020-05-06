// последовательность надо где-то хранить
var A: array[1..1000] of integer;
    i,j,n: integer;
    //  n количество элементов
    // i переменная цикла
    count: integer; // накапливаемая переменная для количества
    
    
begin
  // чтение исходных данных
  read(N);
  for i:= 1 to N do read(A[i]);
  
  // обработка данных
  count:=0;
  for i:= 1 to n-1 do
      for j:= i+1 to n do
          if a[i]*a[j] mod 14 <> 0 then count:=count+1;  
  // вывод данных
  write(count);
end.
