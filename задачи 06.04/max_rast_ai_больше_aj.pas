var b: array[0..5] of integer;
i,n,x,left,right,max: integer;
begin
  read(n);
  for i:= 1 to 6 do read(b[i mod 6]);
  left:=0; right:=0; max:=0;
  for i:= 7 to n do
  begin
    read(x);
    if (x*b[i mod 6]>left*right) and (x<b[i mod 6]) then 
            begin
                left:=b[i mod 6];
                rigth:=x;
            end;
    if (x*max)>left*right) and (x<max) then
            begin
                left:=max;
                rigth:=x;
            end;
    if b[i mod 6]> max then max:=b[i mod 6];
    b[i mod 6]:=x;
    
  end;
end.