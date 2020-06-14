var A:array[1..100] of integer;
    i,j,k,n,x: integer;
    
    procedure fillArray(count: integer);
    var i: integer;
    begin
      randomize;
      for i:= 1 to count do a[i]:= random(100);
    end;
    
    function hasElement(x: integer; count: integer): boolean;
    var res: boolean;
        i: integer;
    begin
      res:=false;
      i:=1;
      while (i<=count)and(res=false) do
      begin
        res:= res or (a[i] = x);
        inc(i);
      end;
      hasElement:=res;
    end;
    
    procedure bubbleSort(count: integer);
    var i,t,k: integer;
    begin
      k:=1;
      while k<>0 do
      begin
        k:=0;
        for i:= 1 to count-1 do
          if a[i]>a[i+1] then
          begin
            t:=a[i];
            a[i]:=a[i+1];
            a[i+1]:=t;
            inc(k);
          end;
      end;
    end;
    
    function hasElementBinary(x: integer; left: integer; right: integer): boolean;
    var res: boolean;
        i,center,newL,newR: integer;
    begin
       if (a[left]=x) or (a[right] = x) then res:=true
       else
       begin
          center:=(left+right) div 2;
          if x=a[center] then res:=true 
          else 
           begin
              if x>a[center] then begin newL:=center; newR:=right; end
                            else begin newL:=left; newR:=center; end;
              if (newL=left)and(newR=right) or (newL=newR) then res:=false
              else res:=hasElementBinary(x,newL,newR);
           end;
       end;
       hasElementBinary:=res;
    end;
     
    begin
      read(n);
      for i:= 1 to n do a[i]:=0;
      fillArray(n);
      readln(x);
      if hasElement(x,n) then write('true') else write('no');
      bubbleSort(n);
      if hasElementBinary(x,1,n) then write('true') else write('no');
    end.