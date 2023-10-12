VAR a,c:Array[0..5000]of Longint;
    i,j,n,d,k:Longint;
    fi,fo:text;
Procedure qs(d,c:longint);
Var i,j,tg,g:longint;
BEGIN
 i:=d;
 j:=c;
 g:=a[(d+c)div 2];
 Repeat
  While a[i]<g do i:=i+1;
  While a[j]>g do j:=j-1;
  If i<=j then
   BEGIN
    tg:=a[i];
    a[i]:=a[j];
    a[j]:=tg;
    i:=i+1;
    j:=j-1;
   END;
 Until i>j;
 If d<j then qs(d,j);
 If i<c then qs(i,c);
END;
Function lt(x:longint):Longint;
BEGIN
 lt:=1;
 While lt*2<=x do lt:=lt*2;
END;
BEGIN
 Assign(fi,'city.inp');Reset(fi);
 Assign(fo,'city.out');Rewrite(fo);
 Readln(fi,n);
 For i:=1 to n do
  BEGIN
  Readln(fi,a[i]);
  inc(c[a[i]]);
  END;
 qs(1,n);
 a[0]:=-1;
 For i:=1 to n do
  If a[i]<>a[i-1] then
  BEGIN
   k:=a[i];
   d:=d+c[k]*(c[k]-1)div 2;
   While k>0 do
    BEGIN
     d:=d+c[a[i]-lt(k)]*c[k];
     k:=k-lt(k);
    END;
  END;
 Writeln(fo,d);
 Close(fi);
 Close(fo);
END.

