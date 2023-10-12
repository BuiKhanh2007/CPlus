VAR a:Array[1..50]of Longint;
    i,j,n,d:longint;
    fi,fo:text;
BEGIN
 ASsign(fi,'sodep.inp');Reset(fi);
 Assign(fo,'sodep.out');Rewrite(fo);
 Readln(fi,n);
 For i:=1 to n do
  BEGIN
   Readln(fi,a[i]);
   d:=0;
   For j:=1 to trunc(sqrt(a[i]))do
    If(a[i] mod j=0) then
     If(a[i] div j<>j) then d:=d+2 else d:=d+1;
   If a[i] mod d=0 then Writeln(fo,'Co') else Writeln(fo,'Khong');
  END;
 Close(fi);
 Close(fo);
END.
