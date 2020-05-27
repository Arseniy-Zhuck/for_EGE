var count, countChet, countNeChet, i, n, a, ost: integer;
    B: array[0..5] of integer;
//  [
//  countChet,countNeCh
//     отстойник
begin
  read(n);
  for i:= 1 to 6 do // {1,2,6,3,5,4}  a
    read(B[i mod 6]);  // [ 4, 1, 2, 6, 3, 5]
  countChet:=0; countNeChet:=0;  // инициализация отстойника
  count:=0;                    // инициализация ответа
   1,2,6,3,5,4,3,        {4,5,6,4,3,5},   7
  for i:= 7 to n do
  begin
    read(a);
    
    if (a+b[i mod 6]) mod 2 = 1 then count:= count + 1;  // массив B
    if a mod 2 =0 then count:= count + countNeChet      // c остойником
                  else count:= count + countChet;
    if b[i mod 6] mod 2 = 0 then countChet:=countChet + 1     
 {меняем характристики отстойника} else countNeChet:=countNeChet + 1;
    
    b[i mod 6]:=a;
  end;
  write(count);
end.
