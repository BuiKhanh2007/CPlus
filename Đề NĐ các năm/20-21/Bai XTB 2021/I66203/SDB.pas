VAR a,b,f:Array[1..1000001]of Longint;
    c:Array[1..1000000]of Boolean;
    i,n,d,j:Longint;
    fi,fo:text;
Procedure qs(d,c:Longint);
VAR i,j,g,tg:Longint;
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
    tg:=b[i];
    b[i]:=b[j];
    b[j]:=tg;
    i:=i+1;
    j:=j-1;
   END;
 Until i>j;
 If j>d then qs(d,j);
 If i<c then qs(i,c);
END;
BEGIN
 Assign(fi,'SDB.INP');Reset(fi);
 Assign(fo,'SDB.OUT');Rewrite(fo);
 Readln(fi,n);
 Fillchar(c,sizeof(c),false);
 For i:=1 to n do
  BEGIN
   Readln(fi,a[i]);
   f[i]:=a[i];
   b[i]:=i;
  END;
 qs(1,n);
 a[n+1]:=maxlongint;
 i:=1;
 While i<=n do
  BEGIN
   j:=i;
   While a[j]=a[j+1] do j:=j+1;
   If j=i then
    BEGIN
     d:=d+1;
     c[b[i]]:=true;
    END;
   i:=j+1;
  END;
 Writeln(fo,d);
 For i:=1 to n do
  If c[i]=true then Writeln(fo,f[i]);
 Close(fi);
 Close(fo);
END.