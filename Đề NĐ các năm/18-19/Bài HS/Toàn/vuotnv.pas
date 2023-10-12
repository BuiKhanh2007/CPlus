VAR a,h,f:Array[1..20000]of Int64;
    i,j,n,k:Longint;
    max:int64;
    fi,fo:text;
Procedure qs(d,c:Longint);
VAR i,j,tg,g:Longint;
BEGIN
 i:=d;
 j:=c;
 g:=h[(d+c)div 2];
 Repeat
  While h[i]<g do i:=i+1;
  While h[j]>g do j:=j-1;
  If i<=j then
   BEGIN
    tg:=a[i];
    a[i]:=a[j];
    a[j]:=tg;
    tg:=h[i];
    h[i]:=h[j];
    h[j]:=tg;
    i:=i+1;
    j:=j-1;
   END;
 Until i>j;
 If d<j then qs(d,j);
 If i<c then qs(i,c);
END;
BEGIN
 Assign(fi,'vuotnv.inp');Reset(fi);
 Assign(fo,'vuotnv.out');Rewrite(fo);
 Readln(fi,n,k);
 For i:=1 to n do Read(fi,h[i]);
 Readln(fi);
 For i:=1 to n do
  BEGIN
   Read(fi,a[i]);
   f[i]:=a[i];
  END;
 For i:=2 to n do
  BEGIN
   For j:=i-1 downto 1 do
    If(h[i]-h[j]=k)and(f[i]<f[j]+a[i])then f[i]:=f[j]+a[i];
   If max<f[i] then max:=f[i];
  END;
 Writeln(fo,max);
 Close(fi);
 Close(fo);
END.
