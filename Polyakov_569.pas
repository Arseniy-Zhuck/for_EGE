var
  a: array[1..4] of integer;
  i, N, minx1, miny1, minx2, miny2, minx3, miny3, minx4, miny4, imax, x, y: integer;

function minAbs(x,y: integer): integer;
begin
  if abs(x)<abs(y) then minAbs:=abs(x)
                   else minAbs:=abs(y);
end; 

begin
  imax := 1;
  minx1 := 1000;
  miny1 := 1000;
  minx2 := -1000;
  miny2 := 1000;
  minx3 := -1000;
  miny3 := -1000;
  minx4 := 1000;
  miny4 := -1000;
  for i := 1 to 4 do
    a[i] := 0;
  readln(N);
  for i := 1 to N do
  begin
    readln(x, y);
    if (x > 0) and (y > 0) then begin
      a[1] := a[1] + 1;
      if minAbs(x,y)<minAbs(minx1,miny1) then begin
        minx1 := x;
        miny1 := y;
      end;
    end
    else if (x > 0) and (y < 0) then begin
      a[4] := a[4] + 1;
      if minAbs(x,y)<minAbs(minx4,miny4) then begin
        minx4 := x;
        miny4 := y;
      end;
    end
    else if (x < 0) and (y > 0) then begin
      a[2] := a[2] + 1;
      if minAbs(x,y)<minAbs(minx2,miny2) then begin
        minx2 := x;
        miny2 := y;
      end;
    end
    else if (x < 0) and (y < 0) then begin
      a[3] := a[3] + 1;
      if minAbs(x,y)<minAbs(minx3,miny3) then begin
        minx3 := x;
        miny3 := y;
      end;
    end;
  end;
  for i := 2 to 4 do
    if a[imax] < a[i] then
      imax := i;
  writeln('K = ', imax);
  writeln('M = ', a[imax]);
  if imax = 1 then
  begin
    writeln('A = (', x, ', ', y, ')'); 
    if minx1 > miny1 then writeln('R = ', abs(minx1))
    else writeln('R = ', abs(miny1))
  end
  else if imax = 2 then begin
    writeln('A = (', x, ', ', y, ')'); 
    if minx2 > miny2 then writeln('R = ', abs(minx2))
    else writeln('R = ', abs(miny2));
  end
  else if imax = 3 then begin
    writeln('A = (', x, ', ', y, ')'); 
    if minx3 > miny3 then writeln('R = ', abs(minx3))
    else writeln('R = ', abs(miny3));
  end
  else if imax = 4 then begin
    writeln('A = (', x, ', ', y, ')'); 
    if minx4 > miny4 then writeln('R = ', abs(minx4))
    else writeln('R = ', abs(miny4));
  end;
end.