var a,count,b: integer;

  function summDel(n: integer): integer;
  var i,s,k: integer;
  begin
      s:=0;
      k:=trunc(sqrt(n));
      for i:= 2 to k do
        if n mod i = 0 then s:=s+i+(n div i);
      summDel:=s;
  end;
  
begin
  count:=0;
  //write(summDel(1000000));
  for a:= 3 to 1000000 do
  begin
    //if a mod 100000 = 0 then write(a);
    b:=summDel(a);
    if (a<>b)and(summDel(b)=a) then inc(count);
  end;
  write(count div 2);
  
  
end.