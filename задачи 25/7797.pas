const
N= 40;
var
a: array [1..N] of longint;
i, j, k: longint;
begin
for i := 1 to N do
readln(a[i]);

k:=0;
for i:= 1 to n-1 do
    if ( (a[i]+a[i+1]) mod 6 <>0 )and(a[i]*a[i+1]<1000) then
        k:=k+1;

write(k);

end.