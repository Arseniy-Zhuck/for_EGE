var a:array[1..8] of integer;
    i,n,x,step10: integer;
    //[1,2,5,8,6]   12586


begin
  read(n);
  for i:= 1 to n do readln(a[i]);
  x:=0;
  step10:=1;
  for i:= n downto 1 do 
    begin
      x:=x+a[i]*step10;
      step10:=step10*10;
    end;
  write(x);
end.
// 1+1+1+1+1+1+...+1+1+1=3n



// 1+1+n-1=n+1
// 1+1+n-2=n
//...
// 1+1+0 = 2
// 2+3+4+..+n+1 = (n+3)n/2 = n^2


