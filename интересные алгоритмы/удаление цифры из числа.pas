var a,cifra,i,step10,otvet: integer;
begin
  read(a);
  read(cifra);
  step10:=1;
  otvet:=0;
  while a>0 do
  begin
    if a mod 10 <> cifra then
    begin
      otvet:=otvet+(a mod 10)*step10;
      step10:=step10*10;
    end;
    a:=a div 10;
  end;
  write(otvet);
end.