const
N=30;
var
a: array [1..N] of integer;
i, s: integer;

begin
    for i:=1 to N do readln(a[i]);
    s:=0;
    for i:= 1 to n do 
        if a[i]<0 then 
            s:=s+a[i];
    if s= 0 then writeln('NO')
            else writeln(S); 

end.