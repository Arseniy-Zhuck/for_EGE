var n,i,x,y: integer;
    ch: array [0..4] of integer;

function chet (x,y : integer) : integer;
begin
    if (x>0) and (y> 0) then chet:=1;
    if (x>0) and (y< 0) then chet:=4;
    if (x<0) and (y> 0) then chet:=2;
    if (x<0) and (y< 0) then chet:=3;
    if (x*y = 0 ) then chet:=0;
end;

begin
  read(n);
  for i:= 0 to 4 do ch[i]:=0;
  for i:= 1 to n do
  begin
    read(x,y);
    inc(ch[chet(x,y)]);
  end;
  write(ch[1]*ch[3]+ch[2]*ch[4]);
  
  
end.