var A: array[1..10000] of integer;
    i,n,x,cs,ost,max,imax: integer;
    C: array[0..27] of integer;
begin
  read(n);
  for i:= 1 to n do read(a[i]);
  for i:= 0 to 27 do C[i]:=0; 
  for i:= 1 to n do
  begin
    x:=A[i];
    sc:=0;
    while x>0 do
      begin
        ost:=x mod 10;
        sc:=sc+ost;
        x:=x div 10;
      end;
    C[sc]:=C[sc]+1; 
  end;
  max:=-1;
  for i:= 0 to 27 do
    if C[i]>max then
      begin max:=c[i]; imax:=i; end;
  writeln(imax);
end;



// в перменной sc будет сидеть сумма цифр числа