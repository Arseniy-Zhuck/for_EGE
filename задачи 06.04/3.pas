var
ch,r,Ax,Ay: array [0..4] of integer;
x,y: integer;
n,i,j,k : integer;

function mi(x,y: integer): integer;
begin
  if abs(x)<abs(y) then mi:=abs(x)
                   else mi:=abs(y);
end;


function chet (x,y : integer) : integer;
begin
if (x>0) and (y> 0) then chet:=1;
if (x>0) and (y< 0) then chet:=4;
if (x<0) and (y> 0) then chet:=2;
if (x<0) and (y< 0) then chet:=3;
if (x*y = 0 ) then chet:=0;
end;

begin
  
  readln (n);
  
  
  for i:= 0 to 4 do r[i]:=integer.MaxValue;
  for i:=1 to n do
  begin
    read(x,y);
    inc (ch [chet(x,y)]);
    if mi(x,y)<r[chet(x,y)] then
    begin
      r[chet(x,y)]:=mi(x,y);
      
      Ax[chet(x,y)]]:=x;
      Ay[chet(x,y)]]:=y;
      end;
    
    end;
  k:=1;
  m:=ch[1];
  for i:=2 to 4 do if ch[i]>m then begin k:=i; m:=ch[i]; end;
  writeln('K= ',k);
  writeln(' M= ',M);
  writeln('A = (',ax[k],', ',ay[k],')');
  writeln('R = ',r[k]);

end.
