var
i,x,y,n,xmaxp,xmaxn,ymaxp,yminp,ymaxn,yminn:integer;
s:real;
begin
  xmaxp:=0;xmaxn:=0;ymaxp:=0;yminp:=maxint;ymaxn:=0;yminn:=maxint;s:=0;
  readln(n);
  for i:=1 to n do
  begin
      readln(x,y);
      if y>0  then
      begin
          if x=0 then
            begin
              if y>ymaxp then ymaxp:=y;
              if y<yminp then yminp:=y;
            end
          else if abs(x)>xmaxp then xmaxp:=abs(x);
      end;
      if y<0 then
      begin
          if x=0 then
            begin
              if abs(y)>ymaxn then ymaxn:=abs(y);
              if abs(y)<yminn then yminn:=abs(y);
            end
          else if abs(x)>xmaxn then xmaxn:=abs(x);
      end;
  end;
     
     
     s:=0.5*(ymaxp-yminp)*xmaxp;
      if s>(0.5*(ymaxn-yminn)*xmaxn) then writeln(s)
      else writeln (0.5*(ymaxn-yminn)*xmaxn);
      end.