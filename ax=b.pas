var a,b,x: real;
begin
  writeln('vvedite a');
  readln(a);
  writeln('vvedite b');
  readln(b);
  if a=0 then if b=0 then writeln('vse resheniya')
                     else writeln('net reshenii')
         else 
         begin
           x:=a/b;
           writeln(x);
         end;
end.