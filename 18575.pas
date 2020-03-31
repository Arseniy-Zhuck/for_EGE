var b: array[0..5] of integer;
    ost: array[0..2] of integer;
    i,n,x,count,p: integer;
    
    
begin
  read(n);
  for i:= 1 to 6 do read(b[i mod 6]);
  
  for i:= 0 to 2 do ost[i]:=0;
  count:=0;
  
  for i:= 7 to n do 
  begin
      read(x);
      p:=x mod 3;
      if (x+b[i mod 6]) mod 3 =0 then inc(count);
      count:=count+ost[(3-p) mod 3];
      p:=b[i mod 6] mod 3;
      inc(ost[p]);
      b[i mod 6]:=x;
      
      {
      if p=1 then count:=count+ost[2];
      if p=2 then count:=count+ost[1];
      if p=0 then count:=count+ost[0];
      p:=b[i mod 6] mod 3;
      if p=0 then inc(ost[0]);
      if p=1 then inc(ost[1]);
      if p=2 then inc(ost[2]);     
      }
    end;
    write(count);
  
  
end.