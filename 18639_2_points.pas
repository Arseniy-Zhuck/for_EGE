var A: array[1..1000] integer;
    i,j,n: integer;
    max: integer;
    
begin
  // так как пары элементов - вложенные циклы
  
  // ввод данных
  read(n);
  for i:= 1 to n do readln(A[i]);
  // обработка данных
  max:=0;
  for i:= 1 to n-6 do
      for j:= i+6 to n do
          if (a[i]+a[j]>max)and((a[i]+a[j]) mod 2=0) then 
              max:=a[i]+a[j];
  
  // вывод данных
  if max=0 then write(0) else write(max);
end.
// Если пар с чётной суммой нет, ответ считается равным 0.
// Привести пример последовательности, где нет пар с четной суммой
// [1,2,3,4,5,6,8]
// что выведет программа???