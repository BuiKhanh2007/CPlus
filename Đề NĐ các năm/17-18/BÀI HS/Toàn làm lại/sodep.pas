VAR d,sl,i,n,x:Longint;
    fi,fo:text;
BEGIN
 Assign(fi,'sodep.inp');Reset(fi);
 Assign(fo,'sodep.out');Rewrite(fo);
 While SeekEOF(fi)=false do
  BEGIN
   Readln(fi,n);
   x:=n;
   d:=1;
   sl:=0;
   i:=2;
   While n>1 do
    BEGIN
     While n mod i=0 do
      BEGIN
       sl:=sl+1;
       n:=n div i;
      END;
     d:=d*(sl+1);
     sl:=0;
     i:=i+1;
     While(i<=trunc(sqrt(x)))and(n mod i<>0)do i:=i+1;
    END;
   If(d=1)and(n>1)then d:=2;
   If x mod d=0 then Writeln(fo,'CO')else Writeln(fo,'KHONG');
  END;
 Close(fi);
 Close(fo);
END.
