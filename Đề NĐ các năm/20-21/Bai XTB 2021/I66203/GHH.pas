VAR a:Array[1..1000000]of Longint;
    i,n,j,k,d,m:Longint;
    fi,fo:text;
BEGIN
 Assign(fi,'GHH.INP');Reset(fi);
 Assign(fo,'GHH.OUT');Rewrite(fo);
 Readln(fi,n);
 For j:=1 to n do
  BEGIN
   Readln(fi,m);
   k:=0;
   For i:=1 to trunc(sqrt(m))do
    If m mod i=0 then k:=k+i+m div i;
   If sqr(i)=m then k:=k-i;
   If(2*m<=k)then
    BEGIN
     d:=d+1;
     a[d]:=m;
    END;
  END;
 Writeln(fo,d);
 For i:=1 to d do Writeln(fo,a[i]);
 Close(fi);
 Close(fo);
END.
