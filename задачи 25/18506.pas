const
N=2019;
var
a: array [1..N] of integer;
i, m1, m2: integer;
begin
for i:=1 to N do
readln(a[i]);

m2:=0; m1:=15000;  
for i:= 1 to n do 
    if (a[i] mod 2 <> 0) then
       begin
          if a[i]>m2 then m2:=a[i];  // максимум его в m2
          if a[i]<m1 then m1:=a[i];  // минимум его в m1
       end;

for i:= 1 to n do
    if (a[i] mod 2 = 0) and (a[i]>m1) and (a[i]<m2) then
        a[i]:=a[i]-m1;

for i:= 1 to n do
    writeln(a[i]);
 
    
end.