var
b:array[0..5] of integer;
p,count,i,x,n,Kch,Knch:integer;

begin
  read(N);
  for i:= 1 to 6 do read(b[i mod 6]);
  Kch:=0; Knch:=0; count:=0;
  for i:= 7 to n do
  begin
      read(x);
      if (x+b[i mod 6]) mod 2 = 1 then count:=count+1;
      if x mod 2 = 0 then count:=count+Kknch
                     else count:=count+Kch;
      if b[i mod 6] mod 2 = 0 then inc(Kch)
                              else inc(Knch);
      b[i mod 6]:=x;
      
  end;
  
  
  writeln(count);
end.