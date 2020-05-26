var i,n,a,maxCh17,maxNeCh17,maxCh,maxNeCh: integer;
    left,right: integer;
begin
  read(n);
  maxCh17:=0; maxNeCh17:=0;   // max числа делятся на 17 чет и нечет
  maxCh:=0; maxNeCh:=0;       // max числа вообще чет и нечет
  left:=0; right:=0;          // итоговая пара для ответа
  for i:= 1 to n do
  begin
    read(a);
    if a mod 17 = 0 then if a mod 2 =0 then 
                                            begin
                                            if a+maxCh>left+right then 
                                              begin left:=a; right:=maxCh; end;
                                            if a>maxCh then maxCh:=a;
                                            if a>maxCh17 then maxCh17:=a;
                                            end
                                       else
                                            begin
                                            if a+maxNeCh>left+right then 
                                              begin left:=a; right:=maxNeCh; end;
                                            if a>maxNeCh then maxNeCh:=a;
                                            if a>maxNeCh17 then maxNeCh17:=a;
                                            end
                     else if a mod 2 =0 then
                                            begin
                                            if a+maxCh17>left+right then
                                              begin left:=a; right:=maxCh17; end;
                                            if a>maxCh then maxCh:=a;
                                            end
                                        else
                                            begin
                                            if a+maxNeCh17>left+right then
                                              begin left:=a; right:=maxNeCh17; end;
                                            if a>maxNeCh then maxNeCh:=a;
                                            end;
  end;
end.