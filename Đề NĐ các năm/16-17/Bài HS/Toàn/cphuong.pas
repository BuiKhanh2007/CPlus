VAR a:Array[1..15000]of Integer;
    i,n:Longint;
    fi,fo:text;
BEGIN
 Assign(fi,'cphuong.inp');Reset(fi);
 Assign(fo,'cphuong.out');Rewrite(fo);
 Readln(fi,n);
 For i:=1 to n do
  BEGIN
   Readln(fi,a[i]);
   If sqr(trunc(sqrt(a[i])))=a[i] then Writeln(fo,1) else Writeln(fo,0);
  END;
 Close(fi);
 Close(fo);
END.
