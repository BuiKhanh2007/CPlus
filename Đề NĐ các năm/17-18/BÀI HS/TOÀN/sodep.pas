VAR a,b,i,n,d:Longint;
    fi,fo:text;
BEGIN
 Assign(fi,'sodep.inp');Reset(fi);
 Assign(fo,'sodep.out');Rewrite(fo);
 While SeekEOF(fi)=false do
  BEGIN
   Readln(fi,a,b);
   For i:=a to b do
    BEGIN
     n:=i;
     While n mod 3=0 do n:=n div 3;
     While n mod 5=0 do n:=n div 5;
     While n mod 7=0 do n:=n div 7;
     If(n=1)and(i<>1)then d:=d+1;
    END;
  END;
 Writeln(fo,d);
 Close(fi);
 Close(fo);
END.