VAR a,b,c:Array[0..100000]of Real;
    i,j,n,max:Longint;
    fi,fo:text;
BEGIN
 Assign(fi,'submax.inp');Reset(fi);
 Assign(fo,'submax.out');Rewrite(fo);
 Readln(fi,n);
 For i:=1 to n do
  BEGIN
   Readln(fi,a[i]);
   b[i]:=b[i-1]+a[i];
   c[i]:=a[i];
  END;
 max:=1;
 For i:=2 to n do
  BEGIN
   For j:=i-2 downto 0 do
    If(b[i]-b[j]>c[i]) then c[i]:=b[i]-b[j];
   If c[max]<c[i] then max:=i;
  END;
 Writeln(fo,c[max]:0:0);
 Close(fi);
 Close(fo);
END.