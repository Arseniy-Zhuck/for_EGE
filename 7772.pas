var A: array[0..7] of integer;
    i,n,x,max,otvet: integer;
begin
  readln(x);
  for i:= 1 to 8 do readln(a[i mod 8]);
  
  for i:= 9 to n do
  begin
    read(x); 
    if a[i mod 8]*x > otvet then otvet:= a[i mod 8]*x;
     if x*max >otvet then otvet:=x*max;
     if a[i mod 8]> max then max:=a[i mod 8];
     a[i mod 8]:=x;
  end;
  write(otvet);
end.

