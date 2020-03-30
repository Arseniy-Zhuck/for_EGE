const m=6;
var a: array[0..m-1] of integer;
    n,i,x,count,c2,c3,c6,c0: integer;
    
begin
  
  read(n);
  for i:= 1 to m do read(a[i mod m]);
  count:=0;
  c0:=0; c2:=0; c3:=0; c6:=0;
  for i:= m+1 to n do
  begin
      
      read(x);
      if x*a[i mod m] mod 6 = 0 then inc(count);
      if x mod 2 =0 then
      begin
          
          if x mod 3 =0 then count:=count+c0+c2+c3+c6
                        else count:=count+c3;
                     
      end
      else
          if x mod 3 =0 then count:=count+c2
                        else count:=count+c6;
      
      if a[i mod m] mod 2 = 0 then 
          if a[i mod m] mod 3 =0 then inc(c6)
                                 else inc(c2)
                              else
          if a[i mod m] mod 3 = 0 then inc(c3)
                                  else inc(c0);
      a[i mod m]:=x;
      
  end;
  write(count);
  
end.