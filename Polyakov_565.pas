var i,n,t,a,b,mina,minb: integer;
function m(x,y: integer): integer;
begin
  if x<y then m:=x
  else m:=y;
end;

begin
  read(n);
  read(t);
  mina:=0;
  minb:=t;
  for i:= 1 to n do
  begin
    read(a,b);
    mina:=mina+a;
    minb:=m(mina+t,minb+b);
  end;
  write(minb);
end.