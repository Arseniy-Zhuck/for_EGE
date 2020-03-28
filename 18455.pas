var N, num, c0, c2, c5, c10, i, k:integer;

begin
   ReadLn(N);
   
   c0 := 0;
   c2 := 0;
   c5 := 0;
   c10 := 0;
   k := 0;
   
   for i := 1 to N do
   begin
      ReadLn (num);
      if (num mod 2 = 0) and (num mod 10 <> 0) then
         c2 := c2 + 1;
         
      if (num mod 5 = 0) and (num mod 10 <> 0) then
         c5 := c5 + 1;
         
      if (num <> 0) and (num mod 10 = 0) then
         c10 := c10 + 1
         
      else if num <> 0 then  
         c0 := c0 + 1;
    end;
         
         
    k := (c2*c5) + (c0*c10)+c10*(c10-1) div 2;
    
    WriteLn(k);
end.