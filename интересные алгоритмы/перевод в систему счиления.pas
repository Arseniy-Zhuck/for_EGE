var a,newA,step10,m: integer;
begin
  read(A);
  read(m);
  newA:=0;
  step10:=1;
  while A>0 do
  begin
    newA:=newA+(a mod m)*step10;
    step10:=step10*10;
    a:=a div m;
  end;
  write(newA);
end.