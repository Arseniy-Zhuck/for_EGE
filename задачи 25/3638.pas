const
N=30;
var
a: array [1..N] of integer;
i, s, m: integer;

begin
    for i:=1 to N do readln(a[i]);
    s:=0; m:=0;
    for i:= 1 to n do 
        if a[i]<0 then
            begin
                s:=s+a[i];
                m:=m+1;
            end;
    
    
    write(s/m);
    
    
    
end.