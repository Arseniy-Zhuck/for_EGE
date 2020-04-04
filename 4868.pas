var x,y,maxXp,minXp,maxXm,minXm,maxYp,maxYm,n,i: integer;
    Sp,Sm: real;
begin
  read(n);
  Sp:=0; Sm:=0;
  minXp:=10000; minXm:=0; maxXp:=0; maxXm:=-10000; maxYp:=0; maxYm:=0;
  for i:= 1 to n do
      begin
          read(x);
          read(y);
          if y=0 then begin
                        if x>maxXp then maxXp:=x; // самая правая точка
                        if (x>0) and (x<minXp) then minXp:=x; // точка с
                        if x<minXm then minXm:=x; // самая левая точка
                        if (x<0) and (x>maxXm) then maxXm:=x; // точка f
                      end
                 else begin
                        if x>0 then if abs(y)>maxYp then maxYp:=abs(y);
                        if x<0 then if abs(y)>maxYm then maxYm:=abs(y);
                      end;
      end;
       //write(maxXp,' ',minXp,' ',maxXm,' ',minXm,' ',maxYp,' ',maxYm);
      if (minXm<>0) and (maxXm<>-10000) and (maxYm<>0) then Sm:=(maxXm-minXm)*maxYm/2;
      
      if (minXp<>10000) and (maxXp<>0) and (maxYp<>0) then Sp:=(maxXp-minXp)*maxYp/2;
      
      if Sm>Sp then writeln(Sm) else writeln(Sp);
           {
           11
1 0
3 0
5 0
7 0
9 0
2 2
3 3
-2 0
-5 0
-2 -2
-1 -3
}
      
      
end.