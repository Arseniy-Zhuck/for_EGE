var n,i,left,right,a,maxNeChet,maxChet,maxNeChet5,maxChet5: integer;


begin
  read(n);
  maxNeChet:=0; maxChet:=0;
  maxNeChet5:=0; maxChet5:=0;
  left:=0; right:=0; // ответ
  for i:= 1 to n do
  begin
    read(a);
    if a mod 5 = 0 then if a mod 2 = 0 then
                                            begin
                                              if a*maxNeChet>left*right then
                                                begin left:=maxNeChet; right:=a; end;
                                              if a>maxChet then maxChet:=a;
                                              if a>maxChet5 then maxChet5:=a;
                                            end;
                                       else
                                            begin
                                              if a*maxChet>left*right then
                                                begin left:=maxChet; right:=a; end;
                                              if a>maxNeChet then maxNeChet:=a;
                                              if a>maxNeChet5 then maxNeChet5:=a;
                                            end
                    else if a mod 2 = 0 then
                                            begin
                                              if a*maxNeChet5 > left*right then
                                                begin left:=maxNeChet5; right:=a; end;
                                              if a>maxChet then maxChet:=a;  
                                            end
                                        else
                                            begin
                                              if a*maxChet5 > left*right then
                                                begin left:=maxchet5; right:=a; end;
                                              if a>maxNeChet then maxNeChet:=a;
                                            end;
  end;
  write(left,'  ',right);
end.