var golosa,ind: array[1..10] of integer;
    x,i,j,n,c,t: integer;
    
    
begin
  read(N);
  for i:= 1 to 10 do begin
                        golosa[i]:=0;
                        ind[i]:=i;
  end;
  for i:= 1 to n do 
  begin
    read(x);
    inc(golosa[x]);
  end;
  for i:= 1 to 10 do write(ind[i],' ',golosa[i],';');
      writeln;
      readln;
  c:=1;
  while c>0 do
      begin
          c:=0;
          for i:= 1 to 9 do 
            if golosa[i]>golosa[i+1] then
                begin
                    t:=golosa[i];
                    golosa[i]:=golosa[i+1];
                    golosa[i+1]:=t;
                    t:=ind[i];
                    ind[i]:=ind[i+1];
                    ind[i+1]:=t;
                    c:=c+1;
                end;
      end;
  for i:= 1 to 10 do if golosa[i]>0 then write(ind[i],'-',golosa[i],';  ');
  
end.