var b: array[0..5] of integer;
    n,i,x,count,k6,k2,k3,k0: integer;
    
begin
  read(n);
  for i:= 1 to 6 do readln(b[i mod 6]);
  count:=0;   // итговое количество пар 
  k6:=0; k3:=0; k2:=0; k0:=0; // количество чисел в отстойнике делящихся на ...
 for i:= 7 to n do
  begin
      read(x);
      if x*b[i mod 6] mod 6 = 0 then inc(count);
      if x mod 2 = 0 then if x mod 3 = 0 then count:=count+k6+k2+k3+k0
                                         else count:=count+k3+k6
                     else if x mod 3 = 0 then count:=count+k2+k6
                                         else count:=count+k6;
      if b[i mod 6] mod 2 = 0 then if b[i mod 6] mod 3 = 0 then inc(k6)
                                                           else inc(k2)
                              else if b[i mod 6] mod 3 = 0 then inc(k3)
                                                           else inc(k0);
      b[i mod 6]:=x;
  end;
  write(count);
 { 2 4 3 4 5 6 7 9 6 3 2 4 6 7}
  
end.
