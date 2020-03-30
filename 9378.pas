var A: array[0..5] of integer;
    i,n,x,pr,min,minch: integer;
    
    
    begin
      read(n);
      for i:= 1 to 6 do read(a[i mod 6]);
      
      min:=1001;
      minch:=1001;
      pr:=1001*1001;
      
      for i:= 7 to n do
      begin
        
          read(x);
          if (x*a[i mod 6] mod 2 =0) and (x*a[i mod 6]<pr) then pr:=x*a[i mod 6];
          if x mod 2 =0 then
              begin 
                  if x*min<pr then pr:= x*min;
              end
          else if x*minch<pr then pr:=x*minch;
          if a[i mod 6]<min then min:=a[i mod 6];
          if a[i mod 6] mod 2 = 0 then if a[i mod 6]<minch then minch:=a[i mod 6];
          a[i mod 6]:=x;                 
      end;
      write(pr);
      
      
      
    end.