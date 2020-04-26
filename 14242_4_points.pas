var a: integer;
    k: array[0..18] of integer;
    n,i,max,imax: integer;
  
  function sum_2_cifr(x: integer): integer;
    var c1,c2: integer;
    begin
      c1:= x mod 10;
      c2:= (x div 10) mod 10;
      sum_2_cifr:= c1+c2;
    end;
   
begin
  // дан массив, найти количество элементов, у которых 
  //сумма двух последних цифр равна 11,12,13
  read(n);
   for i:= 0 to 18 do k[i]:=0;
  for i:= 1 to n do 
    begin
    read(a);
    inc(k[sum_2_cifr(a)]);
    end;
  for i:= 0 to 18 do writeln('summ_cifr ',i,', count = ',k[i]);
  max:=0;
  imax:=0;
  for i:= 0 to 18 do 
    if k[i]>= max then
    begin
      max:=k[i];
      imax:=i;
    end;
  write(imax);  
end.


{}