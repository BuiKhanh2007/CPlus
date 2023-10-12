VAR a:Array[0..100001]of Longint;
    b,c,d:Array[0..100001]of Real;
    i,j,n,max,k:Longint;
    fi,fo:text;
BEGIN
 Assign(fi,'submax.inp');Reset(fi);
 Assign(fo,'submax.out');Rewrite(fo);
 Readln(fi,n);
 For i:=1 to n do Readln(fi,a[i]);
 i:=1;
 j:=1;
 While i<=n do
  BEGIN
   While(b[j]=0)or(a[i]*b[j]>0)do
    BEGIN
     b[j]:=b[j]+a[i];
     i:=i+1;
    END;
   c[j]:=c[j-1]+b[j];
   d[j]:=c[j];
   j:=j+1;
  END;
 If(j>2)or(c[1]>0)then
  BEGIN
   max:=1;
   For i:=2 to j-1 do
    BEGIN
     For k:=i-2 downto 0 do
      If(c[i]-c[k]>d[i]) then d[i]:=c[i]-c[k];
     If d[max]<d[i] then max:=i;
    END;
   Writeln(fo,d[max]:0:0);
  END
 Else
  BEGIN
   max:=1;
   For i:=2 to n do
    If a[i]>a[max] then max:=i;
   Writeln(fo,a[max]);
  END;
 Close(fi);
 Close(fo);
END.