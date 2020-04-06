const
N=6;
var
a: array [1..N] of real;
d, r: real;
i, j, k: integer;
begin
    for i:=1 to N do
    readln(a[i]);
    r:=0;
    for i:= 1 to N-1 do
        begin      
            d:=abs(a[i]-a[i+1]);
            if d>r then 
                      begin
                      r:=d; // в переменной r максимум разности
                      j:=i;
                      k:=i+1;
                      end;
        end;
    
    write(a[j],' ',a[k]);



end.