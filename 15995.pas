var
b:array[0..4] of integer;
i,n,x,count,k13:integer;
begin
  readln(n);
  for i:=1 to 5 do
    readln( b[ i mod 5]);
    k13:=0; count:=0;
  for i:=6 to n do
  begin
    readln(x);
    if (x * b[i mod 5]) mod 13 = 0 then count:=count+1;
    if (x mod 13 =0) then count:=count+(i-5-1)
                     else count:=count+k13;
    if (b[i mod 5] mod 13 =0) then inc(k13);
    b[i mod 5]:=x;
  end;
  writeln(count);
  
  
   { 12 39 21 25 12}
  
end. 