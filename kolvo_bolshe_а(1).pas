﻿var N: array[1..10] of real; {integer целые,   real дроби}
    f,i,kolvo: integer; //обязательно

begin
  writeln('vvedite kolvo chisel');
  read(f);
  for i:= 1 to f do read(N[i]); // прочитать с клавиатуры
  { N[1]:=5;
    N[2]:=10;
  } 
  kolvo:=0;
  for i:= 1 to f do // что делать с элементом под номером i
      if N[i]>N[1] then kolvo:=kolvo+1;
  
  write(kolvo);
  
  
end.